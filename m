Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12F3D21A92F
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765329174; cv=none; b=pjoXHf9yC4lh7Ld3+RmKkdv+UTXDyGnmfk1q/YeOYlFxVSGUgcA02FUoWjCO48Bv3Lr2eICC+PvFQaJofrqQ4rCNB0BXK8g7bNNVDpcoJfeOLOXPZ5r2i+BRb9dEMHqiFU9LpDt0UMbl/Gkaav1yFuWNaZmSCFVuNXPcQoB2b8c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765329174; c=relaxed/simple;
	bh=PRLSY3MTgYjiqZjJjR54iwlQPDBojGMnqxdFyXB0YZg=;
	h=To:Subject:From:Message-Id:Date; b=P40R4L+4l9qV7UV3U4pdWEISbGLtrX0kpBRUORs7XkqA3vega/eQ7BY1GNJWDVQvHzeyoEmFz5G/0DHDrcxGGJ4Uwbjd8U/FLIOHwh4cTcWnTeuFRTH4tuDpOZUsdj89RV+L2jabM+zMuQ3KS31IBXtQBomZbqI3KvtE/P6gJgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SUKUEUF6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SUKUEUF6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE7EDC4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765329173;
	bh=PRLSY3MTgYjiqZjJjR54iwlQPDBojGMnqxdFyXB0YZg=;
	h=To:Subject:From:Date:From;
	b=SUKUEUF6Htgdli4qJDy3gKTbDfb2NgOkyg/t95qWuGissVDmv3Pe0kQvyasyMZ9ZZ
	 nXUvSQhPc8bPUc7EhGfNMaE72PAF5he5GbzcQ/zIc0IbBQ8UKiq2whVgx+5eyFFMW3
	 JUplnidlC4d/CkuEpR/c6v/Zdic0/mE1VOu0+khSr6b2ohLdcdfvBKV9Z9bQla3hze
	 qEr2lopiT2VMQeB3gwbP5y37DPwR/Lm1uov8CyG6ubt3fM2QKZZskRrCOJ7gCsnY5V
	 Vx6MiPrXcZXcc5dmtCu1AvizMoAGNHG8ATgFqFBWmTVJUcb64HpTKs4iFHwsHWsS72
	 aur3FMpjrI9Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A65D3B9B7
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 01:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532917358.6448.9168550189107457966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ccd4b9d6feb2b241ed44631e675c4949bcd84cbb90488b9ac616dea5678fdf6
Date: Wed, 10 Dec 2025 01:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765329173
