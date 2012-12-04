#coding: utf-8
#Sessionコントローラー
class SessionController < ApplicationController
  
  def get
        
    @fb_auth = FbGraph::Auth.new("349101831854939","b916e2e449ba6c1d03fb5f6bd532afc6")
  
    @client = @fb_auth.client
    @client.redirect_uri = "http://localhost:3000/session/callback"

    redirect_to @client.authorization_uri



  end

  
  def callback
  
  
  
  end






end
