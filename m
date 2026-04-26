Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2503435836B
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777208854; cv=none; b=EafXBBWcHl2PU6emtMSwiP/HcFG6FhFGk905mmpeJxnSMLXjmZdUgftTvD+9+YmN1y3SrXw2SX4hErJOdExdyPkzKSLYtS4dEAjCAuA8Ecr9JvJIUsQhpvVRt7beLGzMgOn7dcrYe9Vw7dS+LRZy4oB+WMXCxdnj5gQfdjW3N10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777208854; c=relaxed/simple;
	bh=WdN2EDcR0+vHrgPdTF66ynWpLhueWqWLQJxyBLvfcjw=;
	h=To:Subject:From:Message-Id:Date; b=dNVkTJfJa0kdppSD937tRFxptL8ZSdD7RKvGYWLnBZe+hc9CwPwicJ0yGltxzwW2Yiit59VrO1MidKniFlR4SckvGtxL1m6IyJmEkeDydK4cvuzK800Nq8BbWksTdHr4AwAeAbsqco1UZ6KcON47bqDV+3BSwKYl3Wtb1L617Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SX79X32k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SX79X32k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7892C2BCC4
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777208853;
	bh=WdN2EDcR0+vHrgPdTF66ynWpLhueWqWLQJxyBLvfcjw=;
	h=To:Subject:From:Date:From;
	b=SX79X32kb8PUp3M31PO1dqnyVMX82WhO8HlQg6ZZlmmjJHdImsoPdn760fxkpR8Yv
	 g9IqYnVS8XOIlx0Svt8V2txW8xjLK277dvg9ff7H9M+cqJlgAFeOFxpSNJxs/4kKWJ
	 +wLtpMCMkGfrd3YWQm/J6J1fHg4aGNBKOW04rWxNyQSNDP6HEmNTidtxu4ysNNWHHs
	 k9U1Y5T4oaYCm4Rw3QBqGX6oCJkMyhNMnufXdvb0uPff5LM72RYng4N1NeQqndH89f
	 8ipj4T77jrgKOgqYi9OZvTz84fgK+N9+IY4C3eBv71CFT6GTstdGVDOWceBG0syxW4
	 S+k99Vg/qwq7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9848FF885C
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177720885368.29776.900570156473481593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 639cc03e566f8234c7a8e634f39a267bf96283db0be0d900c2b2fe1fc0abae12
Date: Sun, 26 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777208853
