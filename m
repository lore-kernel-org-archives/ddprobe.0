Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23EDD1BDC3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 02:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734489954; cv=none; b=sby7Qy7+9DFvzDwihxOaSKAo5Xtf9NG0LAk0PyTLFqjdhOhT4uAnhNYWdbZtMM0HdpPlXsbD/jEkXYR3VF7YdMbZZblwQ/U3fQter09S9GH67xAnMH2unDV0o9pu3LnvzVrvpRnQwSQYrPN2Wa8ftL16xvCCxK3I/cADK9iBxVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734489954; c=relaxed/simple;
	bh=ATlPK79JyOB30HZAXu4H2AkbmU0FBX66Skzc+A2h9y8=;
	h=To:Subject:From:Message-Id:Date; b=gJstT0UA9/O/vTUnfxaaBQemouxtrbIGGWOt/CeeJW1cDkCNVzCTqmSxWHGk/Kol4e1vJlhTYBGIfNev7lj+lB0evzgrvI19Ai11pDNmcd2u4aHqHGdcZdYULT76aLAj8wNloAtU1TLBnkcWfrrRUC9l+/1S2FhZfc1zro4NNlk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5Au+uvS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5Au+uvS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA358C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 02:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734489953;
	bh=ATlPK79JyOB30HZAXu4H2AkbmU0FBX66Skzc+A2h9y8=;
	h=To:Subject:From:Date:From;
	b=P5Au+uvSPV1fB7BtekhdyrIB+8ZxnsPmq2AA+HZBddgjd+OGseC8ZMU3xcTEB9MzT
	 Kw6Sy4icZrxVnKR9Y7gLEgmxG+4UIo/0raagieet0WJ889Ac8CbpvwSVwAR6LxMy7i
	 lvcxChnuzu//1N1oy+is79T0VpoLjwCpK0KYzeHUOOBJ8fTv+7ALhcayAYmNCkUlxH
	 ms8DaxP0EToDf4GBs7APwCrRk0C77Waor1acrMy5bPGKcOQ/3IHus4XukgkgZRGCQk
	 7FLHH5efpiF1OXwC9Fd8B88Y4NTHC4jctG99pPe44gkNdqf7MFOK0KnAolUnywHMX6
	 vDp47AkWqqQDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9444CE77184
	for <ddprobe@lists.linux.dev>; Wed, 18 Dec 2024 02:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173448995359.20198.2114658038471448544.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef0516b171321b29464bd5842f78a8788601d2b08b07afb8d7a3e1c77b7ecef
Date: Wed, 18 Dec 2024 02:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734489953
