Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE2B1553A2
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724884554; cv=none; b=WtGPtSJ7yFTD5zfPR2K2TjT64EH2eOIMVaAkt9RPjgafU23ZfY/sHrr4fF+z37iwasf/BFOjSxl52fxYdIFxzpKyxhxvkmmZPfFkzi/Yy+PZ4ASBwEWXFbq8ha7LcCEhhsMuesWWP9MaKxXk/z8GchZhm0gJAXZ5go2hqsIdYeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724884554; c=relaxed/simple;
	bh=Q8CEYgMwujH1VfgoFKCiWAZgVkO7I6Li4EkiIa2ZrFA=;
	h=To:Subject:From:Message-Id:Date; b=hngqBbmngVvg+6obndANsNqtX7MsFdSuHfOnEvRKIzLf/MGwM6jLCwz84izYISmkeE4/aDta1vDlMBi+h2u+XbogE6s8m72pMl3OM3g5ptogO0EpcwKItMqyY3i8IG7JHxkK9Xf60Y9bX6OVZRsrc+rtd4toEKcux83LxxXnygY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kc0MSx96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kc0MSx96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B9C4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724884553;
	bh=Q8CEYgMwujH1VfgoFKCiWAZgVkO7I6Li4EkiIa2ZrFA=;
	h=To:Subject:From:Date:From;
	b=kc0MSx96zBZInRse82yZZ36PhIe0FCvoTrYu8SpkK8eKGUHasQxPOT+a6I+4UZ+TK
	 PhcpuzL67Jhh9OlXc5pN/pECpY/TZC1tLMAuH1iPHVyqsmfx8qSCZ8XKNCZwholgfr
	 sHc8Xwilj/2UqGF17cGy4n+6eGTEQ5U8yH1zZV4m3KMT8svyHMl67jMPPi8EZySnsa
	 oD6G7qFGgUSe0If9ZvPaTPfzsKcH7RdhYdd+SqahpoEegS0JVXgf3vUAsuyaxqbP3Y
	 BJZIIpO0Kjt7Pob0/oaB/hfnn3MOHjLUX5CpXxhMqlCC91HiXuEDHrndAKTGWDjkWZ
	 RXFeu9NbcKNIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A69C7114C
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172488455359.28599.9443354545704400293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 452716cec47096ba0e32d21931dfc768dcd6877c16234478cc27add9c6a163ea
Date: Wed, 28 Aug 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724884553
