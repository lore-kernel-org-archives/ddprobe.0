Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3707C18DB0D
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753853994; cv=none; b=NRS8zzsnBpj3nwiekpr7TrnaY+tt//j4Spy0450W7QBxdWO/5jYaoZhXTCOMZbu8iWGnPNS2j/yg7Dss2MMj5JmneE4IMZiErN5rhRsIH6xVWj2mja+tx6Q4HzTs1wqXICr8VFQlTW6d/FjeBGZQi8xpciI2XTNx3FUZ0qJ0eB4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753853994; c=relaxed/simple;
	bh=RfokROHrtpxQNb7g58RwJmhTHFino+tW5mdRr3mRCpU=;
	h=To:Subject:From:Message-Id:Date; b=Fjg+s7d9HRf/dxZVCBg1mtw7b7KCaApYKArKJxNgYa/p8WLHxEQpxJFgopM6He6Wjpo8vlldME54d/Uz+756tCt9NbMHzBywzOSfXVpZvqUtJY3p072zfNe1JjAcvLv5deeVvKrtO4bxldBbPasFTV323n3g/7kxrWAnjKq/xUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dyN9wuwn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dyN9wuwn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD221C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753853993;
	bh=RfokROHrtpxQNb7g58RwJmhTHFino+tW5mdRr3mRCpU=;
	h=To:Subject:From:Date:From;
	b=dyN9wuwnetEEwcs27wB4Uihv4oqEEc9mGMbbno8QdjmyRQ5S2Evxsyt8qdJqZRlto
	 FlWyWzPE2wfqBWCh8y6/2rkVolJEv7SOfaRSZo15JtDROclU/0muyJr9AgA3nd0p8U
	 x3iTWVY0eJFxVCuS/Lnj0xiOWseTDpIUK5f+OFUFjhx/o2pVP1qFm5X/Qqp/szX6B4
	 pV+2AKyPzn0bCTBhnlIp2910i1Z8QRq3d+X5k5tHhLA+gGyRmE0U4O1cxi9rrI0Djk
	 bqncPY3mhLtAuJko4gZIeE46mACw5/z0OiZcFn2sAX+UW9qz6btlCAVt+ONQgbdkcH
	 G7jkPdJL+DWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B86EC87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385399362.22472.2252941994869782341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a073259865eb6def1bdbbde56b344437aa4f86fb662e1b0412033af2c2abb82
Date: Wed, 30 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753853993
