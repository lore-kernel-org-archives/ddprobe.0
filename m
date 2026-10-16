Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5884236F908
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792190434; cv=none; b=MSCDuvmjYqABDRzj4oHWeGxAtl+SmDnLNcu9qQAp71BZBlNe4q170hmFA3aIJmgw312CVqzvmB6p2TpRoTgfMGYc1hdvjrGlo1S2tP4ywvA8RoQBg3J7RHNTMBudhtK00mqQFMjxoXD26hcXJS3iGYq69pEFwNjpTJiG5MuzASI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792190434; c=relaxed/simple;
	bh=ANQrBIaAEP8ZZbHI9/YzAXPbHo+fZmt4vKTtF7gRFnw=;
	h=To:Subject:From:Message-Id:Date; b=d54rlf2GYzG5FQGYrgAPDBZdPa+3rHo1obqqC0K48+iyp+5bt3WxoZ5GtFKMzrXKFQwWbzfaC0bWmpkI/G/uszT5KlnEhF5AB0xnuKC+lH51ucC6wd7LshSxTw74Zoy8rQdHaN2SlRnkz7i9Hwz99DiUGkP8WsJHqV+0LdQGRM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9jpUc0E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9jpUc0E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F38C2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792190433;
	bh=ANQrBIaAEP8ZZbHI9/YzAXPbHo+fZmt4vKTtF7gRFnw=;
	h=To:Subject:From:Date:From;
	b=E9jpUc0EItBOC51k3zQYlBTkCnRHS8++cqE3BLOj6+pT51mdCnqz8bbqC2OtmXjWX
	 DUJd7+CJiaXsyGByp5BaxnJ4hhbHQVkMIwupGMnVe7MqPdtsfgKi7I+Jb8Aov6Uhx/
	 7s111u4LM5jdWYHc6k09qG9VxxEBbBAqL3uCGtWWG0EHnXGTx1H5MEdeyNDTTCgfce
	 jhhVyofvyNLcfDQhAzn3n4qSY5M5CS0VIBYKmsEGVLR6EEW9RRKaUEcwMWDFQ8yEw+
	 Pf2GbCWbL4jwMZTiCiCREmrxk5zDgRW1J2EjaOq3PT33mxiCcXjkPJ3MASjZ3UNtzO
	 K2tyLkaN5vMoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3108CCA490
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 22:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179219043370.27180.8371705941725500682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9cd26bdccce54b2b24509ec5801dd4e95b43be85f95ea2c1a1d06d2531f6749
Date: Fri, 16 Oct 2026 22:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792190433
