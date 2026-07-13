Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5190618D636
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783970314; cv=none; b=f4baWaciRxXeiYQWObw1I72B6Wsby0i71ABYKrra2niUdTe29tbcNpSBb1qkyiOd86SL43WMAIXx1xCFiav7aXAhbodSretffx4hkzL8kdbIqp2ZuRCom9HS8B7Vvrdrj1znwQdR42Ya2RTfEqacfP0m0WR5zozoXp1m6YZf7wo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783970314; c=relaxed/simple;
	bh=vWuKLHHbcypL5OQgrv1B8DppJjgNHpKFquMjW1KyCaE=;
	h=To:Subject:From:Message-Id:Date; b=ZV5HOGWLtQMc3piMU6O7ob7Df46K0esz6tPGum80D12P+etHUsPYYaZJRKqQHTGenvLbNMd4C1gw8626SIMjkMaEzh6xWJmlM8eyYFI6riMm8vqSjyOZhv2ZaWme1kInZgYt6x63gR2qZhmUgt8/mPqvWXaePrxp8LX7gdENiq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gyn5+hcC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gyn5+hcC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB435C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783970313;
	bh=vWuKLHHbcypL5OQgrv1B8DppJjgNHpKFquMjW1KyCaE=;
	h=To:Subject:From:Date:From;
	b=Gyn5+hcC8BlMjP8gnHWvEHOYNI2pQnFpIOqDHAOaFjCctLW2Gf56boDdehgE0a94L
	 CCvcHHE/JHyWq/HFfMfoWstzpu+paMzwBSSgs7CjD1qAr5cvRdDEzwJ4jU+wNSOJNi
	 IQN/2pHW+mi++NNIagoCg09aq/ScLHHHkwlIU2VPlKzEgT3vDBrJI3BsvVjhcpIUEl
	 RtB0EpsvTDo6+OLsrg9IohuSEW+2H7eysnNPuDyEwgumEFgXpALfwn6i0dzEOAISfi
	 W5tMtMLszs+QTb60nkHubAfiHcaCeVimx8Ye/zIBOBoeXu7t3+Jgmz5IPNUjqtL0Jm
	 AyVMATj5JJsyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D4CC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 19:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178397031368.742.4372948081899172647.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53273325ef68a0a896733a3de68e812a7f160e999e097a21fc115c528732e89a
Date: Mon, 13 Jul 2026 19:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783970313
