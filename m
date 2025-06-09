Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17B924C8E
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749454194; cv=none; b=r26ottR0xUzZGz4voBEjXncz4H9fGnrLs555SVZj0pJEbOt1ollzWdW5X1FIZ4PNeJatRg2tazn/v6mgojH557uAs4E/xdfCennqQwpFirsp3KlBZ6MEpigAOx19s02G7aiIjN4B5LR7ld8axcDHS89NrVORaemVisoVoI8kqSs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749454194; c=relaxed/simple;
	bh=pvH7DVS7oeO2DJp0hv0SfiXgj7n4FP+ORr0Pw4RBbq8=;
	h=To:Subject:From:Message-Id:Date; b=Vwuove+R3iGUBWlc1+0mHkL+DWfJSu5bt9AB8bvoHB/4uhpipFkhTA7SJMmrS5EBjCEOTn8AQagoqcLleULNUIJE6WmYEbR14GbWl20m2JWeYro0/fNop5SAzgTxdM/E4K4duIwiSHNBj3C4/w10Hn8dsnUtu37BMJyIJyIhhq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1CjaTO3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1CjaTO3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D06DC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749454193;
	bh=pvH7DVS7oeO2DJp0hv0SfiXgj7n4FP+ORr0Pw4RBbq8=;
	h=To:Subject:From:Date:From;
	b=N1CjaTO3Dt8mzL4IPg0zumhJwT68XwwNBk7Jb4qIncktozwowiaBW8bA5SBK2jc2M
	 PGN4w+K3nj6uQGXRpc1tjB2ee9OMDTHW/9E7gZvgruCSyBtJgO/3fYchbH7x0dESXV
	 Q5y/il/TK9KgsAAjiVZMOrGJLq74LHSdgsf6nsGWZpniueQ7zpmFzWzLIIpaVi9dFD
	 zHWfSH0ogRS9ofoUSdot3Ds8hp6xO/fxHAhnlOxn2zHrtHuzZDocmNmKWnyhbTKoKi
	 EyyqSil5Y2D477NAa80xT5T00uRQJb7blhNd7tXXqeHYeYgq04FMXrplRKVIqW/VvC
	 YOKBHu2/hWZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E202C61DB2
	for <ddprobe@lists.linux.dev>; Mon,  9 Jun 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174945419357.8134.1400102147703535669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2a38653283f502c714493df37ab226961b05e91ec8f836e0b6aaf62f131f6e2
Date: Mon, 09 Jun 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749454193
