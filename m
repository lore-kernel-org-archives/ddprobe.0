Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296DD28C2D4
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754489994; cv=none; b=QzGokDFWijEw2z66Bhz4AeNAE72jCN4bQgElCGi5TTV9mjMyiOLq9QiHQPS4LcDtAp6zlLjwBf6ZmuniEP5Z2D0Y0HYgQ/iZsHMqYPyHIaLIGxReuMYIpnwEl6RvKA5I2vCewzoE7o+fvgTaYDj/YUiOPJslp5NCsHGCm8LQ1RA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754489994; c=relaxed/simple;
	bh=jYekHjCkcwyVwHnuOTo2TgTx4JWtQ4g7UbB9+cLwVG4=;
	h=To:Subject:From:Message-Id:Date; b=aVt1pZSg7Y+kF3rlZEq+5VD2J2U9flRIdCsn2myaLnj9encL2bzKCjdkPY5OE9iuFaDQ1ylRyjS6LjIx66S6Nr2vtSJnYX3Bkk45Hi+acp0zGxcT/cIS9s2Fn5tZzuCoYScn0KdyUpR9FMXdH1quwi5J2bOcliwlrCAOHi+/Ixc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oc9Gau7t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oc9Gau7t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A378DC4CEEB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754489993;
	bh=jYekHjCkcwyVwHnuOTo2TgTx4JWtQ4g7UbB9+cLwVG4=;
	h=To:Subject:From:Date:From;
	b=Oc9Gau7t8hX48ZYKGmU2DIPEfpEdpJQafe/67hjC0sAm0cMU9ecH8CWjT6KYtqXvG
	 IuT9aCx+TesYqLs0NBHjQT3/m2am303r+4NRpdu7af5RhjCVwO7ORudBUDSka+RSKL
	 e94rus4k5ZwaKugiSSj5nrjlpzqq2bQJGLH3N1rB/mUq5+hm+63ysAtaBFktYLbjsq
	 uGT+wLVUso1V90aULfxs8jTsY/MTpWRMlukBU9NUzj3w+rsMcBKaCb0B3fwUuzC4DA
	 Gk0i3jJrU8t7wG2/AEKBpTzCbh09Wi7dh0AIxlSjHLHNgpQHDmgjaX+FTHYHOB5K2p
	 Sab2zJDPIeDhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906E6C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448999358.7913.14586594623714347724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d2a86cef483f0cb84d6e6a6d6712ae7bbd0185a0ed76515c3d3ed2bba2b27bf
Date: Wed, 06 Aug 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754489993
