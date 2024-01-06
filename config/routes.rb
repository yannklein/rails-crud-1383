Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # verb 'path', to: 'controller#action', as: 'prefix'

  # See all restaurants
  get 'restaurants', to: 'restaurants#index', as: 'restaurants'
  # # Create a restaurant
  get 'restaurants/new', to: 'restaurants#new', as: 'new_restaurant'
  # # See details of one restaurant
  get 'restaurants/:id', to: 'restaurants#show', as: 'restaurant'
  # # Create a restaurant
  post 'restaurants', to: 'restaurants#create'
  # # Update a restaurant
  get 'restaurants/:id/edit', to: 'restaurants#edit', as: 'edit_restaurant'
  patch 'restaurants/:id', to: 'restaurants#update'
  # # Delete a restaurant
  delete 'restaurants/:id', to: 'restaurants#destroy'

  # resources :restaurants
  # resources :restaurants, only: [:index, :show]
  # resources :restaurants, except: [:index, :show]

end
