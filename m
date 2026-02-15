Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1993421257E
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771116294; cv=none; b=LXVremqAUQn3l87Hq8XW7iEJH6Z0nElhc1ewAdWwvBlZi7aeHyWPn/cbYnjzFiDyKRzgsq7F5hloxH9OlWG7RhPMhifquwdYImn8zzcE03hipxaAuT4AIc6LqA4rgWkdpQzaS540nf2kZjbhtjzXhdZWWmDodKM2MCxhyi/3Klo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771116294; c=relaxed/simple;
	bh=T4NUvzX+o5SkV5AMrcVHbWzf5YgnMpXMAWC4FCXEF2k=;
	h=To:Subject:From:Message-Id:Date; b=cUUpCPymdKvzZoJZxPAzaZB/inJwFNrU7o0E4niC6S/V1IA643ynkTHHfubikf/1rpmg1rlc97BVr0ohJMnYTip1JF0jr5lW+5C7wdDOQD59fwqa8ORDEM8T9znAqHoBrDW+iAB0nIbfgUf/rBrN0e71iN+7M98JKbRhJaceExc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqdKdH4h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqdKdH4h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE85FC16AAE
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771116293;
	bh=T4NUvzX+o5SkV5AMrcVHbWzf5YgnMpXMAWC4FCXEF2k=;
	h=To:Subject:From:Date:From;
	b=dqdKdH4hWhQNRCifG6FXUE4YJUpA6penmOuImhFSoJFAxHwj+oqO6mdu4+x9agoyw
	 /W+mBLliKLL93lCPYpuhu9cJFfAlGzZrSh8gzYpIcZBfolfXKhBsCU5K/msTg/lI4I
	 8ANj5bTlG4Yk11WwwNLjMbOfwyKZ1TPvAtYBVnOXY4FBxum/op1jkDjgVaL+HEMSMt
	 XWCfYfave+4JlyCR06okVM5GQ/LWYwGYurf7f4D+FipKsRanUg5nS2C2QVRRWtUBpJ
	 5vSOW3ygJoX0rV+k9CUTHkPZAQgxsQkHfmmQH3WxYxC/yHFk2mCD1pXImsbgdNz7U6
	 emJalYsyrpaWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9760EEF584D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 00:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177111629360.19738.1060358693791102475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2768e2d50c000223357d85cb0a0d62da8ef77d42773e9fa7d0eb5035b86abdac
Date: Sun, 15 Feb 2026 00:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771116293
