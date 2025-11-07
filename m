Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E4DE22423A
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762525794; cv=none; b=O8LPjlfS5Ab8HPECyKdAeZ4CSH3D5MTxUiB54bwDeXQxqx7tJQHEvnr5f4jW/9b3n+jS0jxkhxevKCSmR2aazgq8HChXS1WXVb4LprCGC59bik5SFmaWufhGJLWSQFmpIOnj6yPIZj+XSC9BEpvGLJOoaAq6xwLSy4EgebYVpSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762525794; c=relaxed/simple;
	bh=j76aWlnLGdFzO7xHFW8AplBxvx02o+GNZw5Y2fEJp4s=;
	h=To:Subject:From:Message-Id:Date; b=MK3B5d2RQ9TT9qi3h7fmnCoTAAQkyd9r8DNJAwLxxlbU9fl334hsftWFeHeMBh/iGuxQiDHBiHXppWNO5gwcEzbkoGBXLgUJqCm+djnRQ3jfWo2Pz/sjoILB6cJjme1W5RtnC3Ze4+RK3rOjOH2/3bcMoR1/8xzEmep1o5vEgqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hpZo6nUA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hpZo6nUA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E73BC19421
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762525793;
	bh=j76aWlnLGdFzO7xHFW8AplBxvx02o+GNZw5Y2fEJp4s=;
	h=To:Subject:From:Date:From;
	b=hpZo6nUAh/QJV1sQvl4OTFyuyXFaPf2govbFFjQMvN5lnzZdNAxpq9vwCvLmrTZhY
	 PdMCKkfzP3iR9AuOHbx1MEIVOunGN542iM4zdrvB4e5gtZN6Cobugfm3YG3IIG7dBN
	 sqwkm/psV+A5VNSpth36WHCxmpuLS8sEF4xLfss2LsOqto0TGyOUS+hii9HHk0pgiV
	 AdL4iw5NBtHXMGGm2c0wfZElhEUz5Vrgs5RIFnUM87lt32KFmwsZHZQ0Ng4B8X5VIM
	 3oWSfb/Sw8at3K/1Jrslmy5i6WFnMQeTEznkomvlU1035SsVVX1BkoPof8LbJF7xGT
	 tqHgPe0L6qmDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D89CCF9F8
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176252579358.25292.17339180887327441867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1fbb69003e22737c65c9f4474031705666c8c837bc0898afdde3c6fc7eba683
Date: Fri, 07 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762525793
