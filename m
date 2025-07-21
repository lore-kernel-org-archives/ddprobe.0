Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A017A13A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753058394; cv=none; b=HhQ+GTwjCdeLnHGY/aF9BHu1xuPCWjXUUIaTRPtO3wBogyL9pDrExryxRb3kM8KilcpNv580/ZfxwyqV577DoLGBLsEEbD7Kniv7zrCNcAD2sBq4Km/GJclP787t/IExNiisyQXijXKMc4AHxT44VgOhpKOOChpvC8jKgOTw9SQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753058394; c=relaxed/simple;
	bh=tiQxA4+aM0GlpZqSIrOP4fJCug1Arw/nltbquYDU45I=;
	h=To:Subject:From:Message-Id:Date; b=WcjzxJlRl4UX1qFawbZz+4wPM1OT4P6bQhi4uWHDHr1z6D5E/9XtKIvcC04owJ+1dj2KiqsDQWsUHjUw1B9M6TwVvsU0xxdDR23LEnvhfbdie8W5teMDxY6Ho5LC3IAdf9/h3zbTc3No2W9riY1MhS/F56mocqvRgoKjOHu2GZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KqSktVT6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KqSktVT6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EDAC4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753058393;
	bh=tiQxA4+aM0GlpZqSIrOP4fJCug1Arw/nltbquYDU45I=;
	h=To:Subject:From:Date:From;
	b=KqSktVT6wf6hVmvTHiWTQZeoBN4Oxcs8oEEC9s+Z7GRH6A0ep57xoyl5o7OxK2RI4
	 RHPAdnYh6XbdB1KB4FwtkzmYylXSdxHxCBYbAwy8JyH6uPDzbdch0XXh23Z/yTkaar
	 h9yucd5k08cbGr0ZZcORgasO3sgKLnVCqvcJwPfnQaVS8Zvz6uOtWnFg5vQu4okfQu
	 7XbLkTzUUHzOcBrErsZeCsTelvKJxNjgy3REJrHKaKRRxGoaQ0pb6c+infShpzdgF0
	 el55YVGMyASam2qLUzA6EP0fZAtwMHQtPxgWLAE/FZ8QcOu/a2ORQRFXdTTn2zksvi
	 jHO+C6Lk1JO8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D86C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175305839358.2190.11204163622021004121.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2075861ebe571ee78361405d0d31d483c28d758916936b0d4559bb304f29e8e2
Date: Mon, 21 Jul 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753058393
