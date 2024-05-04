Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4400B22611
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714783343; cv=none; b=oOa3Pfez1ny1WiGq9QBdfyfhnd9AIZpTNU6ZqIlQ7g+9ON8Yhgg1mgdMAB92tt3z0FlKILDSWBjD+S9Cto9zKPA956jphqtgnA3OTrDzJtuBegdZ9riWoLlE7fYHPC1+xbtMBS8pnqWmFImta2eAMHEu830iRUNgHxkTFkRiJSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714783343; c=relaxed/simple;
	bh=JDxicauG7aem1YWjz6P4C4Wb01iaEL4L3tdPXDsdB/Q=;
	h=To:Subject:From:Message-Id:Date; b=Cqu5yvKg4GAqR4CkX0Xgdrudq5EN7NCTX3zrYBEedlyynpi5U5IzLM5mptN+I7sEZJs1uKgMABgLdnloDpdi5f8kS8ltxVRiZu6p0CtBcfjZtTcUm98uoyPOtmOb+ew+NAXU3U1v/12/d8J+brhIEYS7MZklJo8lUmCr3e9BnEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaQKQz5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaQKQz5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ABBC116B1
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714783342;
	bh=JDxicauG7aem1YWjz6P4C4Wb01iaEL4L3tdPXDsdB/Q=;
	h=To:Subject:From:Date:From;
	b=kaQKQz5sBN+utlliFOZXKSTG7brn0jejJVF0kKZo/Nk44vyTked8uozpygFbKv9uj
	 GQWl1T0CBos1YWT6DTyZNPDRT0jMv9i2N4Q4IstpqSycvCU1LvCiYJ7aAcJS7kE7I/
	 6eBbSvAVZq8OKGzNSOaUUy52Zf8Lo2mPaXWxXhS9qQCT7/pqVlAuE4OUssTnamxQ/A
	 UBkxj+7UJlPoV4Mi5Zl5nxDvStSsuyUiMItuvzv9LpEQvL+QJs94Ar1LxvFrI4soaU
	 D5jMkvefZYDC2DHBguHEZY03rDKJu1AFrVpnUIFEgX5rupbnb0bWMFO1a1noa9OZya
	 VoJ517VRPlH3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC398C25B10
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 00:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171478334276.3157.12708442022020954657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab540dff64ba1bbc2c92833a73b66691258f212a244e800dda1743eccbd96081
Date: Sat, 04 May 2024 00:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714783342
