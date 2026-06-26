Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35CA22F7EF4
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782465454; cv=none; b=pUcH3kSx+gl4pfPxtDJy0kUboKawAi4OfG7YYIYoK8PkPRXZDCSIpsy4N9Idumt4qkRORqzYhviVUZzunrdwiL1zGKFV2aqISBGyhvzpJA62+bjIpSsFavdHD1Fg7YaNoqAaZY6Pef1nNONZvbGGfYs3SRM0LuP4Xx80weEU5Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782465454; c=relaxed/simple;
	bh=JxpEN7hco8Lr47/qO5w9Iic34MFDlfb4wl52uC5ZuZY=;
	h=To:Subject:From:Message-Id:Date; b=I/gZzeSYyz0Tbm5nFlemIvyk6IrViFPqnZLiBQeEfM1YPovB1rSWWlOMzIU1eCUtxMwMDS9gkrcMXGRY2Fq7FnKjt1JgMg9PcAOFfB7j3DDkcI8Tu0NKwCYkEux+L/74/bbfl7ulmIMM8TXqOnoahdvoJoWt22iUdUdBhweaP6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g706d3lc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g706d3lc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C748FC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782465453;
	bh=JxpEN7hco8Lr47/qO5w9Iic34MFDlfb4wl52uC5ZuZY=;
	h=To:Subject:From:Date:From;
	b=g706d3lc4XYKRG5O24KSrWFXWWEeTuZoKgfo0yN4I/LKtxEANvlIUqWLao+rPzo8o
	 nXIq2yTMx919IjB1CPQt+WwgEhBniDCGP1OZbREVE1WB97tanMD3lxLjVkgOwYwlou
	 sJimxNAjN9nRxMLp4BNjDnJjrb/OU2aQ0Y4cGMzwnrfUUIEOnXhyMMm5vXvLhivsQD
	 T0CNPC7unisUh04k9/zHockpBWtRaaK45CyhsBBR1ZR2r/C6HUNpkNFo6Jbbpux12R
	 IPn4leqla3KxrjbrPbizqZyCIwHkDvHDhSxBl9cZ5uLNIPF4qUvGX5k8u4D1m1rsNa
	 Rsa9Zx32z0k8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE00ECD4F26
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 09:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178246545370.19123.5955348466507573479.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d02b56f1a6c404be5e0c1e1fd84bd2ab8c28ddd3e0be99fed4428958c9783a5e
Date: Fri, 26 Jun 2026 09:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782465453
