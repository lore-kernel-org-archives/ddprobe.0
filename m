Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17260218E96
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751200195; cv=none; b=fte6ssFYuq0gmU46GpnnyeYmVDxEJmr0mLaf4gbdtwrXAsLzV3gAcIpFedtLo287K1KTnhY6Q6HT+nza4dB2WSAPYLC8PuP7NQqxz7dcyjFi9jFRLM0XXJatMTVdxn+WrYFIlyii7MSI+dMmFgMvjJPizFRuemTNO3LVG+50NRo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751200195; c=relaxed/simple;
	bh=kiySCviYtzvyw/Enub6Tov1iqQtN5rrPcZlLaYYYkSc=;
	h=To:Subject:From:Message-Id:Date; b=di/xLbAhYeIh0uhG0P98xAkBxxbiAF3dotsIpl78WqfaA6HlmgWnpowO035J12fC1QbOu86iQ+/BeXE+a1paAnqvhvuuOYPQ95v6zbwjIat0aAD0EgMhVv3btHKMMaeGDMZaxVY903OjpW+/mApTWl2AVOvUBcx1NX8CO+pj8WM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GoenHHqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GoenHHqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F57C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751200193;
	bh=kiySCviYtzvyw/Enub6Tov1iqQtN5rrPcZlLaYYYkSc=;
	h=To:Subject:From:Date:From;
	b=GoenHHqvKCLqIbt7dI1RhmWcv9x1S6Ypie0NtQDrttfXe+bkZ1shjsxn5EGmvgPVs
	 uV/nCctb4Dah8ULeiwEm6aOVf872PdyibMzp5Da8fPxAcOrjrIdVvoK+us7BFEp4On
	 3KPPbZdBIqCaHXBc7bu5zXFrkOj0pmWv03bbMzVqOgwSa1XQGnRt/KKmyr6fWTU44p
	 Ir7MTRb7yzLRDfBOamNGhE+2GrONcoIz+Wu6KvHYWZQlfD6UFKBed2CBPzTjyCzZmZ
	 mnCbNxU45SFs9y0NI1t6dVCvb6/B6+e5FQkMC1UwJ1csa/oIU3rRRs29WigAydWNqv
	 X9lpbQO+LugmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93795C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175120019357.27297.2985768398917372251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a85f9178c66b9200b0333e36dd7538377302f3eae4426eeb1548c42a684e58a9
Date: Sun, 29 Jun 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751200193
