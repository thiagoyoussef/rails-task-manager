Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # READ ALL TASKS
  get 'tasks', to: 'tasks#index'

  # SHOW CREATE TASK FORM
  get 'tasks/new', to: 'tasks#new'

  # SHOW ONE TASK
  get 'tasks/:id', to: 'tasks#show', as: :task

  # CREATE TASK ON DB
  post 'tasks', to: 'tasks#create'

  # EDIT FORM
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task

  # UPDATE TASK INFOS
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE TASK
  delete 'tasks/:id', to: 'tasks#destroy'
end
