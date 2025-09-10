Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBD623D7E6
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757536195; cv=none; b=mnqoh1J3XEzHZla4ROOjz18F5sAgqih3TmB+zd57KWrtuXsfyoNfsWSFaYtGFsF7UStb0l4xXvaQaWrkUjPNK/WiMgBuDRentZq/2g/iLdI6pm2JtYkZAPuDXQbyy0xtGugfWasQmwli5YehI6uaSQOt8JwzwI/1x0hxf4yTJJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757536195; c=relaxed/simple;
	bh=ecYSXem+1KlWPxZuQFbTn47VwsgJIJTuI/eoq5gSKEI=;
	h=To:Subject:From:Message-Id:Date; b=nondU2NUK1LrFMFkP/KdWRLmr/fvO1gh/vOj8/4uilLIOwFFcWSPR4qRLitedwhclBFWIEG4UPEd9abw035OJ2nGhqaK5sZ5CktRIw75p5Hu5eiOIUwim0pQaVBibP6fpjp4DNIj1k7q/to8K3kL22O42UTDhOGpslq+747iVDY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mKY0bdNe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mKY0bdNe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16DCC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757536193;
	bh=ecYSXem+1KlWPxZuQFbTn47VwsgJIJTuI/eoq5gSKEI=;
	h=To:Subject:From:Date:From;
	b=mKY0bdNei5gdznj+B7QWS1kc3WJPoQwbrkcy17bf+hoMdUkHs580ifPySq39Zg/zF
	 DZCz0rSUlyloAIYnHhxmQnj0MzADMEbcHTyYC/iPWgNZgrnytyqpu/08Zwe532Df44
	 04/hxpxLRLYvo9tZw7kxHehz4BOw6CwEmJY3s+C80AKwEFEdnwqGBbmC35V3OXXyTQ
	 +0tyi1dEABJD/Rqxxg6qO/GJ0fkbfSvTHmOw/EWEXlLClquDksJHfv7vrdL47VFsD+
	 EswwLi0fHWTVTbRoqldf1u+z/CyVtewNmSiRF0UjU69ntAP6/o9JHJG4BkHUHoiq0b
	 15+yda6kmzCjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6CACA101F
	for <ddprobe@lists.linux.dev>; Wed, 10 Sep 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175753619357.717.8707505209133799416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19dbcb6b58dbc99b898bfeef956d7db70abeb914e916d998c83bf2c439de0f23
Date: Wed, 10 Sep 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757536193
