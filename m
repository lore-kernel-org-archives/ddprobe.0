Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CA4D3D1CA2
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779279634; cv=none; b=BvBA+y5RG099OcTv5eoB1z4v7m+cGPP6vdumuxrzuU2ns7G3vwM41mqCWJK7Vs0z1un+EymWr0zvXF2kgVvcO/OJyBxuPbsWNOnLPOhMbQ6LtfKPR1Gd6LY/nsQy9T8CJnmpwlBnzHCgp7YTCTHG5j6RcTSF1HUAbMqE1qQa+Fc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779279634; c=relaxed/simple;
	bh=zTkDaA54m0AQpZH9dlSLgpy2FVOVGUfpcK0WsgGs/a4=;
	h=To:Subject:From:Message-Id:Date; b=EIOwNz1aAuCANP0/Kc2ne83lBqH3AXzLtDB4Y+ufKmoHtmqFOjQXpJ7A6EJejGFOazSOAsclXw19BIwCVbf8CZFPjdK3FjMAXx9CHL5tkktps1WczvWrj+Q3xoLYMMDuDBDsaGOj8moy/nTQr/x6y3YjtMPsBV6RCfx1IfmeXjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kvX+G3mu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kvX+G3mu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD13FC2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779279633;
	bh=zTkDaA54m0AQpZH9dlSLgpy2FVOVGUfpcK0WsgGs/a4=;
	h=To:Subject:From:Date:From;
	b=kvX+G3mu/YZkZkSuKY6Z276JcdLYy5e65Pzz1poQBQkdDXvcWmE6cR4NYPSOVwKuN
	 lzBwdnJyq3gWbGtLVzC/d0f3+tmE6vX/JNv6wDTIandwryDnsu+uSjpZdl7+wtz3cY
	 JSSXtycIqecAA75p87bt1Cz2AmDCrj9ilbmRHhe21U9n1EGXuXf52fX2ldeDPbtwhr
	 wYYGYAdpwUz4RFewnn7H7Nx+p+HfseNjKmErN9mgpQLWKUxytEHPOVqIKEr5k07zrU
	 5Euijc2brqdP/e7qkaDYgfxjM2Z/eAxm3DUNTxnRHpBo6bQaAKUeiJvf3N3J4F6RDK
	 N2+xtVXHJXksg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B306DCD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177927963369.7641.13209927778062564194.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aba702faf3619cc7c71ee906faf0594c9c63a46a00c362fc439fa9ed9b7391c1
Date: Wed, 20 May 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779279633
