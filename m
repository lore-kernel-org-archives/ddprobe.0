Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42ACA126BF7
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751231994; cv=none; b=V4Dcj9U+SoreNEA9sq/oLN42lf9/8eZTl0PG+OQ/rGY+ittCD7xkyBrbmWG2pW04ukhRr6fGyIfK9sD8OobAOIVRQbAvPvVPoa691MZVIfykjwkDD/FwDc/tZXoiklGhEwW4sbHIe9XljKfZZDns64vMNJNT3jjaCIGy4L2ksIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751231994; c=relaxed/simple;
	bh=ST9v0wyWyAfzU70qyTOOEj//VHY6G6Mh0lSTYAYa/fk=;
	h=To:Subject:From:Message-Id:Date; b=MH4kdi5Q2TX9dQ+I3evcx7ay76ESC2G9DWXDCET0yiLur+7EvxBv5ZJV0xPZI8XLfZrwOn80nbsSSg0xl9QKXRIJKNiUEKyKMMM/T2HpoPXRIvQN8FanS8PnHH7k01jYwYrQBKIZGscPGUD4v+3jrh9X70iKtazF8wK/j2pPFcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MmDf57NQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MmDf57NQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B60C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751231993;
	bh=ST9v0wyWyAfzU70qyTOOEj//VHY6G6Mh0lSTYAYa/fk=;
	h=To:Subject:From:Date:From;
	b=MmDf57NQI3gqErWkgb0rcFexaIgrXW/J8Q1Pxu0PaIl+WGD0BZTvzkdrSsWvZj8RO
	 m2S8S2g81sCCXncR0naVZ6+2iAf+56NEI7toaEMsVL1kxX5kxfeq0LOwLXTD6gDXg3
	 6oSiq3Rr/AbJbHLr2pruh2yzufiYCZcKRT52TpRE6wrV2LWsxAlBGqdLUYeMYyKAeo
	 hQUdYhHzUhqSWpq29tjl9F6hvY7FLJC92mLMJXx3B8pT0P372fOzyW2FXbJ30JQYsM
	 qaZtzpIpeSZvzml16TZaeId/L1R8bzu3BtC1UctRviSPoWzxaY6Ff7MHr65tnHFBih
	 +ZGFdLM0HXi/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB0C7EE39
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175123199357.20609.2390744708841905106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca5a4a4a0300a3026f0f7c41dec9577437d91896a6fa969e26a4cd1ef8f0ed69
Date: Sun, 29 Jun 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751231993
