Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2972F214A8B
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773576894; cv=none; b=KjRJhgm5NBGNlYKBuMGcDj6a1iqoSKSbnOSlFEIVYHNTyklQR21UVyn1sWhd3xjCt+jt6forU2s+SAeGiEV1kaCBPq9ZV1jC8eO/SXFyeWZin5/Cexfmz4ZSlqyhq6l32RSszOd3ajgQcaStnUK//qwd2wito2pMeMEiVPIZ9Oc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773576894; c=relaxed/simple;
	bh=tPbgHB+u7c3mhqP0YT4piW3Ei21Offf0hy0hnsJ8Los=;
	h=To:Subject:From:Message-Id:Date; b=PFweTRUInbWupriNg10D6A+do9Dt2U5Z78GlpmrmydymfdIBvn0eN1eQ0EpP3CEsEdcu08qhcZTbYhc92IPhOJin3dqrpth/eVve+PTwZOB2AWCcdjdDMW86O8ChAzQcNagvRqqc5jaQALqBmKQ5zWaGYGdsV5Z8uLoC3rAYIUs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I9669xZf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I9669xZf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71CAC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773576893;
	bh=tPbgHB+u7c3mhqP0YT4piW3Ei21Offf0hy0hnsJ8Los=;
	h=To:Subject:From:Date:From;
	b=I9669xZfRbeM9IiNUsc29LvtytvxB7eKAHRXUVgc9hsJjL72z1kaulyRqaCTV3k/H
	 a/K6pAarP2exzrqJ8wrHwoG5aVi4/fGleFpVG5kV1QfEyQOBsLCW/mUG6vwHeD/H7X
	 LQFNXl4euus4z4uNv5rGzLBqnOOrZO+JwSP29NoMtftgxEuctUPQy+7q7m3nCvuZZn
	 Ua60lSiBsOpGpHbVJObGN4SZmVVhVw+SB0fBp1fjjgnaizoGIS1h9oR5V7c3vIs39g
	 otIW8C/CNgsDPFwusliv/8s8D3t9AACwuOzPVm07cxoOd0Yp+0IN7D5L0OVW+eLLH0
	 J9+uYCm10HmSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F61D58B17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 12:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357689357.10283.14718988965340885051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87999879740703190cacace87b7761d4521dd0e0a3d4030adc39bd7de6f5d374
Date: Sun, 15 Mar 2026 12:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773576893
