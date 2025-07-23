Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1570F27FB1F
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753259995; cv=none; b=hPPe5Qedf1Hs96Jw5ApOCKIR9Jq0jmBgbmj6geuSjh4Qpapvm0sUx40VOJszptQjGPFraX/PIzLAugK+KWFRsTGeIge4X/BgFYFLAtIyvqP5c5WdvCkqn/h3crBElAr4ZTQa24HBHYz1/wRIYCKhfZkhF8bEsCGMeaOgat4t+8o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753259995; c=relaxed/simple;
	bh=4YLJ3lY5F+MvDEbWqnar7t/0nXm4ayp5DowVJSRngYY=;
	h=To:Subject:From:Message-Id:Date; b=ka2JJdUM4tj+XfOXq42gS6MOjsJ9PULTgveQt0w7s0cTBUoNB41q2tvcJGkhN+7lvI5LG8yYKHfbQb9rjE02YHpQ4rZnLs8bDe3X8GgHtrKD2CtQyboqxrwxghwPg8hJ4gdW3YUoXxBevgx4tbTa9VxyIWzEXCryp0Qfj23VQVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lRoQs9Y0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lRoQs9Y0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF91C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753259993;
	bh=4YLJ3lY5F+MvDEbWqnar7t/0nXm4ayp5DowVJSRngYY=;
	h=To:Subject:From:Date:From;
	b=lRoQs9Y0bMSniKlbs2H8mEWTxDCNMv6ss9H2AHHy+rnhO9QIt7lvf0Neuny4PXDqT
	 a042/2uUsHKMDaYlzmzBe668uVaEvuuH/Ya713rQG/tZo/m87pQDGbL6bZrIfE+8Ph
	 KbPASaq2nMVcRtlVPezSJ5xn1scFRQj8WpGoLGo0MESgm7LOIV4Gjjhg4RsaIQ6Ba2
	 zRr0D0jS+//uPoEOArm0jNUGHl4Vgn+PxwaU944X3KhemibjOEikh6ffpLOQ80SKgQ
	 jvs0oqzE5bWvGVjA4rRkvjmeecs2XEY1M+CiniKsef9mqxc7WkNegNqYouXYI72V7r
	 ySAHzf1Dv1iQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB37C83F17
	for <ddprobe@lists.linux.dev>; Wed, 23 Jul 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175325999357.2424.15485489014059484271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b13bb8dfe260d0170f43f1f2e7a42be2fc999d25a9ebd85d93b146f1017dbbd1
Date: Wed, 23 Jul 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753259993
