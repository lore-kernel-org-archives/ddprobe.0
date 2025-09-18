Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E576881E
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758169794; cv=none; b=Bx6nhl1HZcIgpKnMYEGUOfo0erHkEm7M3Ftkfd+aabYc08Xprm2Tb14rOG1fpwYf0umuOHt9PgBtkxMGU9W+t0G8dF2Fjn2ViPaIKJWeM6ao448yU9nhNSllj7Yowv97BCwe/fPIdU74WHGcCWG0KqNgOrIY288EPS+Vj9qULKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758169794; c=relaxed/simple;
	bh=uRbBhPw17du1JF0BfCWMeqWw8eg1m3qv5YnfCMLU420=;
	h=To:Subject:From:Message-Id:Date; b=ctS5CeSfdvLi3GLIY36UeHeie/Vr2A2lmgU5vgS5IpzEi2EqbO1mWp36O3S4iyfcLKyFuUbGMrEuJ4Yo/Yc63UknaIEEcWk/zVIS3UTpnNBBNVPpuKo4c/9cVPh2+EzUV8QY238NXoFaKPOSPh7wAsMKWVfzm7QZnfUEEPVHIQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S1cqOGKV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S1cqOGKV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3054C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758169793;
	bh=uRbBhPw17du1JF0BfCWMeqWw8eg1m3qv5YnfCMLU420=;
	h=To:Subject:From:Date:From;
	b=S1cqOGKVg1r8NJAsXv3UHW+/faGFgQxZKjLJS9+DUJoN7w9MAJGyDuAH78PXKdh1b
	 bx/6cRi+CTO15ZelsqjP/W+rzgY750XJVuNXa2GVkUDiDwbSVelvkYrW153FrTTFXM
	 Zj21mQrEmZk7VIDHocfXvn7mSN4K7+MvZBhsrxXvpPKu+z6F/RxVC6FtzCHx2MCW0f
	 5w7/5LtNI42u6HDTJPSkKBa0RnAmITvTH2th0IlLhIJ7HPScdM8QJqvtOQHRzmzP5M
	 1HS1iSWBFnKg6RdQMcurN2sMQo1b2wN0538i4K+h1ldeRrjsx4mJEcrairly3tcKMQ
	 9b1zujy97c1zQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F32DCAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816979363.21091.13968609930365499470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be3af0ce3c87ab627883cdbf807f5907c75d1bbc92f5a69e85598bd0e6f428dc
Date: Thu, 18 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758169793
