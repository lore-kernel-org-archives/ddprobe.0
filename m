Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1024A238C29
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771449294; cv=none; b=XE4rMAoOmyLDqY/h7P0CmJXCecZuh5P0J1p/eDz5C0qFe7HS3Jdf+tVV7YGb0tRWS6CEMy8Ibn88KhFkxFAbHYMaOP7E6H0roUltCO5lE3HeQfDk3tDwnG+6xJ8wkJQx9BcJJMpcC7eJR6IGwPz84isdikrV0dDGq7+BSlyN10E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771449294; c=relaxed/simple;
	bh=WShsCuoLRYAWNyB+SuSFt4bSfyp+FtEVRCDiNNlzcHA=;
	h=To:Subject:From:Message-Id:Date; b=f6W9KvoqwlgcEpqkNWwxmJcxTB7ENZz4vzR1xmsTn710TGPtuD+j1MFD2cWMxa7BJ/FOVnpjUY4hT0FRC5yxF8QM/rD6cFMZCVi5SxhCK5Ai/6MbVuKOlsB/4nk3hb2miDPRIC4YClSLaerbVKY7DQPDXzPP3l7Tf1M/AE4iNc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fAAo9TAE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fAAo9TAE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2AAC116D0
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771449293;
	bh=WShsCuoLRYAWNyB+SuSFt4bSfyp+FtEVRCDiNNlzcHA=;
	h=To:Subject:From:Date:From;
	b=fAAo9TAEZ+8ujOdzQ4+72gaBKflwu41mISiLOF971ssFTsJ03QHw7sNyl3pI+S062
	 eQR+8jfDhnS956upst6mlZQ1ox6uedH4p2ju6TjRHPSl3OC/hsUO4opu3gyME2Cayt
	 AtAu6lI3ec8heLfi/CeHWHKsqKshf4PxgFZ27RvKpN1DUbvGOneTwBExVXMWR7KKu9
	 D6pQvK2EBmVhMVgRGMc1/lzSLc00zOgKxSXvXF0mugJwqIXfKHw4K+VVCuwDdT4oPr
	 +wCuJF9r3ElYX8D2ZCDymjRNBCwIOC+zI9pQMKstAuS8E7XcqqOFhFexZWFT7M7PLF
	 IRG/Gy/foRRqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934B1E9A02C
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 21:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177144929359.6033.12781312280602514928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 035e82efe56b96dcf49c7ecaf67aafeef78458d96023abf8c64daddbe6385a5c
Date: Wed, 18 Feb 2026 21:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771449293
