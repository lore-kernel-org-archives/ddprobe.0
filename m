Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CB3265CBD
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740421135; cv=none; b=R5kWTVHJU3Qfpm3OFvBUzL8rxrXuEO3V+7TatdN/1DTcngyTElGDoCcV9DZ3SEn1QVp0BYkMxhJHZmuwa5RpI+BdL1CSJOzo5wq0RqLU5XMTB6SOWAS8N3nh8EEIxP6KXtZmulGQtqK/s1QPsmV1LMBjjvsRs5sBzEl1j0A17mY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740421135; c=relaxed/simple;
	bh=emHGICA0gnLgueF8CUYFzhjEyILKaGiEj+bGTyzXb78=;
	h=To:Subject:From:Message-Id:Date; b=di+Uo3uuS4KU+qjAcKE0uXHpzfVL9lgEujHUg6hWYkeRQHcedzc1FKAH3wpfO7ng/6H517BKESO7kXdwhpEKru2mryl6gWjkaFlyJEHhjPAHfUPeodRpyReVAeq9ld4TwJBy6cPrpXJClEh+HuIgHX5PJ999jX8OO1HiD3GWt74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtC2us2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtC2us2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B224EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 18:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740421133;
	bh=emHGICA0gnLgueF8CUYFzhjEyILKaGiEj+bGTyzXb78=;
	h=To:Subject:From:Date:From;
	b=BtC2us2nxzLqKwHTB9oYzD8u5iFw0m9Rshftz5W28JuYLdyPkEby9kRXlV6z4f/G0
	 CB7khGvP+riDaarkf3mRapCbq1ntxCf72KKCXIFb+LLD7ks4ejtxL34nkHPzA/31mO
	 fhyTip7VSMPHK9Df3f0YKr9zZSyBHUoZqGH/ut3QM2uUjhNh2gmuevE6AOTd2/Dm0H
	 3rr6G03E7mEcJPd/mwYIjZNn2Tu7Wx3z8g/Bn8nVAIkQOYcdg3sfvKprTXjUyNQbYa
	 Mm+ieiUBt53lA0fhSn6ughmZQxnl4Fpsz9VuKF4vOjTEwbTOnJ4Klhc9RMmhpCTZD7
	 HpQYoapy83Sfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9895FC021BB
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 18:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174042113359.26890.1219753657023134302.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c48ce40befc46e5a1b5b91dcde882ef936217ecdb75fbda1f7292befd40d8e00
Date: Mon, 24 Feb 2025 18:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740421133
