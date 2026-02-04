Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA0327B4FA
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770211434; cv=none; b=hQxCLeBH43SuA3dkHAN/0CyFNlc9alF/Dw7OYf3cOpAdIiEmqs8yjdnJ9OF4Dc2meq++bgBFgiO+Ib6/Nw2y05yPVIl7oxWsVRkEhhH4dIM7z3s58L0zBBkmKeaxGbBTLG1u/4pgXv0FcqZgDUD6EkB2nGpVcb+55iBmYJL5FGc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770211434; c=relaxed/simple;
	bh=b70zDoIGnsAtHkxC5XgP8t0FiK5LG9GS5Sw/trGBvZA=;
	h=To:Subject:From:Message-Id:Date; b=kQOJmejnX4FS1/6xlqq4Ddaj0QNydGEvd/qqD6us4lDUAKurJWc+yBwmauz7Hm5uzSVC+MC2ynbI+Lac4YMr7LLmRw/eoojAheIBeC/oI6PKWWMdkUEPepJu9sl4o15yJJl7gyUxL9HZleKBb3kLV25jBnXMNwQbwnRxRW2FjAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhQRddQw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhQRddQw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9F4C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770211433;
	bh=b70zDoIGnsAtHkxC5XgP8t0FiK5LG9GS5Sw/trGBvZA=;
	h=To:Subject:From:Date:From;
	b=FhQRddQwPxhWHtXXvn0Gqgl5NRdDp0EVEFblE4e+p818O0p+yO7EvkmFgNuWkoECX
	 4USYm98+tv4onKj21LJYRO48bxqlKXAGOb5KBBFj9mg/TBKCHNFB1ui3dvXDQHw1mo
	 zbjexTwJ/rH5SyZp+pgCdgK26CxMZCVzwggOXAOwegzMPzQUe8vicyyCqi8VitSqoI
	 UaYVKqrNAMSls6rLgcUUwta7rtwLXmqu1g/KfQwAKgCpp7f3bXbuaWlB93cybrbYSf
	 pD2Emw6dzsNX+21mbDmFYd7/4jQPlVRvMtCqTPOn5nYzUcqYC+rcC2/xeUWPbu6YFe
	 rmnIFAE0MiQ2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979A3E95396
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021143360.5233.4337680410474061662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48d766813dc45e30013be2dc6e8c47716e4bc69fa466f6a70a9ed9679af33722
Date: Wed, 04 Feb 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770211433
