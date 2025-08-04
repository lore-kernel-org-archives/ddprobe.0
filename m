Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BC9A1A08A6
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754291394; cv=none; b=TBAHApaF2cTzqNswOGS/iS1tAg60DoRmcSSwxiW605c1apl1SOHsILVuiZg5RLFNqcus/dpYUlZtNilogKAvtJMJk71MoVP0spxs1+RML9FJ48n+35z9heh22Ps/7ES6Ky6voZwSnx+eEAL93bramYNWsrnVienkMrzbdO6HuN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754291394; c=relaxed/simple;
	bh=6/ZNblsQ1y4Ub0m6QMl5vnoAlHnSja7m8OnSL9fa250=;
	h=To:Subject:From:Message-Id:Date; b=VciZf2TwTYE8SaG8erzAB+HnzxesAKghpExFrGIYxmxxppLqv7H/HGthx3pnVor4o2U88h1TGRTcLIZT7jotgquteb72tD2Dn1NMMl6Td7bNwDCS0OdblXADnLM2pYxnBTDMg6h9UvOnl4KkIf8kCMkhIQmDWK9axfuMA4aa5jk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q2gS1u3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q2gS1u3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F89EC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754291393;
	bh=6/ZNblsQ1y4Ub0m6QMl5vnoAlHnSja7m8OnSL9fa250=;
	h=To:Subject:From:Date:From;
	b=q2gS1u3VBpMZfxRDA3wJ+aHjFPSLQbEHogBASIYhf6HEcfd4nBfhbLJ7Olpc/f/vm
	 7P17Ltz7EMZWkwTqsg+8PNDez/2t1NLcGGrtcizDX93BJs+OAfiFR+PVo+KJ6lK8Bq
	 txpCKZ0SLaqAxnIaZd6Acbuy/GlMC6SBXD44snOsKiY2X7Vn8YWzf1rbPl2QZLr0Iz
	 99Npav+spBv+SeUDvO4NkvT+bbp4iS6GlwJuqNoNJCJWUWiBUnAr7DCGmD6lswV0Mm
	 tJIiHDpnEpGlnhIY5lAO8PObvqHEZ6Wmg5AOmSUoVUZWr/9XD0FVOJzBmbuKmlauCE
	 iGeoz9ulCEB0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91672C87FDA
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175429139358.17186.1560172068689992105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32dc8e4494286ad318753317a76a5e5c0b2f73c6fc9a8315b5815974c83600e6
Date: Mon, 04 Aug 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754291393
