Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31F731BF53
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 18:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723575355; cv=none; b=EEKGWOZ0LlFCpMT1qetHWSp0H5zk2sHEi8NuUj5R+0+QHzWWuZwkOwFoEDu085+0WL0oYHA61GonGbMTAEUHYKfHS9Ew1E2EvPnE58HFR/rG57UO1ZaENkjgCqR0TykpRmHiBJKscCXpZWEoKRPbwbkX1UXnFRJ59vRqEk0F5sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723575355; c=relaxed/simple;
	bh=hFZ5K4gYPRAFStELqMYwhkITHD/QYFQpFvjR1M44qCI=;
	h=To:Subject:From:Message-Id:Date; b=ShHZqKXYOsanJ0FnIUlK1JrIXMAMk4TBwi1w0sL0v2w5Q/SdtknM2lEHkDfDvYZ5jTVgosKACllj5AvtxDIwayTLkFxcjusPk2Bx/N8AJGFozhS1NPeWDuffWOGhvkb97kZA5ZVMpxL0Largu+emBJAJn+YiMG2pO6cl9Sm5v1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VoIUCfi+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VoIUCfi+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B54D7C32782
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 18:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723575354;
	bh=hFZ5K4gYPRAFStELqMYwhkITHD/QYFQpFvjR1M44qCI=;
	h=To:Subject:From:Date:From;
	b=VoIUCfi+K5WFyInH/ehjNylgSydPvVIJhryois6CxGPbyPVbxqSTl/GUGrR2UadyQ
	 58vh3TWqg+vRTDum/LLAqBYHKqOmyMnIiha69xZ5OE57UKnIMu4D7RPOu0qc4TCVPt
	 JogYbOiLDkzc9/E+0m0Veqr43h+5AbmwlKHN4ESX0OTrcMowqrVr7nua8OJZpUy9dP
	 juTi+Rd66dbX0dZoCk4OhIs/cvCgPSpCrSK6BmdobdGI12EgZ8Fh5HUNANjFf5rcua
	 o36KmwOidH+42bwH7kCd73DslHoK+/A9deMsl82rPjF6Q30+co0a06dilimKIUmEmZ
	 xzF7xIEjVXPew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D511C52D7C
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 18:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172357535360.17826.3617303012024060683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4845def67772b46244dd5fd84361d881b5cb737749b9e8f4fc530ea6ed086ceb
Date: Tue, 13 Aug 2024 18:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723575353
