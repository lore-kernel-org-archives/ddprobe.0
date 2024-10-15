Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA222AE94
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728977754; cv=none; b=GwHCbWpF1ecXUnCc3AnqvV5pT2R30NMF2ozaAC1n7UANtjMb8spRuRuP5e5z/RTeLD8dwtQtVAZoFeo8i870fcf0s6mSzNAq1sJqM/fjuy+BfaJ8GNEWRV5iyK918HVc7dGgDafF5lTZu4xvAptK4alLn04B50oQHtd8dGgQdnw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728977754; c=relaxed/simple;
	bh=z+lrlEkQ3yz+l2ZfKUg/DLAU/6KQc2zJ/T0zBMlvuKA=;
	h=To:Subject:From:Message-Id:Date; b=d3xdgG8PK8FEiT+Semadj4ZTouG50SpcNf5QKMF5YZLjeFYkfrgTnoh5HpnMYi1gPPbSKE5cHwcVo4VaX/ssUBxYFZWhqIVtCYSwXGMPFfUF11H+XQ4QsdNsuBaSrNIDqYFiq0lsqQVvBIs1Qd89O9CXKZEJcIFlNXIsMewRD4o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p4QtikMf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p4QtikMf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A751BC4CEC7
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728977753;
	bh=z+lrlEkQ3yz+l2ZfKUg/DLAU/6KQc2zJ/T0zBMlvuKA=;
	h=To:Subject:From:Date:From;
	b=p4QtikMfeOXsmau/pBXH9bSM7Y+7M27ubkZ8YiMXTkd7XiZJucBmp8AlvHbSafk+Q
	 srRuXfLB04P8poi/GKG59HdPSXrHUBqa90d1NaS4gIH9oIsvYQFkJiadRCTSwaJwCa
	 G52rXtYuCjkJ3vGxnM3OQ5Ne9+14Kq37/HFRgCAraY3FLZBv4l65ztHTslLnhwKb/5
	 OQPXth6jEm7g2QpzlCEGNdGHL6hNnyLhzeorVmucQ2COA3Zvqwh4Bg1/9zffiNTOJ3
	 eG7gJf0MgJe/PP83Cn/ezCbkLFIjSY6nYjDOOGMv2c5qA+9rhSyyUYLHyd+U/PfrxL
	 LzscTyMysXJxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96ADACFC273
	for <ddprobe@lists.linux.dev>; Tue, 15 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172897775360.9567.4256418828206994622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a9e5e5c053d5fd30698a33c41fc18b6bd67492981fbaa60d19cf88cf2965086
Date: Tue, 15 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728977753
