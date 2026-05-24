Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AAE225B0AA
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779602554; cv=none; b=ZAQ8Ag2SXSGfRoBtvz4stMXus0UNBYwHHvy/GSIl79OyUksYqnwe7v/CsccUCnpcZT2i2ty++kpgMC6LoAWJ+dliDYseB1xmvGXgDWqPNWIqIj0Vr5AxrbCYcn3VR+0uDqoS09ijFVAKvBlTCZeZwgfL4tGS05SEHGw4W1vap+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779602554; c=relaxed/simple;
	bh=fT02+IlzMeVifuilruSKX71SXzkKzXMeYkE6Ihblapk=;
	h=To:Subject:From:Message-Id:Date; b=Dprj3VxyaHa0nARZXPRGdzl0Y5G3N2c6bU2/nx4nJgkF+li2O6QJHnFXOsqfG7zrAM0MK60LHaJ77RSiJgWU0um6Od+jr/W5jmHy0K5+Yb3RmFxZUQqbPYY0+HPbyS+DA36WCE6rWuFPIO7LCUPWLizfkOBT9mRE7KKrj7LuFco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UblgtCBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UblgtCBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4AFFC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779602553;
	bh=fT02+IlzMeVifuilruSKX71SXzkKzXMeYkE6Ihblapk=;
	h=To:Subject:From:Date:From;
	b=UblgtCBTt4uy7PZtOmungg0EtUn6ec9voqUfanYvrRNB+d0EXmLHI2pC0DGSoY/K9
	 jL1f6LMztkYwyDRv+iB84isaLZhZcWE7BLe5Vh2cAaqe3HMhWlLASX8c1bsOyjtXKf
	 VJajYpGjNOzmL1kp72+luIBq9A4S4shGwvrg4f4FGnnk/0WB0dy08D1D4HtMcSOvqR
	 myqPQdzHOl5e129EC6BlFIGuKH6PW2bVFjQd912NEGbHXvmcpmtsT/Y66GtFpNZxtM
	 VXeXTZAws7Yo9R98JMdfeCLqZNTHGlImWKtXWiwPwifxzw4ZDfWESddXVY+30CB7y4
	 q1CZqL+NNODog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B762ECD4F54
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177960255372.22857.17638379753824961466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 08fbdd98306c2ef91416d5d4762d05a84d3442ccf8b5a9c19450f3c3d7ec0bb3
Date: Sun, 24 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779602553
