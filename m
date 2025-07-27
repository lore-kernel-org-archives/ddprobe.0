Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7841B85FD
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753649994; cv=none; b=tzcvYdWCMaAMUKwPMmUJMpXVKYnqtditA3KiLUtHbpoeMC/QU0bHIkeyx3iUIvMakDYE2ym8usN1RVznfWxcn9SGYmuq7aAzrBdKaNkY233g9EHDe4wDvzx8ka1LqVM+AVITtY66nMdCQKctsF+JPYNjqX5wVrMj0TStGUQG0/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753649994; c=relaxed/simple;
	bh=vBQYLy7x54TZAoR83edhIz/qEnVZ0S9yqiqyyDml20g=;
	h=To:Subject:From:Message-Id:Date; b=iU+BR3NvXEVhC9HAl4t6lqtlfCHWsMmQg5p3JJul7efHv18nShW3tXxhfE+zypgC+5DAgc7O03iqfkI3udzMOoReOSAmPjdRKehzxU2WFqecTLmIrlJcuDVwPaRhGMCtMPSea3hJiO56NW/94GKrIsEEQ+eV5/OZfUyDh/keMGc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7OqgBWs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7OqgBWs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E6DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753649993;
	bh=vBQYLy7x54TZAoR83edhIz/qEnVZ0S9yqiqyyDml20g=;
	h=To:Subject:From:Date:From;
	b=R7OqgBWs6fZpSGgDL0gfSuLwvFTML7QLQL4pl2WcGGh++5sVBV3hpudPQEs3TVDOT
	 KuJCLHNxMGjY6sTf0RJb9lnHcnUO23jXPmDJaMMReKPCIjMkbcX5EMf2s/cTY3bK2Z
	 TvfHmn8SvBer7pwStLbMzAVhiLjdYPMWlYrqfE9qTiVG0hiDZ5LqQ7QVZsn6uW3BuW
	 RVom8AB3T33lMS6VGYRIlQItGljqqzaZtMk8KRh5LXMKg0Lpm1IvpJCp5k+8i5U295
	 m8BkLIa4Qki3lKgRFZyZ3nY1++N33NBnUZlquuo/WWyBcfMnvJgqyze+wUnZmewWuf
	 E+fBt94NPHW+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F434C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175364999357.7926.15336699925530247798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a41b45a61bf5a00e8da1c8f1d5dfb54e9409e60cdba6b77ff4f883feeebe7325
Date: Sun, 27 Jul 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753649993
