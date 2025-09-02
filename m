Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A9681F4CBB
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756777794; cv=none; b=hET5Kvwu1KzF/9gepZJheNJwrL+ok8+2QF8s6e++CgLgL+qfMEz8MNqATB3Ysrwf8QUcpKLoljpgSNTN2kQFD4k7mcg/1l393gO+bb2uzM40XbO2aMxj4PtsyyG0zRAqxtvD7pZgioQmqB0NhaoL3v5FqeasjnoBS5rt76an4Eg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756777794; c=relaxed/simple;
	bh=z8Z8M6HvwOrVekQUmDABElL64IJsfsGDKeeE+wo/i4Q=;
	h=To:Subject:From:Message-Id:Date; b=CBRkeoRYh9hqZaicZF16HmlmcTHfW61eMtuiVsdqDy6uiGj4UFIELN8QURbEb1tjmWAHITy4W73KsuOOZpvg0/gm6evqrZNka5CQmo/JTDJbCOO2TvUHiwHDbcBj6s5c3CWu4C0xMixdchTbZoNIlJb7XF5a0ZdcBFLVO12KCAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DnPchp/5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DnPchp/5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAA3C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756777793;
	bh=z8Z8M6HvwOrVekQUmDABElL64IJsfsGDKeeE+wo/i4Q=;
	h=To:Subject:From:Date:From;
	b=DnPchp/5GlwTZ+nwJNi8FUqJhVTI72ksupgXA+UlE+F/gQTpCnfmzkpjXAhGmvqL1
	 1496jwwWyLsqP0oP9FfqlP/2GGZowpNz0G1kadNBsexhR38G9Qs67Ph9M1TAN/mxdZ
	 4y2up4+dL9R0GFuvqr96opXyxCKL2AIBGjL5lFYxWLihdnaJwQHT9+3g8LKP9e4XB8
	 4OuNEQWpZecipWnW8QVMQQ1/2h8P/RkBUMan75tEvrHfbTJ08pPJhrvBlV3p1fywgl
	 InWb8z/inZJfKFXHSF6rNX4Kh+pVccPxgzU9RMp3lo1rv4bOXx6etv6JTX10VNqjQg
	 jsw6YtvlAqAQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E175CA1002
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175677779357.12054.11378700966009961637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aaf235a42407442b4a917a418c7a7d29f4ea9fa907ceea107ed7edc0c88ea48e
Date: Tue, 02 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756777793
