Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AC43A1E67
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767714834; cv=none; b=QjJtImL92NIkw27gJKJnUdL1oxxbhQpr2EUuvT27JVsFePhqhjRIt6TzqOG7kieFLudE5iixqom3QVsnZgG2L+ZQxED9SgugdTXc2dRl1auy4Ii6HIQAW6ZVSQPtxsjKCxQ8DkOfflkk+G0BIywUoOqwDpubfDQ1yfEynD/HCJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767714834; c=relaxed/simple;
	bh=5GxFA8e4MQftO5M/TeT5I9K4MhkhhRGn/rCtJLK8/Po=;
	h=To:Subject:From:Message-Id:Date; b=R32xOYmAG0gY2tn2f8q6uX58VASuoYqCTsq54aAN7uQpOQyc9nyWT9aMb7aKKDNRJyEGkh+aehZ3+H8l/W4UPDXqNcYW6u47JKKcOYGanzWGS8BvLsX885aOuwtPo7KOngo7XWXdZIeQXLZCy6potRcTTFxlGTc46VuQgU+4iRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=stNAOzbm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="stNAOzbm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB3DC16AAE
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767714833;
	bh=5GxFA8e4MQftO5M/TeT5I9K4MhkhhRGn/rCtJLK8/Po=;
	h=To:Subject:From:Date:From;
	b=stNAOzbmm6XtZYBEpiq6FigrVjXiv8eQ6h5bZAxxLMg4hzIp2kjaWmIpGVPyts63l
	 u7oO9UILvFX7ldgtBuUlT0BLhUEzN+jXzC2NNYoPq7F+sJe4TixiYn148R9QPL57ab
	 qgNay9tG5wgm/6yLgTZOYunf3LO36k1TAjKogySLqfqQ2eE+HyqjBN8lcvYONk32aR
	 fgUQR+V64oXMHn2NNsCozOq1vUecumPMvRQ8lQSo0ejRHHB7hPUUiCJ79IPcqURIwA
	 exZ+ZtCn+bsxURM7rMNbFPWBjLlf8oLgk5mqkgBEO9G4QiPL1sY7zwwQbFMwUlj42d
	 5gT5wMcAM8MQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F799CE9D6E
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176771483358.24958.1118978180212812440.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 316898be088da2d6ed59adf81df6c8f705e1c977a2a1be60d95803b911a8b563
Date: Tue, 06 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767714833
