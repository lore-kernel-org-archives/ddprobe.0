Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1595372625
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758207594; cv=none; b=MUMeJsKaR19weE+wcJB7H0i+9Qt3gTyMnas8+3jYUPRZAd1Mbpd6YYDK4q3NTCxJ5NAhCexwgvvYy1oOQ6yJv6gz1ptg0vdvEIokP6b1z+KEO/qpg2s9gdzdjJImiZV+e2G8i/DiDVJ17RYPRz1GmMYEsBTmQltTf/76i6eQONU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758207594; c=relaxed/simple;
	bh=A+IXG+LiTqngq7RvOYJN0giF9SmdYu1iviAVH8Yqy9s=;
	h=To:Subject:From:Message-Id:Date; b=RQDk9JNMFRXG7jEqcgmy3Ry7px8g20FEkUpvNNhimPhhtV4lRLaL4NedoXnKW5tNZTVpeTDqEwEU8Ya08/tJkWA/b0ahV4kiAwwLekY4vq/zW1QdqpWdPWU6Xn/P8OkjNG/5/QTR9Y3ET+0ppDP1Asq1MWRD6+zoU7jviz0Kouw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTRVIGCG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTRVIGCG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2519C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758207593;
	bh=A+IXG+LiTqngq7RvOYJN0giF9SmdYu1iviAVH8Yqy9s=;
	h=To:Subject:From:Date:From;
	b=uTRVIGCGq0AijWI7bW9E0CJ7duPinozFgtkOLMt46XoZXsCJ1ILwfydSJ13icJWke
	 vWXwGiZcs+Jv4zDE2MWLmmN2KmhV48dcKFdDVOMsQRroKT1Y/BLLcY9CorDDrOHXOb
	 jjygo8Y1cQ+hp09K3e0ma0HkGkCDIgD0vVqKHmlKosXEmEaNABIuRbKN0vgNzuO5QL
	 dBYOhN5zUqDCypW42bpGWVf51MIlFxNuejWKEL+FcjaaABfVOuv5fScI9ITZ369Uvo
	 Of2iXglm3J8djK6GANPuJqRXqbLPtkPiqVWmSk0GbPUnUSrSXIkQgDmBeWzGnnQMMQ
	 o4Gg+wGV2c0Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93868CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175820759359.305.10351380436159616040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84499b4fe9ddc2e7f6eea9025f4d050c024fcf19bac150d3133de403eb83a5b1
Date: Thu, 18 Sep 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758207593
