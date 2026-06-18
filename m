Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7895C1C3BFC
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781744794; cv=none; b=WP8I5SuYqJOes3lTgxI/7c+bZa3sMkpceyp0+caEGJwl+oBim66OCH8NzCuvHW27K9rDowvcAjah0auTzfUNf4KCzkZ4ZIhR5oGQ++Q+rn+VDprMFv4XxhBqOjyorxPvCoA7fNJv54tzXyUPt4OQjYDu9TBCd4W34bYU0zL1Vn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781744794; c=relaxed/simple;
	bh=gouyCys2D24rFbl1pw0BcbUKPcDFPzKjCEMCAn4ivfk=;
	h=To:Subject:From:Message-Id:Date; b=jEvcitB6c446EuwBifWexcxdYlmHzP32D3ZfLvxV4YjwqG2ePXUfPu7cS5v/TjPYqz682EAwKN5GAqyAqbEx2bjHNXjb2i4Fy9xbDOctG9zbeCcOQ3/Q60r5WSRin5DJkldQN1Xw5S2Kozw6BpmIZLBC/CndxL4Sm3l0AxouDnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eL22Fa4B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eL22Fa4B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D257CC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781744793;
	bh=gouyCys2D24rFbl1pw0BcbUKPcDFPzKjCEMCAn4ivfk=;
	h=To:Subject:From:Date:From;
	b=eL22Fa4BkvvId3qD6y6ywZwzmVd+uQDAkn7j+prY8wrulI1Wgj8ofL1O6GKABAg3z
	 vaIo3S+zcB/jIza+uIFhn10uq+x6OlW79M87g7qPkVmsjFb8Nkv9/Cq33HYpwQlhsp
	 tMoLwxo5kk1h3M1TpT3N+xBTy8YmWAIzWJgxOGFqRIOVU8GYrv5UfEnYTvo3lMec6G
	 JGTAxdtGhqp1a3wjNcG/Xks/bO6V0DzBduuW3FDq6vfxRSEua/6tcIzAH8+yZWDvRT
	 arPksx1/uhgIgRV4CB255odWWRYwXPTLOSQgKcgo9aAeeq/7+IxSCs8iFvEFmPlYqj
	 qYBY1S3ByXhKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF915CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174479368.9474.13193672958554855953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c9f05918beb3d76a738d9fb7f6978759303bcc40fedc88b41fd61a07639276b
Date: Thu, 18 Jun 2026 01:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781744793
