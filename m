Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417A51990C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755598794; cv=none; b=TIko6Y/Y8RvfIle3+qta9Tz4T414A0MI6K1utP+MfUPd0H59QSmy1F5SvrelXBGjV3/lNWFqxrfaoT8PoMbGksptc+Eb1gEH4GE8B8qpS2HyCQ3PlGV7huZCaajzV0oW+GD7YeEO5wbvX9sGWBiEAc85Gj71Q+4+4bBghq9fo88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755598794; c=relaxed/simple;
	bh=ovJ/61yOo9vowJRl8p21y+eEfZdcMtIAW5K9Kjzqm6o=;
	h=To:Subject:From:Message-Id:Date; b=EEJ74kSSipL9c9VRZBcnGqAdXi/4kRSHcWgOzL0PcBDykxuURO5I3LIgXkr7ut55ARgUacfgmUnsFnKPFPeyfYFmugBhZqT3dqCFmvwe/ljiBc7WrWRUGVlEpRoPU36HoftKVnanazHwYzxUx5/NqBPX+mL4QCO/8MpZm2WppPE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=llRAjkwT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="llRAjkwT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C68CC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755598793;
	bh=ovJ/61yOo9vowJRl8p21y+eEfZdcMtIAW5K9Kjzqm6o=;
	h=To:Subject:From:Date:From;
	b=llRAjkwTasJfrI1QTNX2hbwYR0zd6GaCuVQxdOB0CFABPGWyWgWVzOCt3mG6tSFYQ
	 5nbFa+JbCJ6+rkCwU+svV9Q8mymj1N2hFH4V2QnIc11seJi6LeCdoDrFh7ZsPEb3tH
	 mtXHCYGcpYX+dMVD2fC7vMe3U55+r2C/6E0mEmfH8ALVrnPWMGvizdEajKO6iAPR6c
	 wueT4yNVj6uUpbwRASsg7j5FbPzcAUwe1k9A0bVelRMAtiX1huBM71RK3OrVHMgnwA
	 WKlTREwtkjMCpM0srf/NauOr64I6EJB4KpiI4TdGJhox6FFmR200tzGBzxWkWJpqHB
	 FYKa57fgEr/0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F1CA0EED
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175559879357.26105.17615643105462597131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7aa080bd3bbc88582556f131cd2fa90693e9c27d131bd432565373ba815b628c
Date: Tue, 19 Aug 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755598793
