Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 752D037E5F6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784062714; cv=none; b=hlHoSkxRcWCExc7TF36Gtjy9zmlQWIrVRPNWpA+Vz73qeeFV7rj8/G+RsExNCEaKhJABM9dGpO/e+0EBbg+X49UITASzbOnQRVPHPqFJvbrBVC3sR0y3Bac+0iqyEwMH6JT7LMOELQZQTnk3JWXRd2PmXew55C09IFS3Lstckz8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784062714; c=relaxed/simple;
	bh=Ox2q0LUrZEdwVnMIGo/WVo2jstLoOwlcqc86Fp3Wk+g=;
	h=To:Subject:From:Message-Id:Date; b=WipR9hFbWkggwBkiYIJN/HnahUbICsx/srf+AIZw9nXmFG7bApnuSrwwomXJqeq3KFISizE9IeCKko+694pmvMPq5zRMCSpJ2gMFWf1MjtDxg3tDmhMXB9BC6Z0rcIzdMQ9Go4F97Z18Hp4gRH18eV+9DQqVsq6raw2iWFiE42Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CCA0cFMU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CCA0cFMU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA601C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784062714;
	bh=Ox2q0LUrZEdwVnMIGo/WVo2jstLoOwlcqc86Fp3Wk+g=;
	h=To:Subject:From:Date:From;
	b=CCA0cFMUbv24ZOLQQzCDgAQxMNfDb+vCw5BB5WevWDlMnH0lFOGlszRFtcWMpy0nr
	 ccgmJES8ipSTZfvfZNcIdF23/Me5exKALszVWHqEXGb9NA5I8Q19Gl6LmpGA9U3v+q
	 4yksKk1yxMii5SK5Wr+/IHXq9WhnD+yuRIP1D5lOOCLjb8ow/NRg+mJhjJZ7i3xRXb
	 H+yTCIPNiXuJhTG/KrsBfgxkJEdP/hfhFf6I1ALaf1ND0esyJFfn+K+1wYM1jFpI2c
	 SOGKx7ucMBFTZxUYHkXp3yqmvt/FeW11lmAHaAhuvfKgKyVPyTcd1XGeE6DVFB3Iva
	 Adg86xvfP1SUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDDE9C43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 20:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178406271374.22425.3861137146364339798.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a64a6a16b2d87ec752ff462059ee59b538916ed53cb9daf9f7afd6aba17142
Date: Tue, 14 Jul 2026 20:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784062713
