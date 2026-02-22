Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BBD3EBF33
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771719894; cv=none; b=Ah+6xygpaGBu96CvQB1crw2I4V2Dq+4Pi/Uf+oLTRNc+zLNjhDtZ9zv9qU4WpxYXVx7UUKoeQO/j651Wyb41Hel1hBMjzyoBaOCBuAJjtBgqmMKNGWqUcoRMof0EDRsdINVBH24XSUgkvA1Sb4sDQZrd5FK5x+VjoIt3ebWf/rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771719894; c=relaxed/simple;
	bh=xPUwA9OJ0soowhSo9o9ekHLpqiNs694h0udTYW6bh5o=;
	h=To:Subject:From:Message-Id:Date; b=FX4EtKJ2h4LIHMtrHoNEO6RFpnUoFbhJcCHa1dstLXOKeluarS9iVsTBnvBmh0NPgVe3ntiVFmWcxmsTeSUMtRHwFckUbESvb4z28WXAbAjeXLOgTd+RLoeu1u+u26Vz8FSE2GfwTDTC5jfUSe9VzoU4EpQhOtTi6pNQMvr15So=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkq3ZxkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkq3ZxkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB9FC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771719893;
	bh=xPUwA9OJ0soowhSo9o9ekHLpqiNs694h0udTYW6bh5o=;
	h=To:Subject:From:Date:From;
	b=jkq3ZxkZbRCGdP9sZHvC8EUDgfcfkWIVlwo4rfIvn7mMNIi9FnbAArSWiPTWvJBdE
	 JEMDiC6ZqE/S0HU1MC1eHmHqMFqX2VpaxKDssbxENRh0lMQpeJLILw6S70cAJXaNl6
	 S/VXc6T3C/IClLzgSow3dfpdMiSCRtXwAFkRSFNBjCaESjZpb4n+35GDWTihQDmN2O
	 c2eVVhrAvTwOHZ11UKUkmQGBpvEQyhgBqnn7cy5dnQsdx+hUdbtAdT9q94+/Gnw+Jv
	 GM4lj7IInPY1RCrflY9p4qanWvYq9+dOfCYVGWbiBtuVduPb4mjYOQek1hEB1WeTib
	 y6ifakKGSWNBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97F1FC61DF0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 00:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171989358.16029.13878741673221436355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48ef57d56ac8a2ad98b06dcc1134c23d21183ae2cece7ec6965ecc291cb14a87
Date: Sun, 22 Feb 2026 00:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771719893
