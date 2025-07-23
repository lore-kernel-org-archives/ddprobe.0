Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24B552192F8
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753246794; cv=none; b=FDNO7cWWT4lnPaG4UyyEMnXDU6j9BNY64Y7+dzNaNb+UYdxfZfRKZXuuKGDJnB9Ev53bcjNWcWdZKmoB8Y3sSO3lraw/Ku0H6vzuT7w4PgX9QQwx6QCvxbzb09Q9Y1InDOslAwCALW9PJ+BZZDXIFC39dmayf3xWJ21IA33C5E8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753246794; c=relaxed/simple;
	bh=tqq3aiR3Lr8Gw72W2FrWRtatw7DVOtUrc8raa8IPBuE=;
	h=To:Subject:From:Message-Id:Date; b=hwVErrNfC+u2AQEPV5l/iax/P2lrMzaM0JHl6wyTZKQ3RuzxNOJlJobszoftc4gdbb6UnE/RW7OSCAKiAlRvxVvpL7NSbhE/bVGS9Jt+9rKNNH4XWwNnEmxYhsDlbrY9WO+fbTKaqueedqQG5aY3yMMnAo1f49AyIQocU+ZYeNQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HWmLTpDR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HWmLTpDR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3040C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753246793;
	bh=tqq3aiR3Lr8Gw72W2FrWRtatw7DVOtUrc8raa8IPBuE=;
	h=To:Subject:From:Date:From;
	b=HWmLTpDR9G55EdncCqyAVp/bzdHtTfCh5tc/hyObs9StzWEk9LN3QOW2tJZgvRh4t
	 IZhN8pfbbFLP1JXkz4npPklPujZlgAY75pgt6WE8TGhQ8SUQtXIMYzF9s45r9a4+ne
	 zi67YazeaVYyne6NkTl/R2e/fXKSqxLEH2133Gw/4wPqrR42LqjEVBlB39VwYrpKfG
	 5S/BilOIBBIxJlmrjdin/pNdoYeqORItPutBuD7GxLTcFD0lhps/sVMhJEHUh1DBLm
	 v86o8i+erRbP7uEJ8o9svcVr5mIRmdme+c58mcOoUgqzF3M/twdA8xu1fjOFBdR814
	 C0SYg7mkn7r1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B02C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175324679357.9973.417331639968114131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e467400bae69a60d106f1948fd0d3de138be467d301c97ac152519d3c2749bd0
Date: Wed, 23 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753246793
