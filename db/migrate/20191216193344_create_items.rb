class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :title
      t.string :inventory
      t.float :price
      t.references :category, null: false, foreign_key: true
      t.string :img

      t.timestamps
    end
  end
end
