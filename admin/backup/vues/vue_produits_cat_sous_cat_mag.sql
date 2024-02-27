drop view vue_produits_cat_sous_cat_mag;
create view vue_produits_cat_sous_cat_mag as select
vue_categorie_sous_categorie.id_categorie,vue_categorie_sous_categorie.nom_categorie,
vue_categorie_sous_categorie.nom_sous_categorie,
produit.id_produit,produit.nom_produit,produit.prix,produit.stock,produit.relais,
magasin.id_magasin,magasin.nom_magasin
from vue_categorie_sous_categorie,produit,magasin
where produit.id_sous_categorie = vue_categorie_sous_categorie.id_sous_categorie
and produit.id_magasin = magasin.id_magasin;