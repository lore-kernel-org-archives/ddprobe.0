Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B919385516
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775433334; cv=none; b=nNgx7367Wilk4l5lb0uGIVBjxvHUpt+/hH5Xgujaqsjxy75ymm+6aw+2eihisBbcgSnaCZCgrLgCbaB4QJUueQYI/as6FGI8e1knq31/0AXOnyMvbMCjC+spLzDyUW3lH7Y6Y7cmUxK1y7LtDJGhSMPQANpBKlZtLwjDVa7WnVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775433334; c=relaxed/simple;
	bh=KSj4aS/Ifdi93XuTFgr7Mr55Tom6c5LEVk9f7IjxlgA=;
	h=To:Subject:From:Message-Id:Date; b=hOk/SigRwGuAQmQoZTslEqKULYV3zs3KHtkIa0xSBKTGDxeke58NByZXoesNe0J9LrBks7GtiRvDBcnpY1D8Veikqk/2sdWzeCVzO8a5sP132YKePPAfovgaQ6idyjOhl/1UqTpA37iaRx+cAVWP2iqjSNU8SzLp+HjWQ4B9D/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cY1EE9wS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cY1EE9wS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D480AC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775433333;
	bh=KSj4aS/Ifdi93XuTFgr7Mr55Tom6c5LEVk9f7IjxlgA=;
	h=To:Subject:From:Date:From;
	b=cY1EE9wSXqiKBLQXPaoiGWgrIZOR7iHc2CI6PetoqW64bKsJIY6X/uTCRsxdvwCVZ
	 evUiBGQch57TE1q6cplD3tWpDhHERoLDtXRkgGY3fCxytPJu0lX2ctzQQ6PN1Ffa0H
	 ALYXHNBQRC9HxBwaU+YzrgqIXYQrcO9yrkLIqC2XRPGjUNQN3vy7QQNz/uwfzPtZ89
	 s0R7VxmbFPoD34fOwZh4g64j8XNVxWJQDHdso1gUBzurA8G4k5A3DFHrsJgsgbrCFF
	 mgBxbdN10XjnkJ7di5r29WIRmlPcy08v6eynDF6jo2v9+eLdG1uxlnBqkMx7kfNtiC
	 T2C+SBOfPd+Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C17B1E9D826
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 23:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177543333378.17847.14308838283459689134.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8338f86e86eba1057686377f5d8514942507b3182a724195e01988816ed1567
Date: Sun, 05 Apr 2026 23:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775433333
