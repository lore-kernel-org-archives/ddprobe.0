Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23B952AD2C
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757878194; cv=none; b=mMaiF4aa0p96PVj0wEom6cFVIjgSqb1ASaX3ffGLBrko9Ttk0GaEjtqAaMeQtCFNpg34o9EO7AYDOXWYrzDkGtW8QboKDeYJftu/mGcG/OXjxn8LB4lrRNLLTjUFOSO7j95TfHYHRAAjgO0S1DR1G8Oy73v5+3Xy9lKRg74XYks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757878194; c=relaxed/simple;
	bh=tpBDaLMw2l4YZT0mrHLEvkikrCuqs39HXIAM9KHINMw=;
	h=To:Subject:From:Message-Id:Date; b=P1ljrq56x/P4Z4SEMTTETQbenrIsO6PSdKNIthHbyJKRasXUNGIVz8Cxh0ByH1BQCiJ8o6POMR2QW9nNl1PuUf43DWxEHahf/EGPkzolmEMzYG5mjMdCNL/+FtVoSDOqd16V/oVSrZ0tfQVMRo4TkEFMm1nQ2E/j09CeHt88GaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8AhT1Mn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8AhT1Mn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6029C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757878193;
	bh=tpBDaLMw2l4YZT0mrHLEvkikrCuqs39HXIAM9KHINMw=;
	h=To:Subject:From:Date:From;
	b=Q8AhT1Mntmz7OWvbyahDNSKpWtPrHewuI5fLuawKGBoIHVbDZ13SBybaSZXTcF1UJ
	 llEYv0Z92KI0LMs2omkaiA93lnbnay1DAA4nhU4bA0bHTUElyP9mOVLGHXlpTF8anG
	 kGGFR8MQY4iheiPIXDvGbqjFOTHDX/RLKulZKwIXVOSaYCfIZQ/fh9pxy69XV/tPAQ
	 r0MBNrlNZ/u/c/DXNTuEVyog+fnr8TUEc1a7EW7cMYLnqw0wEWKoM9YJO1mo8ZzJbp
	 sLEiMNaUSR7vdsrT3Jk9v0q56/tjSFdsEXz7hy/QEDZtSk04T9QUvr/NAPChN6ZaJh
	 1tRtvo3pdmrlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413DCA0EE8
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175787819357.12577.4158022954196360274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55f58435f7bb743cd22ca323b7303e3c40c8e596adff8cc040ac296fefee2d13
Date: Sun, 14 Sep 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757878193
