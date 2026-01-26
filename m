Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13CCE3090E5
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769466834; cv=none; b=ZdUre3BOyGSoXdDVMSf+/57y+etdTA62JM1Qj1Ljqy3sYg0byREzzhHMQ7H3FceKH8qFwN9ut9yHqnN+KxJam0tMtTqT8nbVzDTfGQAdlBYIBHl6ZonWA6PqUwqgvgoCJnvrSdI4shpb6+H8oRLGIPlI+CnPKCTEDI0ihYfnVbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769466834; c=relaxed/simple;
	bh=/d7TwOIezPrPpkLQoI7PD4cW6HC1dZU2cpvjAVOQVog=;
	h=To:Subject:From:Message-Id:Date; b=Ynb0GfwlXLffn+pnXhEjD76HGZ+czNmg5kpCS3Qthur1G6OUBmKannzN0pVf7BwpFR1UhTEcRtO9gO0pVizUXDp/82MW4ji4s2OtnDOgPJrtpxssKQy3ZuRQZY8h9Taybf8F9xj5fFIzXMrO0NyUqR/fotRuFPilJtpC6VTov+k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hDYJ5GuE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hDYJ5GuE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E343C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769466833;
	bh=/d7TwOIezPrPpkLQoI7PD4cW6HC1dZU2cpvjAVOQVog=;
	h=To:Subject:From:Date:From;
	b=hDYJ5GuEIH67UF87nDom6PqK8OmbBpAcbITR39o+7On5WvNDIVxE+Q6c3TvCQM+mo
	 /q0gA98P11FDK8qSAb7X4zBs6IVCLeIrAfrfFbxeL3X+QQE+YsrOIp/VZ3eSsGYul1
	 Z6bAfJcZKoBlGLTVSfECGXkK4I8hDn4gIwro34730qWEnjeQ/f7J9OHRbLTngALYWe
	 zgLMIm+DkaohU4WfMS5INqcbqozh7UH+c9hdmnOdZDnbilQp7m/S8yr1i0JzFWUUfj
	 21L3sjuN0hQJoCqVDeXId9MeD3MAs74UPHlavs1Ss24R0rsQG/udso3HCdNMG14Geu
	 eim22AFqTXmFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90075D1951B
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176946683358.26288.8002851079863022783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0013c1b411541cbd867484fc3cc95e1a8c1b7fa64d1d98316b5b2b09aecc895c
Date: Mon, 26 Jan 2026 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769466833
