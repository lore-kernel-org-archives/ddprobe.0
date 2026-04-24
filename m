Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E54F2D9ECB
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777008454; cv=none; b=HjB0FgAxKh/Eh8hBlumAfEslwRZfTOyq/xUxl7Oq53NLe/AIf/MhfFT+H6j83JKuvUBlxN1NWxF7N7tNLaZ2t34cKeJpMg7tuMEQIDwHfHaLJ8XAlDdUJsF9LZQi1oO27fi/uDyUmjW2B+Xr8l7026DGXsUjd29X6M/B/wrnxNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777008454; c=relaxed/simple;
	bh=UuYA0sIikNz7ztpbVVw1IsMtscJJds2K2nVV3ylOLJ8=;
	h=To:Subject:From:Message-Id:Date; b=OuRao9lQAZG/GnCjkO4WgkkRX489JXPSZyVksdLm3st2VUeMW/4Ul0PhiAtkYTK/oTkdSljHUumAjjI6Ktj54ch/1mKW1KO9v1+nTvIkHrf5Bv+SR96acsRWygmn2uF3zgNm/K1CvwwsdgS+tRHv6lVsAVUL2j16cwTPrLHe3MI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TsythEJt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TsythEJt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2024C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777008453;
	bh=UuYA0sIikNz7ztpbVVw1IsMtscJJds2K2nVV3ylOLJ8=;
	h=To:Subject:From:Date:From;
	b=TsythEJtcHqYIMSSm7P5CI62yr2RpYNlCPib65XgmMt7kpo21tqLRuljckLWpo4Wo
	 XCSiiky3POacxCdrakdIwOU8nnxikbZBNo/PL2CDI6XYp/3rijBVpl/GIw+Qmx9kXw
	 Ykfy9cg39cz0RdTOUhia0S3c8O9Ys/Iax9JJrKCYfLe/tRC+SYljhbPyUSbWtz8lMB
	 o34wrNU9HfNBYJQzxkR9KQvFTU3ra0iSh1XQDE9YfoT5w0JaUU+yzICdleOG9+kkWE
	 geXiMPF43Q/TDSFFDKU86KHKs8MA98mWzKYLsErSBpVe/eE3BzEjSnvvnKwBN1em3L
	 OO27hZfkiBmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9FAFB44AD
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 05:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177700845368.11469.10917350820340834652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91d2ed0484ad4d025e14d0530529d0bd2966aa2f3e0aed9eeb85cd89dbbf708a
Date: Fri, 24 Apr 2026 05:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777008453
