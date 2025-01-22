Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AE2212B1A
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737547554; cv=none; b=vEMaT6M9jE2IH1idro+5rk2UWqoFGuVT7yMBKtxwddZG8MrMCokeXM1yOFGyHhAofTE+TUqc1jDF4le7wZJwQtt28lKOQrxOMlfk87Nz4S+kvprTqAxH5F3CI0+IFA/SUAwjFIEGjS2BqBSDYntv3ricIinyJAhe+C+OEakcSbM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737547554; c=relaxed/simple;
	bh=ByYxcTjPaGybxMRBl7wrriduLFiyxXp2ri76BPV9qVw=;
	h=To:Subject:From:Message-Id:Date; b=CE+N1d6siG8aFCPwedUgQz9ioX8ppV54YRQDvuW6ICPktIhjQdIHWHc4pOw5fEOXrfu7M63fh8o09t69vFAfgPd1mYMzLMuBYVk1atC3Vbnyy4KQO6FFtbNooC12QeaGmSTxreVd5SauCIkMPNBI6+AtBInN4mec7hEA5XXQwsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JdAP3KjV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JdAP3KjV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BACBDC4CED6
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737547553;
	bh=ByYxcTjPaGybxMRBl7wrriduLFiyxXp2ri76BPV9qVw=;
	h=To:Subject:From:Date:From;
	b=JdAP3KjVQv/GwjlQ+BsFslmv6wW6rEJlqtcax6547k+PNd9mlGh6VUrpok9dBw33h
	 NO9mEExhjVzASkqqJE1LPSm8OmIcc+q13sT2NP/CCA9MSQC4HqaOwVGPcoIVllRos1
	 5WMisZkVHjfyKJq+d9gLA9bg2FvdJPaZv1BhkoPRt4AoUVEVP0om51gFDHBRVaAilH
	 HmXa0NecbMMkFnHLZZxoD8E5rBCqOt/5H8JtdAMOZCCrtyshlC/Z7UjpM82HGDVqsB
	 50qXCRliUSmU0Xw49VFF+Iv5aLQ+4VCpNNNwtOTKhrXDtYWrmpiQ3JgiosT92UNFil
	 mWKRBCEe4kIWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A408CC02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 12:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173754755362.1681.3536006616350778590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ec64efc5a47f491a488767723094d90d6dd617556db41b8a33a40dd343f00a
Date: Wed, 22 Jan 2025 12:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737547553
