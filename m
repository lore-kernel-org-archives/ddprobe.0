Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68BA679DF
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719045143; cv=none; b=VwFVbpIds2/7LdiLnn2Nes2P71Se9XggHgkm8Zj/benKjl1lsxjwN2D9TiSRpGPpezQEgtDas7nV08uEFmT1bxmYAS6thy3fn0mEHIOps+WMIi45dqC3kOY0NBJ1iINer4moP3guYobJB7QG+Qucn5tTLwvpKj5BeV4th0u38qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719045143; c=relaxed/simple;
	bh=GmrA3hPWb+31rO5qdqbRM7nlFnNGVYf/UtavAYaVeIo=;
	h=To:Subject:From:Message-Id:Date; b=f7EtA/s34LPeyz8fHR4wgm/R4Bg1W8X/vbmeyO/el5if3MnICajcgZ5nE+Svdjlqgq+8CvP89EIFHU1pQjMpsV20YxIe/byiDhBdI/q1KxW+jRljo2CHscK7mhSKRZMpd3AMpqA+cXu/3Z+xktFWGWkPEFMOnPhtaUe600jf9cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oM/7iiBK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oM/7iiBK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2254C32781
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719045143;
	bh=GmrA3hPWb+31rO5qdqbRM7nlFnNGVYf/UtavAYaVeIo=;
	h=To:Subject:From:Date:From;
	b=oM/7iiBKDbrDCFdOL1HtQOGsoZ8TKyFYIqw/dpFP3cjUUdaLk422m3+sR7b6sEXp4
	 xIbEB1Uw6OwaXNpvfhmVlxQWd6TJ5lgZZnxU465RiJX8sJqf/bKvRYWWp2XxnSr6Z1
	 v3NrEKKiqqvHvfP6is5acGBkd4zS/CmNG+AiqYaxI3pmZNPcewU6oUJMXoFLnBC5qt
	 G/rLBRdJL32nuJGNeEB2VBri2h2K0EmT6pUP1O246z6dRZAP/EdPmrb0rhqzQkEzGe
	 gr1c5ICmu9AFPFtK+RVUZIG8GtzRa80wAi3CgDb5oRIchlIDWA3ERrUekvrOuaXHwH
	 X/qTUGx5VEkDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3A5DC27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 08:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171904514284.7222.6637064043574124410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b8eb475f195840fdf2a74144d73fa07f78783c67ebf5e77f72498cc60d24f85
Date: Sat, 22 Jun 2024 08:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719045142
