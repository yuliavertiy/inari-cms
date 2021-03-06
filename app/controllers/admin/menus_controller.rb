module Admin
  class MenusController < Admin::ApplicationController

    def show
      @menu_items = MenuItem.nested_set.select('id, name, parent_id').all
      super
    end

  end
end

