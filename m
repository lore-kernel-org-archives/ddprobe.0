Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D4D02AE97
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753672794; cv=none; b=jsv0zx326qQtvY+kAwtbbTa+D6XlERRxkMVGVT/9qN02TojnvJwJyYfiIngoiiSWtiaNTur+PKo7wuOmUHYWFtHkTfbrMjdkJBDOz2jsJjKTJaD2HEUHpJA4VX2S9u4izTtD3Ar2sO98IKGvTcTCXERnUtQo3r6Af/F44wX6G1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753672794; c=relaxed/simple;
	bh=3AE2jx0gFl8Xf7232z9HMtkhZ/uSSVtIYir2SJaQq1E=;
	h=To:Subject:From:Message-Id:Date; b=ml+wfLyjHAnQ0eiDroqSq1T6989mXigWapz7gEYEaNdWBKZchHEb/7vaNQH5npKUq7qrqg38o8/8EaRgiW8dfrJKlgTJN+NbNxRxNmtmv3OOo6bwQRrw2mOGUVroN/N7RDGNI9QTRUY2GNIdD38nlzoYs+iktef3opELhBRLDns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mAzpx0Mp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mAzpx0Mp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0133C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753672793;
	bh=3AE2jx0gFl8Xf7232z9HMtkhZ/uSSVtIYir2SJaQq1E=;
	h=To:Subject:From:Date:From;
	b=mAzpx0MpkrAGINgN/84Fv3tgYGGr41S2vtzFynP5I6Nyk0Mqt8YG4DJ/7gcWAqSu2
	 yI0e3LXAa5Dxs2BW3kF3yKQh5OTdiwmxs5qH3zFOlFTAJAtP6kE4JLEtWkuoD+jgn4
	 AKC0Peh75wdg+Dz9Lw730++hnep/WwfjXdG+Evwnn5dcvxSjjp/RBKwiVkVri6dbEB
	 NodNfb5VKuhgGn/GAJxnmFbmkxGa617XJLXL7YU4suHIzvwCIYGabd1uJvpZziR+lc
	 GK0uA1mSiDwRHokI+GjJ9SgnkAr8vmxybox0j9eqcoZYPOS4hmyMcTKBltLxg4jUOy
	 OFXTUoMCsjAIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DF61C87FCE
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175367279357.13203.6197834750984010575.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d8f7b13b6579edb3130b06663b022d100c55ac8d6c18ab93e949d5fa173040d
Date: Mon, 28 Jul 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753672793
