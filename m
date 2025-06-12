Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3595E22D9ED
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749771594; cv=none; b=Um/JtH0duvP4pka8Jkw7rZen3HfPAMYCHLt4lYFnp5g/h9C5+5MGr9MvYS+oDn3H5w1oA19WNr9T8FHTk9u1QLHf69kpzN9jwz7O1r0DzVoNRMMkOnLXJPVet0wY3V2/Tded60xKqetpwmCAnemqRqZ3ubzO91f0K6NhNpSHMjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749771594; c=relaxed/simple;
	bh=oZpovG8x4NsshpUCSxAdkULVncQ2rkhdqjmgITg7AUs=;
	h=To:Subject:From:Message-Id:Date; b=W+Zz9/eXxBAo68NLmTtU7yTyW1MmyWpYpkecVqxZEhJP9NfksIgzz943wX1155R99kTS+gQYRUiwyf/qZXSPRrUaDQTxvP70XJCLBdtK0tthqZYJZHFleovUwQCGOJC8XJrayjxFreYHJew8dRQHTYolZLsDp4oCZjeG71GVPlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pRWm1wCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pRWm1wCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5078C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749771593;
	bh=oZpovG8x4NsshpUCSxAdkULVncQ2rkhdqjmgITg7AUs=;
	h=To:Subject:From:Date:From;
	b=pRWm1wCrsVWvIPiwwtaZkKt/AZ/k33LXZ0gq6aju1YmiwGpd38ElCRr2EznJcNGtY
	 +ePKL42xo+HK+tmoxGclIxvzUmhanXyuX2p+bR3XTHq3DbtE1Hir/o4K7nv7Ft70GK
	 Dm0eUUHI/mcjHND7zvmtbDoyTRVzQsASflDP82BtRHWMDdLvYZLCm2vUG6LAbsutmz
	 WkV5ykuGiICCdKkasUtXZxarOfRFLIHDd4ZdA53EpAQFIxMuYKqBf040E+CTestMVk
	 3LloY3M2y3IzTdcSg+DpXS7BKYNpW5BDWjfcTMgkhZH0FGJsxAVmxiLCfY2pnFyPXP
	 wIzyvWw/Ingjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D56C71136
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174977159358.7030.8952843245332330651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d8eef46ea2c4b370f50b72bc0631148dd1489feaa4155e2f9f9409d68a8cedd
Date: Thu, 12 Jun 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749771593
