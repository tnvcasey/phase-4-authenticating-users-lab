class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
        sessions[:user_id] = user.id 
        render json: user
    end

    def destroy 
        sessions.delete :user_id
        head :no_content
    end




end
