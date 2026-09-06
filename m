Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DCC3438B5
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788677434; cv=none; b=hwbH4DgjlZfj6/fwdf7pXUN9TVL9DxMF9CXC2qgqgXi6c/oOcguGb8QWMq/8eL6XgD9OEIvfNqknElFd3QGBsRkFQGM56acLoWGvJ0yrUSQKCcWzWGsyOdNxzPHyKyfhyYI5KsODL7qOt8e1x0Z+ieFdDXg88xjKu9WDYJrHROg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788677434; c=relaxed/simple;
	bh=tTJlWKHy9hXUeC45EPATylVB1736Q5GEOaKnVoUOcgQ=;
	h=To:Subject:From:Message-Id:Date; b=tgAQHMA12Pi0SwUm8+2l8nT8aPlPEwa2rcWsfnQs9RD3rFGli8VCV9Y1MhLW85CbdSqnZoJDq2pk3J8Ha+IOfFSvkXuM0NHSbbCg1AlUPltcqfHQNkntHq4ZOHD6l85E5Ds4YpuJEOsoxsc1prtRKMKIu51jbwkJ1CTVj0obg+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sHBCdnl1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sHBCdnl1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE176C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788677433;
	bh=tTJlWKHy9hXUeC45EPATylVB1736Q5GEOaKnVoUOcgQ=;
	h=To:Subject:From:Date:From;
	b=sHBCdnl1FPc7leBkbpbqH0Ivo6Inm95C9xmhgLLLiPor3+GSLj5mALwHnQjlQ2uTO
	 2EK7mu3PYbYvlGrihwwCurWudaAABNB2+uzhOQynFKGrk5EMDV9nPvcHTOIKaLoMaG
	 Bf/KIQeVPaYdaKOSBwI1a5yNnEZ3wuakxULwhZAURr1FNVgH3DYfvfZP6Wkx/7BYGg
	 hSf4KIsMi3xCqjH46d4HpnEU5ipmbJlagpjlfvxD3U1LrNMOtU6wj59KBqel3hWXYB
	 r6BSgVFn8wu1KzPNTRWaEkcJfjVsSyTEYUW7eklqzOmHHSczF6dKV6Jnyc67NgYjY7
	 9ahp74kxmNsnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6C2C79F8C
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 06:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178867743369.4317.4350185054671914055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b25a6dde0f7986ee00e7068b42f1102771233bbd30da928375233eff370465
Date: Sun, 06 Sep 2026 06:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788677433
