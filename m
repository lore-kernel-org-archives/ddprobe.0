Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6DED9168CC
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719086543; cv=none; b=uLxRk273cBEzG2LNaasXjhBNk+1vF5d0RSdZqCS91JjlobKnGhzEezuydYvQsdpOkmrQSEFnXZpILXaVl7YdT1HPb6DkoHKCdp7PQMyynwynZtC8jVfvfZJb9yeFQFGngZWCdGhAFUqnnJ7eGUQM4Cf/Mup7KE/OpOkobdEvE0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719086543; c=relaxed/simple;
	bh=NVaEDLvWqCjX0Ytzz4HHXvc40eWI3yKsqB4xnQWssBQ=;
	h=To:Subject:From:Message-Id:Date; b=tnnXYvq0ds1dbTwFjCPgMBVXnjLVzwJtSYxeTFHpSLxNkdqn6ATtgmPZHVGD+k+cNxzzouJ8Cn4szIieikGQWZP6lLvLzmmzl+Gr78pWpYDdfW50UvKrTZyMvXKF6+72+RPCLiuLMBpHG2IcEhaKG8PoFSA0dgfVotcaperG5cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sKfuTDP9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sKfuTDP9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8DEBC3277B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719086542;
	bh=NVaEDLvWqCjX0Ytzz4HHXvc40eWI3yKsqB4xnQWssBQ=;
	h=To:Subject:From:Date:From;
	b=sKfuTDP9CH6htTjZosCMAFxvL3uhTAzsgtfnjpJ8Y44plMkPnU2QXBf5lAbSsEKRm
	 VE9Bya5aOJt7te8dzaCU8USNz2hvODV18XtnOMVsAPyPlIVPoxeHZ1Oz7Shq5dZoo2
	 fIxeUhNEOdSI/kSNUTOigeWi3nKUHO2pssSlHVwWXg3A67IjsIQJOIpLuFR4i7M+6J
	 8Q/tNuuZzN7NOjPrSJp8GcjQNRe6BbchYTBteWzp3wp6pf8UPtqmpoGMqiePQAZyXw
	 I9LlHMBLwb51mLQFytq1kbBOGz4wlIdnFKYUJJEdSbcwwVB5aSIhGCQxJMbc2XPhm2
	 Bg4i2QWb+mB6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4DF6C27C53
	for <ddprobe@lists.linux.dev>; Sat, 22 Jun 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171908654280.15260.1339295425597313213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a841637d7798cf1a98e4342234e0868c55303c9f702acff31dc85cc23e4d3ca
Date: Sat, 22 Jun 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719086542
