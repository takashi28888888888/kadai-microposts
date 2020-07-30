class LikesController < ApplicationController
 before_action :require_user_logged_in      
     
    def create
       micropost = Micropost.find(params[:micropost_id])
       current_user.like(micropost)
       flash[:success] = 'LIKEしました。'
       redirect_to current_user
    end
     
    def destroy
       micropost = Micropost.find(params[:micropost_id])
       current_user.unlike(micropost)
       flash[:success] = 'UNLIKEしました。'
       redirect_to current_user
    end

end
