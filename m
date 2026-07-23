Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 672C034D93B
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784796574; cv=none; b=c70VZurAF2b2/HsaTPV8B1EV18bncjgQ2nwGcvCUyKrxvo92FUvUtxb9i3T6TPh+4Tyc1RRtPBg/1kEMN4R6riIZXjWfkuYcC2LSHlVYpNaKjIz5QSkXUl5aKMpUIvWVjonhZlPNdUMGe0rVGRWgk4l2jE/hjrZh+VSh2QJrPA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784796574; c=relaxed/simple;
	bh=tqFG5mdDL+QuBRDdlTnVexmIzsgd1y5EeTO9SCNu2SY=;
	h=To:Subject:From:Message-Id:Date; b=HyiJsnixP+Rgpl812PhJD0uRCFU7wSD7g+0XcyzN3Lx77M2ALJOIp8ksp3BWAYCfhQgiLRkL05Mwg2r0QGTGi61O3Qopy62jEaWAWjzicNTYCKA8qh3Kkd+5LhCWrTSaDNmVFPP9+SPX05u/zZDyG3ROdPjJHyZZoGxzVBNfpPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h1nWK4I+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h1nWK4I+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8B4BC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784796573;
	bh=tqFG5mdDL+QuBRDdlTnVexmIzsgd1y5EeTO9SCNu2SY=;
	h=To:Subject:From:Date:From;
	b=h1nWK4I+YVhxy22TGgHhfR8zDGsIw5M4yMpCANEqJsJb4isQjKSyTdCaNKpgoLEly
	 8c3CDdvPdhOwoGrrSFiPsDTLqIxq9fw5AVv1JsW290wiYTKz34EstIYgKegLjOJtqv
	 h13TR9qs1b5dFOACNy2VF+pCB9BcQuWtaOIZZ6US8WIFbByM2RJBEBTLEIXklmbslT
	 zUkPPOpeSdnjzC6dnZ20FrM8pwRSGQqP9a72tgYYEPUFKK+TtjXF2FS1xJ7+g1b4jo
	 QVKKC2GEJGggFtTR9wpRfx1v0VFh9sziSkeEWp7Wi7M6UsCd6IM9C1gqCGngkOAjOE
	 ux3AL9M7nljow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F3CC531CB
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 08:49:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178479657371.18140.16154714155259805966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f5d4a8c33cd842d1c1267b852e16f4498cb603ee784ebfc0db39d95499d0347
Date: Thu, 23 Jul 2026 08:49:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784796573
