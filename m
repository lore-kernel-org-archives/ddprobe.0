Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32323227BA4
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761428994; cv=none; b=D9wQFaDCnzOydCkEijwDYIsJFSdY+6R6bo5fmbn1yQtq0y/VbiE2dPJys8NzRCgquMjcrunLBfSeY2sQi7jHx54toL+Gjv2nHJpRfOer3mNISWQ1NXYSCp3k51xaO0XKV7STj2urvjAz27aDPxSHQvO+KDo3dhyIjV246TLF0R4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761428994; c=relaxed/simple;
	bh=6svr4ZiI00qaXBaTykubwaHZlsgKJajlHfqVXbvsgGM=;
	h=To:Subject:From:Message-Id:Date; b=TKRMHUhvA0rcDxvPXin/CwTzsF/IA4A2G9JGlMoN8V4fkHclA2VT98JRN+Hv2N3VR4VqFDOjzjdtHyNEUUrZ7wXp83X2ey9tt2b8N2qV0L/nHmQGXu3+p6YMhD1SetOYGmsu+hkskllAE4P1m5Hnf69IuQJih/EfmKzyPA+dQj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=py3o1TTz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="py3o1TTz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A745CC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761428993;
	bh=6svr4ZiI00qaXBaTykubwaHZlsgKJajlHfqVXbvsgGM=;
	h=To:Subject:From:Date:From;
	b=py3o1TTzFtozpDINROmzqhgC3SAAlPITn/vKLkUvLoxdi+W20rG6NW7yMUYon67JP
	 k7RfFUYHjFKV7/lfmaxgYTYIrBrW3cRqptn35V0b/q0nYUV/+K5mPOraRV8jXotEGl
	 dFSsyV6YDTo6tE9eBGwYc+jMw3OZH0Vb8GT2/hr9J5yN0gBpcPaxrhY7ZStaENE3Ax
	 MJiIPSJw0rFAdS2oi9SOp5LasevZdF+ySO0HBLy2sEd8VWYQmAs+23M1eZQ5A1qrHx
	 D4DIZ12A68/KY8cWIp3/1XIISCu3NO4qBbbVDbiDblSfJ+5gGzSutQL1uaIJ+qNuv5
	 BNmhD6DiyfOkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927DECCF9E5
	for <ddprobe@lists.linux.dev>; Sat, 25 Oct 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176142899358.10129.3469013479324337024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 628a91ec1615811b1b135b100df7af2f3ccf09ef696a3b6a66a30e90e36d4f39
Date: Sat, 25 Oct 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761428993
