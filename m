Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37EC578F36
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751820594; cv=none; b=hUComC1Td2T/rYhR8QaDQzsT00jPdrcLEiVvq3yy9V69R+gHALTpTgBjEGRCHvTQ+SN0VaJMi2JmouAvlQpfjxBmnRzOopChHzAdHbHUsP3rChhxn0T7uzIRtbjK7QCPFsrXHKWO7AURRucxIkVsA+DaOUgn0ptEELLelOKCwmU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751820594; c=relaxed/simple;
	bh=Q/XTn31cmgS5mFHyDPoB03zuwfjX2X8plR9Atj3tAmU=;
	h=To:Subject:From:Message-Id:Date; b=h9KO+QQ7GRuVQBhaDnHwlrV2ZcNB7vVG5q1nXxMaDoqj3N+06w/z+pouS9Zjf5HgLC7vxkky9wiE0tlV9u0NrKUFyZcUvAgQotCzQOIZEhIzn6CszO2gtTfgW3H/HhFce3hV6eKiyVlZxFuAcUwgrxmCQWHtrYXtIl1pNePxTiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pt9X0LId; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pt9X0LId"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A76CCC4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751820593;
	bh=Q/XTn31cmgS5mFHyDPoB03zuwfjX2X8plR9Atj3tAmU=;
	h=To:Subject:From:Date:From;
	b=pt9X0LIdTeGC94jcrL5Uuulp39iJo31nhrlYdGvE4g0VfaQyLodNDREIUYXA+tdCS
	 g+bRfcectlSWcDMi+M4yW8RdWyGJjyxpJowlIgj674Qa5Ei/BVcmEzCvz31b2dEXpN
	 uRLtB4cLs0DctYaf9PPNEyaWJLowhbeEDAyHUecnXS11782qhL1UjuFR5vel/NIbpN
	 eh/QNYdcmvkGLSB+f7JzRn+RutYvrgf503ryes5dpnlYPDU6L9TQfeiUoyDWKi/HyC
	 vsqcNHUHAOw360Ryr7pEJyKIP1w9ukIMpAEe1OEE+aR7X2GYnnaOCRwY0V+cqm1rtc
	 P63E5C0VfNDdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948F2C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175182059357.12749.12117966207459321100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e37a9941f94bfb953619f516c99d1b20ced4d8c45ae8aa2b60dcfc0157204bb0
Date: Sun, 06 Jul 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751820593
