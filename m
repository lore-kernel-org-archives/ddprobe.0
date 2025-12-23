Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 317B3283FDF
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766520834; cv=none; b=OQpf78JK0lDAtC9MeYhawImcb13LxlbtXZf5E4r4GNUJmSARZtoU+6m6pczmAuwi97+/eDEcRjfvK5P2czSmtlBMMcymP5VWti+FG4CNprSSuyO4eL9ab/diK8JBRaTIJxqJxQIqXKlGszOsGDd33/Iku46SDKczYTD6EriJsA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766520834; c=relaxed/simple;
	bh=f13r+CC5Bwjks0HDjUeTJNBd9dbLk7S0NEIJxm6BCSU=;
	h=To:Subject:From:Message-Id:Date; b=Q832HTGYS5Rf9fI96MoQ4H23W2h90CW78WZAf+8yiGTvg+BkOuSaxvujswPnm5R2iyCoZqi4XmrporqAa55rpXynD0VykD5pnODnOLWc2mEWidiOS/0kb0bvYDhZG49Vq9Kkkn56smSoALBd/OqkS6HQRHFdzzDFOJw5ZdEqS0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qsVzmtve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qsVzmtve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C99C19421
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766520833;
	bh=f13r+CC5Bwjks0HDjUeTJNBd9dbLk7S0NEIJxm6BCSU=;
	h=To:Subject:From:Date:From;
	b=qsVzmtveSfXmoqt0JdxlQt/UyEBQE8eBIlZV252roSY49rhzCE7DJ8vjP6FSVWaKM
	 BRqNmzRaQIIGySjyCQYviKZI6k1i05xPX97qC4uaSev21Cw/9C1PSXSkAzy5xBiFvV
	 kKClbx/rQDru1jctxC6t/xXrHb2lDnwaOA0JFnDTUWRmw6F67euJHLOWo8egS+eUtU
	 O120m8jb1WX9otlmsSkWlVbn2dnDWfTsdtBl4go0ONrNglj6U0sqKsJXI2xk85+eF0
	 AUlqOhRTOMPbmDaddJnwWO7s7utASEhmQqkXiJfzNRELAZQq2g8NgFZL5YBiOX1bWt
	 8NZ9r4LAYwJFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95885E6FE2B
	for <ddprobe@lists.linux.dev>; Tue, 23 Dec 2025 20:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176652083358.25555.2132384201764449807.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 069e2dca452216ed6b4fd0d9e3f168550048a639f17af40e204121e5910d155d
Date: Tue, 23 Dec 2025 20:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766520833
