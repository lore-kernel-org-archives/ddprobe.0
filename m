Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3AA283682
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762933194; cv=none; b=ZqCyi6SgbE972hDIz+CqrKhy93BQswL0OfgAiSSScbngFUcQKABC6BqNg1VRXQG9erDZtrCnTpmBZz5jrCdS8s5tbYEmG2nH/Y7XBA8ziTLZSX6O8T3O/Rp9QzhNWoX7vCnbzv0OU75E6CSm76YpbbVGkW76togA8WLDge2yf4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762933194; c=relaxed/simple;
	bh=/DnfCCOBQSP+hw+3IemSW8bqA+1oaVe+Vk0jdI0AsNA=;
	h=To:Subject:From:Message-Id:Date; b=J8VxmLUgdgK+5RPpCzd/JAqlbpC/EdTGc1TWo5RXW40D0GJIxMjrXqmt1UbowlFrPuWN4H78DjseDtWfpSBnakDu12lt6KJe4bqvt7f4mCf9t3JaoC4VZcSRum/DEC98XQBy6ejKHqbHgx0/3NDZC3GksrTQpsvejRDtnp12r5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G0jwiSgH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G0jwiSgH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BBD1C4CEF8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762933193;
	bh=/DnfCCOBQSP+hw+3IemSW8bqA+1oaVe+Vk0jdI0AsNA=;
	h=To:Subject:From:Date:From;
	b=G0jwiSgHJ5dxZd6ZA+8SMjcrSgkus2aSUJt47kRSyeABSZ3qXc48BuYuJ1RXWH0jH
	 z6GuSfSGof0y6JdRnkxFEO2Dj3pUUZY0I7yPKfHZCt3V8dNJ7EO2mMEgt5yLYJMh6z
	 mXCEBmLzpPRbFNqAuRLJ1lvQro5/5kZ5bAd+iAdXuJkGKO5XBh06ISOmTz1l66O6tK
	 YKSLAkk5fnWjDGCMEOdgXACdFhkhiqPlAybqySFLFafpkhQnuui4QZqsGf1neuyT+M
	 nwe3azwglXwmG0d3FQfNqWCkL0wiyihwE+vEcgXyPi7Qt8aTUUgFVCpBfIC7dLRFxf
	 VlwY5C1BPCqYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC24CCFA1A
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176293319358.31384.7856894468524988642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2be9c32b48d5894d8eeb17090f56ec90366b8813c6e35c5054d8bce1d89c5f6
Date: Wed, 12 Nov 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762933193
