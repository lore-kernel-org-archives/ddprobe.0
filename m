Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E81C29405
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784441314; cv=none; b=lQwNK679xDW/tc+ogAvnuluQT9fM/LzOpoLPDuklOiLVKXmWMmdhtMFXRbZ9so30mjOTIDLNNvBnyCuKojK7vkw4nlAy73tAXFaHwdYPB0UGLu+UNRCP2rB6P0wFZBklurHoJcYlv6iSuyDmMxaLcsIahU29YM5++WaPK0Af3ME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784441314; c=relaxed/simple;
	bh=PG8s1is7sX1cUea5UwKyrqsWNNdyrZodifE3GtGhOLE=;
	h=To:Subject:From:Message-Id:Date; b=GbyUsmiokdG6mWVT689hg97w0Rn1xQHJTLW4YvG+wgCvYL6tIzJ52iNxOPhIvP1BIFBCm3Y2mE6gRxQMmHfwLNw7YwwZXV3BsS2hFeiu13sZuKwWAwqVIb8Ny/qFcJCjJbsiOYMKMtfoaZpgzB9XFmx6jl7gz21ftDa7aqhKEdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9/3Ozg/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9/3Ozg/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC3FC19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784441313;
	bh=PG8s1is7sX1cUea5UwKyrqsWNNdyrZodifE3GtGhOLE=;
	h=To:Subject:From:Date:From;
	b=u9/3Ozg/j2sHyDUjHaWrtcvTVNA9ICutxD6r+GdhFCC6iPd1a1XzqK0oMMdADOzCb
	 dXvHaDV4KNPDudrJHRx/BnHNpKZbnlrx19MfHosmBy4NifevurpESC670eOLtfvTvq
	 McUe4eyW29fwIZgsN6IW9Z2jnF1T4WP0YRCq9Ho50RwRjrtJXkGn+jDYdAcZuMNMP4
	 e/+mIMakXJKwgVxa7cNpdyE5zL5x7jgFlgm+eLKTxqRps2N+/PyG3TJQxF3kGKIYM3
	 bVuPy9pnCzywihKMsCrbsnlVb/MaMEqodcAXYPBYyDXDOCuTHJTZUGQ8L+I6SwGTnx
	 dJ8aAQQNcQlVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5C24C44512
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 06:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178444131368.684.11396936788262527468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dedce3736c847895256b06c80d0ce8b6561690ce8f20508539ba3177b460c671
Date: Sun, 19 Jul 2026 06:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784441313
