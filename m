Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFF6313E34
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776031054; cv=none; b=WAYavR1+K8c1/ECzHWSs7+6w9OpwIKNNns/6rMzFixUXeTyCRhlx1K9+Dvk0UXrzyicfuQkeEo6IbzNx4XkPHZaR20MzWipeWfJHPg0yULhxkshcjASN5x4u+pov6scexxuQm2rhfa2ldU/c5wbt97cwjuZQqtZkcmKSKvlpTwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776031054; c=relaxed/simple;
	bh=y9n7UxZDQLUp/q1GOge6n9m5j4xrc9ULVGoLCyQaHPg=;
	h=To:Subject:From:Message-Id:Date; b=KppYDPtRCj0eT9i9o9XAZ5izvdQUj6aXDZiqDXLEypR4h/lYE+xqv1Mjq6FADDnO+17BoQhL/C1evN0Wpxv7lbw4fLTzrnJlnb8Gzbq1fximHNcOlBEKYyO8YW5K2Q5TBlWEhhA9m3le89spsG+dtF/Vk1t+RyIhoOdbT+wllPA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uMEWfw+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uMEWfw+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF9A6C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776031053;
	bh=y9n7UxZDQLUp/q1GOge6n9m5j4xrc9ULVGoLCyQaHPg=;
	h=To:Subject:From:Date:From;
	b=uMEWfw+lYaNmfFC0cjzd78Uy4X3b0+VOYuXqtJvSFqdhUTWePt3aPUql+q5/8lruG
	 h8i/Fzz/Tz+pNYSlnt0D8bc0NNnxxqmr2y9aknufelYlYq9/QzhVwKNBt84ew1zIro
	 3ORSN9rHKgcBzbfgK5nycbvvM0wJalnvgnKWx4ZdF9H+mnCLZ/KkYBdVwAM7X+OGoH
	 se5BAbzIyQLXrL4hZxMzHtBnr7SurAq68qfezb+D9zpx7FR3WZcgdBTbTbmL5EE+QG
	 qhOoiIpHvGAkzuS1Nt+1c78iN3NXwam+PlRq7G8tp8mZMLUn+G4NHjt4Mqn/HtMqCj
	 JXz/6tzZUTj8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0932E937E7
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 21:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177603105368.24664.13242098975141668468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24eef9318f77ce213bef22bb30b5aea66306a4a15b4a08ad2c91eaec9314e92f
Date: Sun, 12 Apr 2026 21:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776031053
