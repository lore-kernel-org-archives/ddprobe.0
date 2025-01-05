Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 484375258
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736051754; cv=none; b=GQsaRcCIx632T+rw4dtVz/89Sq3skjPGf02bCx7e4KKvlor/N5Uxq85A3LBwxlpdl7923zuWC4gr9pxyjt8eWWdhupI33DRLFWbegDEbrIrrRi/TGNEXvZx5O7NSNoQBvflGHWTrOoUxM9C+ZMQJaM7xAfFLyst5KnxNqk36tEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736051754; c=relaxed/simple;
	bh=lQwnuiLIkoaM2f1rwxweoHeK4K2VPpkN/+teHleMN98=;
	h=To:Subject:From:Message-Id:Date; b=n7BGM1dStfX4eXl2FlDNT4n7ydZVjK8LPxBd6vce9pkgrtQVtA/goD8nlIuew4FBm64crJMSewXN8a0ngZM7cBiYFhOp4f3ZNdA1pG2ema/5iklx2CefzgFqvyytAU4hiHjJQB5NJZDHzeyqT4CymzqZnggAtjxb75ED4NjP8wY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=coHGeN1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="coHGeN1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF0AFC4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736051753;
	bh=lQwnuiLIkoaM2f1rwxweoHeK4K2VPpkN/+teHleMN98=;
	h=To:Subject:From:Date:From;
	b=coHGeN1ZLXgozH7Md5jex06vDrkY+FzqmuuXo9UfAGq8royZe4ObM/8dw3l1Vrp2G
	 B8zpPQQHI8H5yX+ILhUZgWeREd+NSo35ioRVpU3m65ba/545Q7qMi5TZGWJJGIMZOy
	 Ue3ycsbXdd7M4dzhHVnZqV8i+CJ/Jkq5niJu9CjUN0pUq6vbaQDyMmTrAs08tiaj7F
	 1UO46mp2TxVwKPKai2YwQR3S/DL7dYG1wX+SfmOihsAnth5YUE1lN9mvc+PWq+VjKN
	 Gn2S/7m95JyqvEPBJtbjfQbYKZJmTtxyvTDt06S9NXAffc8VIV7KhztEbGEhKRQEb3
	 XKLhgkjVIsm7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A1CCE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605175358.10574.3198628100060178807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12da909f087384c2c963108eeca3419f03717ad5ff72d00617336e3c1dc6ebbd
Date: Sun, 05 Jan 2025 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736051753
