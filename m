Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8C1F270ED7
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769616834; cv=none; b=PRVXnN5apI+kYeU1eB1QsfWNzxHH3gpvfDipDgwpWELNQ7meLhlop1lCAocqXy18U7mpo/xf7qPeujOQWvcfm6xkT75lkSs1QGlrmTsUwvQA3dkwE2y9NkM/vTMZA7lMi4lXGYOIU1HM9HSfVyY/3DE6mdXnAMPnZSXQJ8jFSwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769616834; c=relaxed/simple;
	bh=X9OsYWmyAkdDZBrupkk0JxTAHKwCcT9nFov3LCmJADI=;
	h=To:Subject:From:Message-Id:Date; b=a+At7hOWoaDGegXS/pNefXuCtBjdqtD6158gH2ytXAErLuwJsnOaJaZdknWGnallHUNAnB/WEaa0/iyc9nUSzDFokOKeQPEij3nebOwjSF537r6FJZqmfSCCcfga2zWlTvjnB55aMkp8plBRYGTLaR2UFbAPp3PgE0bsfPROVIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CjJGMhw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CjJGMhw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD39CC4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769616833;
	bh=X9OsYWmyAkdDZBrupkk0JxTAHKwCcT9nFov3LCmJADI=;
	h=To:Subject:From:Date:From;
	b=CjJGMhw1jurUW343jYk7VUFJ18uE4on5leGuLUQ5VYuBdon5jpYYPYf1bW0Ayc27f
	 Nwx4yESUiPx4e6QpGw37AW2axLEFEeV5Xx9fwb78ZhusnsgudiIENSfIcfmmc28kYC
	 S0750ZC9/wp3T2N5LO0crLCtjmspc4rzbsJ2Yb1mKPpJKNeO5qMYFCg/Qx/M0a1MAt
	 vjPjLutAP5R7EfRf0XoELJqos4Yp9SwZ8EQb9zhdX4PwZclRi8PPbe9VaUduohUM4W
	 /zvibB+h0BA0sF09j7NfybtbyBudWBiHst2U7o4H58R4XGvdBehJZU0kWmTdzvdnkP
	 7VulJuaUpHzMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C7D1D3F090
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 16:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176961683363.12638.3796601374861146038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73ba72818950141432fe43d2cadc54ef84eea47fb98de5b4cc64aa6e9a77afe4
Date: Wed, 28 Jan 2026 16:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769616833
