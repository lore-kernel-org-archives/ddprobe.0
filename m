Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF6F2C21C8
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754947794; cv=none; b=bPHy3jaLG7huam9qo7CPbTHrU7mEzt0Law/hxt+WMlpIt1sGlvTvkvLa0tw7u7W+woBqNGpn/TZoztBVv88kZXnBiLbjJUwae2hCASNyCAaCr5+ZYbBnLqAQpGL4LO4oUM3gU8NUB8vm0nXEHl/bRPXzeYHGENb0lqUuOBJgHkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754947794; c=relaxed/simple;
	bh=tUBqbhfYOnLWOdY1tmAcmoUlPsh3/WFc9ByegEu3CyU=;
	h=To:Subject:From:Message-Id:Date; b=flAGu2xlR/LqQvqR2uo/GTD4J9WnnOjUBEOfFT+cWUl09wmSS8bCFaLFV0M/6F+t+SK2PsEdyleA29KXhDNbar6IE5HKEjiQBoZ011mv7HJMEbVBF11xoUKq5umP1vHYvN0PazwZciGDk+/0A9m4BXk65LwPj0m7LVCgQMiZdp4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KSlyCCDI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KSlyCCDI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C6DAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754947793;
	bh=tUBqbhfYOnLWOdY1tmAcmoUlPsh3/WFc9ByegEu3CyU=;
	h=To:Subject:From:Date:From;
	b=KSlyCCDIv51v197UWLCHgigJpHeNmNhyuxMeJ4LgWiVbRPyIUGTWgNibCpAAo8kyi
	 RWkYB4W28vXAvCgw1mq0WXGqBj0ft2CBedGhhiyRz4pZozzXNvwHAKtxHz6Icj78+y
	 9heUwINwa+UZ5ah1+G4z0gGh9iI1WwF31cg9hRhCWt5/nvp87aVxHB8+yZ6E9wUIWf
	 h7Tzsd5pRFkaJ/ihc7aNrdvS8ZU9xUHaiSmo66q1E1yMSsDElHQ4vFdjAU/O6OEqs/
	 JsU+x572rK4Zd4pdMGdC8jMFVCjIW8hy5lZ4gKwDBrcbgEt5hBPvBecwepohbN2T8Z
	 jmdAPNIhmnkPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C93CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175494779359.10638.4892038927788561055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9137450d35acbc4b610106fd8069f5985aacb60bf936d416f5484a5a2c056cc
Date: Mon, 11 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754947793
