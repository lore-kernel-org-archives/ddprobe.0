Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4793A3B8D68
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765681374; cv=none; b=h46IjoAILvx1q2966oaZ9MyijmWKHox9ujwKdvzE1HbEHWU/pHPxXAd0qX1cG4QbntrC6RraDnwpYua4Z0VeOf7bQ8kJstfU4iik0lrF6FXhjkLu5R3Exgkc2UzgLBSkitPMiFB3jl/pRD+kTpRqrldPuWT2lVfNbVb+Ft9dnPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765681374; c=relaxed/simple;
	bh=iMpbsJ1keye8k2xWK91c6KNBmylPDb2qzhsqsjVDvQM=;
	h=To:Subject:From:Message-Id:Date; b=hTBpN0dk+jAQWHZmBvDZDBViiTTJcgWLz/cHRSp7gK1O0VS5klSxCB2J4khYtTCcmXhyMoVTYeLvZOaRmo14zoG2pfu3uPitVeG51ERb4zGhgM0jBlf0uawYx/xVIQIYb5n+nwE9Ezqgk42yBeh4/tIQEx1jsr3LnpHviQbGKbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mYSIuFy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mYSIuFy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD800C116B1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765681373;
	bh=iMpbsJ1keye8k2xWK91c6KNBmylPDb2qzhsqsjVDvQM=;
	h=To:Subject:From:Date:From;
	b=mYSIuFy9ct4Zqd4whGgSS8/prMQ0RZaHxVbQb/PPJZnlk+hp/mloyAHFkWnl9q41M
	 agWRzYjyXnLaI0199NTSiok8aREdlPCs3jQXUCWCnldlDHmhgTbTr26MkHYbDp6IHi
	 LVHltTDZEVLB3Z8vEPEPpJ9fglvRY+Bz4hS8iFA9uMKhFh82Ts3Jm+2xYyJtN91yiy
	 4f3Ik5ROAMzZh3XhXnWmmUl+ygFuGfvWqix6UY9ztlNuZAtBfQaWEW+ThKL1hJNZ9m
	 1mRvL9yRA9wdA2ndSR0SfDQp6UYAa+oCl8e4VJnGdcF/LAGBl/WpKqvk6ycuatMH6m
	 e2lEL0sNTWPNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AB2D5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 03:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568137359.1188.2369387131690349102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b493abe0863956db3e4356e4c5e262d8900e20e9f9ce5579faf03c9d3087e613
Date: Sun, 14 Dec 2025 03:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765681373
