Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1C5E3CA4B7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774023293; cv=none; b=skzcp5+ydx1AIzEKN+Au/kKRlLuxL0c8cVk9jxgRGurYLIaQaXguo22b4klunC+syxMXuvnoAlSczePbqANQfkk4uiOEM2c5ChQvZSxosaLSzJ0l7sJO0Wc12xriLU0JtxHm2MNrqy0GmiDOG2K+jH6IbiyL/vq4jqkeZkpp3Cs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774023293; c=relaxed/simple;
	bh=dREPJpj6q+WdnUS9I494M7s20l7qjkPDPtYVipAXhGY=;
	h=To:Subject:From:Message-Id:Date; b=k3wB6itYrAv4QwLEzQScmSMltH+bdTK5HceJg0kQuC6xWVwaxKaTD5XU3rh7NPyOPg+a0yMlG3Vj7NPb01XHW2rcUaRCcEXKvt0htj1R15uSBhpZRJ2Rpmq/WEsmVPj06vamHGuumIZGEAgeqW8g7V+jbKiO9dODGxfLTUt45RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qTVY/c5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qTVY/c5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A091DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774023293;
	bh=dREPJpj6q+WdnUS9I494M7s20l7qjkPDPtYVipAXhGY=;
	h=To:Subject:From:Date:From;
	b=qTVY/c5mTVNvATepQY92CdeczvIvd3p9fPZLOCKhoq7GEiFg3xp0UY1Icsz1MGoZv
	 S4pBujl+C7KANF9zccB5L6qpNOwu3fFexX6rwgW1mhe2Lli1Y05tFC3V8qjBVE0b8/
	 f8oLTMBDVQeoQo2VwjiIidAkZwMEvKwp/FfD95AYGQMvFF1qen1pQPFnZSts2jb/o9
	 FS9acDwZa2TtGo0sQwZp59UOCV6Mb5I/ZbEzGKofztGOQtm/o8vwKUx6Ctk25qgf+l
	 jrbTSgsOFfIOGzs+5jGcj6STw0hA/pnI45ARwo7Im2xci66CDH3OrhF7NJTAnG6YJe
	 nqSpZUTp5imDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D9810987A2
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402329357.5280.8846276213616887441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43c773d04f01729ba4e32b729d6afc037898d78f6f2256e541c3e87cb930015
Date: Fri, 20 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774023293
