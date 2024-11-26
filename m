Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B7B3946C
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732654554; cv=none; b=vBFVbVcZlmeHp5slpudgCeC7sqZese3Yo8g3ixybTew910Q8bI5x+Ay6677o5mz+mV90jRVjV0MjREeDTbvtEDTCKAigVC6ZnzX4MIYVzch79JjIL8wC/50yWc0L5zBld28eLpnEOktF87h0a0+n2f9ILwiwsNNykLLqYWJSVFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732654554; c=relaxed/simple;
	bh=vcCPPGjPhs+zltM+68EWboN1EBFFYCH7oYhJz5j4/2Q=;
	h=To:Subject:From:Message-Id:Date; b=H+kYUiKsdKluruBECOhI2PuvmbvICu+SFXFlofqaqiKnlfl2PfcLGGASN6JyL4/IEnb6mp84pBTP66vJISOj/jl4xaGch2MF3WxmpdSVg/1oFTF2ktt9yTDRQcrct5e5b6pmfP2KLasP9aaKxptGrD0P0K22ZxY2CAGRNyqdaRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tTueoBNr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tTueoBNr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4967C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732654553;
	bh=vcCPPGjPhs+zltM+68EWboN1EBFFYCH7oYhJz5j4/2Q=;
	h=To:Subject:From:Date:From;
	b=tTueoBNrO7BwLPdwiwXip5HXZOb/c1WYbwzYWJkuvhuC8rE+zEITA9mfGgsvclMUS
	 slwL9XN+iVkWAGRpbV+02GqXgTvtxVB/anpYIZLmF4bkfOwBCPn8UL9lbfppUMZcLm
	 1ykG59Ka2k6Txgi4EHPDpSvEQjan0YtLLfuTuWaKP4GxyqTjFk6ta+RMF5LUvXEXyd
	 bUkrJ/DRjsIvtvkD0X8qCPrt5IQ9ez/g72K/KQUsvfCR+nCpnwAv5d9ZSclJB9RZzj
	 1ck1um5rPaE2ZzJyrM7SpYvlaJE5sZbZMLrW59x7nZWI6OhsuXCmSi03VJ7WTCmTl+
	 9wx372Tb0ZoKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92231D65525
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173265455359.7113.3682639996718669715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad341f0e3154faf18472357b5848c4faa64fbfb59c27c4eacfd9d5ad81576c0f
Date: Tue, 26 Nov 2024 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732654553
