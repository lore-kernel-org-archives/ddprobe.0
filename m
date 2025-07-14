Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FBDD1474CC
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752455394; cv=none; b=hkg7DW5Nuo2FAHhbJBEEj03ZeBBNa/h8Is6K2JybdTg9figfPvXhbNxOC/0pMkvpPpo8zF20+PkNkpqjKax4l2I/YzBZOQKuRWDTABJ2PbMDQCBSksTRXYcKLYkP2i9hib4X41uz81pE8PNJfrzyWKyM8auCU3jdA3csGWWyLAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752455394; c=relaxed/simple;
	bh=1vaqJpnULjU1nEof+cbmLojyKuN00jhslHeo6PVZ4rg=;
	h=To:Subject:From:Message-Id:Date; b=FFsmlSPlTm5iiIc/LxyMIOudrA9vCXJ3pXYavCMvhihl4KRJhpcYXUrboq02En3VhqOIGJfAQFooTekucH1B8NTcvwpDQnqQu2rlCl/b0URgvgTZu5JURjglNCfWbtQRxn+f/h2X65cwtHVcoDYGPgShN6sfITLY2yVpPA7DAkQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TM/a2u5q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TM/a2u5q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0264C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752455393;
	bh=1vaqJpnULjU1nEof+cbmLojyKuN00jhslHeo6PVZ4rg=;
	h=To:Subject:From:Date:From;
	b=TM/a2u5qHY0OG5J2r8+KiLQZdrSAAYvHptJ3bEj+1d3sja+p4O5CPZUWmbbUcdZCD
	 EKkOAGrTjLJCON23XB1aVvhUOmuPcqKPRhxhyD+mBqLOGF6v55vnhu5BAHR9iQkgy1
	 DMpriS+ar57CLg/Plo4k+dTCFG02KaP0xtiUNa3+tg8kF1SWWDDYlFUX0rx106b0Ah
	 Kygk7Fv2kKsPnRT+u+U+KMOsG7oyUtRJBDa1k9ZwdOBxz42H8W97ODcJke6o6Im3Z8
	 mEYvFUvXh3PraKC0YQkT8iwnyR9tllZGycS+MYWYkFzWIlRD9/aGH2/jEyC+moClHX
	 xuAea4evCYphA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E155C83F1D
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175245539357.17824.15417930626007201620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb046d6c13af65046c111b902ef7d5950dad70ead8040c241870f947b786ec35
Date: Mon, 14 Jul 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752455393
