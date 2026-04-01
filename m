Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B73342048
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775018694; cv=none; b=N2SNzJRD7grZ4EJL0IDfWbs4mWTIQnrs6nSU7arK8ImWaXZdOlr5cJE47Vb7YbFBD52vBUz3gOsX/ev4RSdfYDPC/0YxHUC/1Vu1RuUPuEiGLku+TQ3bWczok3zwCytltWtxbbFmHZ5+r1Ak6dx6gvFtQFrLwIUJyyEUbzsfy8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775018694; c=relaxed/simple;
	bh=S6CB36Tgx5UMeXB1WORhO0ae/zmGDU6zMCLJgcanalE=;
	h=To:Subject:From:Message-Id:Date; b=hT0LBChNHnF9VG1Er5qTj2LSoyqGfQLvSoNkHaY1zNQWsVIzwGiaQCKfu0vlBzXyI0I7jd83kYURINXv1L1QosziOYpC4f++gRwNUcJV+Dx7Ha0wc2yC0jBJMGL+bS/Ja4iZ8CGaRUOxjdOOREDtHKtOm+WG8YRn3kWG5V9Bty0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OK2ZgPc+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OK2ZgPc+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A229AC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775018693;
	bh=S6CB36Tgx5UMeXB1WORhO0ae/zmGDU6zMCLJgcanalE=;
	h=To:Subject:From:Date:From;
	b=OK2ZgPc+BklGY02d6B8ywOEmg7oSN5L66cAQ36V44YVd6wpfQ6VVYUpoyibl669SY
	 Z4+pr0sg7PLoEeIlPDuItBpXyq6Q82e3SpJ/8Wz54FKijlfRvYeZ//mIW/lh5OnMuL
	 I9Bjp8LgFZ88LCwh2+a10lbGgnG9XUFI/h/Qi3BSyJYD75Jnqz9ZrovCzAVJaCW/+2
	 lMa1WFXapR1rnXsQy8dlH7QGQVIQ7gMmzQVNxGAKnzJyC95EYR9LB7jF12IXmNSPIF
	 P/wActgaAVKdlsP9zVO0Dgb9yyIUFF63UljE7ORvsJgv+c4YGu2mZ4FKc6D7i8u9RL
	 vMdprS39WMWDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919A01076361
	for <ddprobe@lists.linux.dev>; Wed,  1 Apr 2026 04:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177501869358.31752.2301246335946769994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e26c96a677a2c2123d9285ffe300d7fd4cae3d878d23b8a62b59192eeec9e48d
Date: Wed, 01 Apr 2026 04:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775018693
