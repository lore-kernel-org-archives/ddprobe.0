Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72AE675809
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788001834; cv=none; b=SkHny5jGmqmdVWAJ6wfCXfjqklToOtxcYk6Zjx5+bgwDRTddta3sriUwIpS2DiJ1YLSW3iXbxH+xSfjkt7kOxLFs/bdwOnvTUUr3309dD8Bqi5nukfchaK9sqP012ozQWbkVxJ9+0o5dw7n5/mLS3pP0f8UOiV4ai4YPryUJw38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788001834; c=relaxed/simple;
	bh=FBggYFYyoQ6tDn4M14D0zqyMlpeCgZGyj6ZydrCFRQY=;
	h=To:Subject:From:Message-Id:Date; b=QPguq4Oq83T5Z7czGcgetrMjK8D4SF5yvYcyWMCjuj6lK7wAC5U17aOTR2W4vmVlLHej6rCWUGoWrRGm8IZmsalY6RN/u47eDh538Bug0UU3fFMNymRt0vJShB0JTUv6vkQ/2xegZltTATMbblhygE0s8aiQW7gEjzUx/mbw1+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HQDalJJF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HQDalJJF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5F96C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788001833;
	bh=FBggYFYyoQ6tDn4M14D0zqyMlpeCgZGyj6ZydrCFRQY=;
	h=To:Subject:From:Date:From;
	b=HQDalJJFr7dimP6XikR9YCWlUf2rEX/DmL7H+MN6CmNdeEbGVTPY1Z7f/wTBqXz10
	 g9Infoe6hYqEhrC9CUnbnadGHq8bkrAhTIPBX/c+7ZVaQZ6YQrE2TJHkgNJKJaoe4C
	 /aR41fHbr2UAKeeGxdgjVtd68u7rXUg2u7dXDxAlq/BgID+ltUSWnicw/6C306Tyny
	 xMUqOLtgwWkSun/wM2ijUIpktC4ss4gkJWBEIchlq07o/yFTd7yyxN6aoxp+xbZO3v
	 8nSJiiYCTki+y5iRI//nJ91RIwQsLDDvCRSphU75H6iSPFmzxJFKcf7IbSrXAEoEjr
	 0tbgLX1Gcvtjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B144CC61DBE
	for <ddprobe@lists.linux.dev>; Sat, 29 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178800183369.9871.18235052367884719727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7726ef92a26b4a9e200c8341fa8f4e3d7e33696ce65126d2cfde619d93f98710
Date: Sat, 29 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788001833
