Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7FF0F3BBFC5
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788105034; cv=none; b=UjshZYVTeV477LNLoHJWjeC+WpxTSO/le+LCU94l0Uwz/5cuGV49nUVaFTMz/aiTu90dCId5Uoga5HPct3WQxtgMppy7nwV0Yc4wDuZHpMzP3D8vJpxdaQlYuVrHo9rh2qU6fiSKAykLCuts7t1HYTkC4NLcSPRPv3jGJ7UYLss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788105034; c=relaxed/simple;
	bh=gi5yzhlVOfssEdx7w/cqMddyjK05tQB6t3YCtfZ2uO8=;
	h=To:Subject:From:Message-Id:Date; b=lz5O8lvL75QnTo28OYXXYPNtpwfw5aUYehH3pbDUBQhjFyP9Ch0qfBu/tKw79PoSuzJsV4W7ExvKNizYUMmDhFtfqtbiF5lBonrCcoWASr85o2peWoz9O2Lzc9G5mN2R0mOXRJwi9AJtl8yQDDu6GNhHbIVKLtjpdXe+T9ZuWT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3a4AW+0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3a4AW+0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE15FC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788105033;
	bh=gi5yzhlVOfssEdx7w/cqMddyjK05tQB6t3YCtfZ2uO8=;
	h=To:Subject:From:Date:From;
	b=c3a4AW+0evb8CdmUlCfK4r+GbraeJEN0Eg8CcqHAQqd/1n2B6x9G5aw079EteyXbB
	 RFiM6HlwF6NpN+Bv9+O7TU7rXtIfyOCGq6NujLjRR6SiRUCvD4S5Pl0gkL67eY6l0b
	 16YRd69GcEUQgrOao2IelI33VZrXSK8BhY+yHkeTQYFdeh/EIPEXG39rzfZFFRwSCy
	 kj/noamxf+rEkvW+z2zD/Xyq2m+k1tgFovofxflTEwG5wNHdm0Ty4q9gZT/RPbaxaK
	 UnSbUr41dx0eVxrOKUDAwFiDFSI5jY0VIGkQmtfJeG0LRRvyx976lVJsguAwF8rvA+
	 yR70HaaIfcbMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B250BC61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810503370.31475.14698039664423017763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90d7e73b47e1a60aac0f5dc65b10c820ea7f5bccb891a36136b81a41ee2ef1e3
Date: Sun, 30 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788105033
