Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F3AB1C84AE
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754495395; cv=none; b=WaF/nK/3ZVQqP3Q2PwciHMji4wOit0U1+7TxoriXAsbcWqqYJDkiXqXztqu9EiKDTSAMXP/M/W6ABG1Jo54QN+cAs9xibmD4Tt0W3mb8ar/bT9KnsOkCaBYJLjOMkPTGQkdnfyMOq45mmB1OOkyBqY5boVbA750Nq9vHineN7o8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754495395; c=relaxed/simple;
	bh=SIOF/X9T+7BBUD2gPy+5Xp7c86ecTXKo0Hti2bt58Ns=;
	h=To:Subject:From:Message-Id:Date; b=Inmmk0RWVXfsO90x4JC5VYE7/c48gGT+h71aKjEqSWZSc1qPstxUXRrTw8UaTO1zVsdYhB/SQf45qykOciIbFeK50LEXyxqwOuprcJa2RvBPwlW6+hQgHc0EWRmGIMnTpK1qNUc8A9dZeO5kM933GTbm7arQ8CucdBswtgy0KUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gcdXXq73; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gcdXXq73"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CD8C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754495393;
	bh=SIOF/X9T+7BBUD2gPy+5Xp7c86ecTXKo0Hti2bt58Ns=;
	h=To:Subject:From:Date:From;
	b=gcdXXq73aaKUOPzMrbD/qLJOcj73q+zRQBIqLDh++35zruu5kkgSqpMQ8cl7yBDtR
	 yVQhK7Ol2rml2tydcHIDCw2DFigOktluIS9DI+i9zMpi4axvmi2TMmI0JChACW+9xt
	 cR0YAcBBQw99LpHA/8RzZ5wEu5e8UGZO1iNNX/qmQC4OKOEZha34ho1xFzxAlhpo66
	 GuF/k3qMV/AqSjAQ6RYyfSFKaG9MzFJEdR+iZPVTmVpYkM9mdsrc+m15LCuuuOTvKK
	 AoUOfkPozqJY5Ief7xiPbO52oMGOvyoZGu7AfRKjcD5iDocYR9bUM66zBVPsl55hyB
	 oihP7oum+5Ozw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FFFC87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175449539358.29369.9539388595754690660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac10992194963e5b1a1a87e0e4fd455a09a6ca5d523d9c4ea68226867acbfc14
Date: Wed, 06 Aug 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754495393
