Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 532B130D3F4
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790034034; cv=none; b=hqnzpSUyttxGjGQwiLxufxype0TNwfPLf10XH9OAC1JrxKNmJzmIBt/LpOjv8JAvBMyIJusihitMLKCEam9CjI2kafM9gq64UOUMFk1XLdxhEGSnyEN2zBko20IZ72gXWtAL61vp4Mo0u8ztD4JBwvLUHui8AKiJNVGmBKy55AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790034034; c=relaxed/simple;
	bh=PbizQkG+fbBwRmpVpzOcOEsuEEjpyvmK/QwC+6nauDI=;
	h=To:Subject:From:Message-Id:Date; b=kXwATU7OXPxHlJpRkyUl/ttap9FAipjuMli/l2I0KLkvzupKMJfhkzsJboxe9Bf3E2Svw9eDwWuroXa2mG39LE3cy6ddsDWMN/mgzDNoTzFcK8LXpjS6ZT8t7L0xCriwKRD+OoQEA3SnYQzwKyhQIWGGFDAxm56thHggGK8gIq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ddz51PyB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ddz51PyB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C3CC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790034033;
	bh=PbizQkG+fbBwRmpVpzOcOEsuEEjpyvmK/QwC+6nauDI=;
	h=To:Subject:From:Date:From;
	b=ddz51PyBGWIV1Cf7g33bsL1rAQwFOSxqiCjRKTPBypi++Cayr/9idhXRuskv9VQkP
	 YIoCCiqyu9dJY2BE6SVRHJYYW+ntuUvF0LqIavwCVx4uI7ZhYgMl+ZHH2FcUlIMgY4
	 EQ/ddd/zGz2T9QWUlAcvqUQQZ1GSGlKs4tOkgDZ6ZzXc5YGtpYX2wSC8ksXxGoAIE+
	 AdB2R4O2ZuJByKOnjGG0K8quC6G6KmaPu2Na9CSyE0/Fin3AcZbNLTeUHoiPXegWwO
	 RYLiXK3L8+cBbR8SWXu5XdUvKcdzCTAJdIIFgAorr9oBOpRGWNTRVbt3w1x7xSND6o
	 qOeH8KxPQwXqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE591C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 23:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179003403369.31238.14903997343279558358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87462dc08cf17b2eec80cd7c38e3a0b4cbae0afe59ec64fe4987b633f0f68ab
Date: Mon, 21 Sep 2026 23:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790034033
