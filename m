Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C7334D3A0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762023594; cv=none; b=tCXi8Mjc4oDGbIqUkASZf3hLkUsgaReaY1zTyFdcZe2sXaRYXsyvcfH7fnABmj0HIR96C6EeLCOiC/MpDKQ0I2AKPTe4ySmyXEr9oEctt6vysdn/wBhPBr6gzpR6wxh4bn8tnh6F4oeJL25H45FZMdaE9wq1fsZ6uNq8eZEdWlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762023594; c=relaxed/simple;
	bh=3YmTx0/2uV0pkzbJTDP3xEAglucxMfHONbBaoeWGpCw=;
	h=To:Subject:From:Message-Id:Date; b=WoJdtt05KukdvctRcKEpFxGdvAMzB8pwZWXXJj7i7YRaXhfgiW3jS6qb/yRW8FsYRnvm0BwkczkB5dUmPHmJSzAv86gCeWVJYoMkU7HqPKJcl1eqaw2D5jHiP3Z0jMsuIQ6y/ijSa69GjpNrnkhDVq6zvIRtWXogmXsYh9lwudI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cm+WpTx3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cm+WpTx3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9F1CC4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762023593;
	bh=3YmTx0/2uV0pkzbJTDP3xEAglucxMfHONbBaoeWGpCw=;
	h=To:Subject:From:Date:From;
	b=Cm+WpTx39ZixWSONawwYo9yZRIkAS6cOEdSuTqOlMXfq1rdGR95GtXprCaCWoKMmN
	 oQYGPFaapgElIDEvbTGGywA6FtlOo4OwKb/B5gTvEBHfoCmfDSpBHg3Lba2psG39Mp
	 4iJnyydMmlpwr8+SbTFAA34VzWvnDdsSElHIEZZNG/0LVGX6/IIH2BV5HBJ2ql6E/z
	 OANTeLRSHiF99/1Uuyu2MWgnZaVymoAUDakr5lCKlgFo5PS9BQwRPUjyu2zImkFMVx
	 kHpjppwbvINCrLHT1HygV53+a8oZiaB4WKnXMqtYr5/mrIvGjZQThWeyPCpzSkW0gw
	 WVOdAAYKGlARQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9486ACCFA00
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176202359358.26561.123070793128706657.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bddf17562438b8a1f3526d82b38abe63aa8f77ae521a4d288b1f0544bf58f86
Date: Sat, 01 Nov 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762023593
