Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BE391CA80
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719467663; cv=none; b=FhwyMmPHY3bFQhhSTaoxRFJwQ/ywoXt+u45Kz20HuwjZmve/mYQ2bBbGsUUpOAjkZ6l/kCViG4pIxNqGAS04OdDTXiotb8IBg93iGwEISP7Gx9IYaWzrx6otCZSrLrODxRKk2AjlPq4bkPvU2lCeCoNNgYOsSGl6VnHDMtn7Gbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719467663; c=relaxed/simple;
	bh=0d/bdA0N/Um5IBIyzZv71H4PuP8aUzq9O629LAM9KGY=;
	h=To:Subject:From:Message-Id:Date; b=pHNj2mSeeq1Aoa9/dR8A10P1SBkx2KG96n+Jled3Ge3JD68D+h7cvn1KhxyTPNB7jIvkW9gZXE7RGWPDx+CO7GdySCK/n4gW1+pm2ksur+Rv7Ecqz60owhGLtbhcwgVTrX62fidMt86TODLhntWiIRc1N0mdaLsr0PfLvrelfmU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T7dUFktY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T7dUFktY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E67C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719467662;
	bh=0d/bdA0N/Um5IBIyzZv71H4PuP8aUzq9O629LAM9KGY=;
	h=To:Subject:From:Date:From;
	b=T7dUFktYD52qYj7RvGZpokdIke+9mgCdVXfgkEF9M5cLCPR9lJh3ziQj1XfwzihCr
	 jfqFRCNcvFbUGj7qJ58D5T5nlPhup+/tdas4UPU0UkSVX/UkLChaMerXRI52Xr5Ey3
	 5x0gXiJKc9OiclQsQhp9XMtfHcXbJ91zuiQfz0jNc89Oz4pQ15vzcGYwEuFJx7xCY4
	 zOCAYi0mwvw8nlKq/o4JwKi3ohG4a4f57lwAX4dN3ERK1CsYZK/fcwh2gMNYsDCZ00
	 DYMzlf+jUa6im+ItPx297BulWm79+jkW3C8/wiYSx+9PXg3Yc1Km8MX13ZcMEGHPUO
	 TwRZwoASocfSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEF78C2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171946766283.12062.18211544157158294911.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efafb08a689652d761b814c12a42e5da41ec216cc95750dc06675ffbe9917ddc
Date: Thu, 27 Jun 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719467662
