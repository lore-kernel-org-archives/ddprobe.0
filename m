Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F22F29AB
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720587383; cv=none; b=bjf2nagkADVPRNEM6sNQmAPygrqvLWCTwSdqphujtle723KKx90uJ1u5lTWFPTeNsxRqXIS7VPm103F+a4yfjpOA7GK8MJCsMu0BPll6VX3sg5G/EIWldfO6DppfO1V5aB3Ieswbb+HpMbI+gUWyT5fCykbAxHEAleUqIDW4igA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720587383; c=relaxed/simple;
	bh=fbTUQXjcm3vBXB/8ZUi/7A4BTRb3ytcd1ZfgnBkx2h0=;
	h=To:Subject:From:Message-Id:Date; b=JywmKWw0CnhxX/4emTHKMwRLncp6eqHpnluRPIDQMuFquctxxuC2Xwn2RpfVkXhnx8B7C2Qw1XGSO7YCIiq/ro564vvl+yEcr2sG2p5tsIpvrTGd6ANrbnsXbujjjKpaU9o99tc/nkdBIhO4PV0Y6rqQyhXP/4AX7pAYJ7Ty32Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sNi3UNci; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sNi3UNci"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E796DC32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720587382;
	bh=fbTUQXjcm3vBXB/8ZUi/7A4BTRb3ytcd1ZfgnBkx2h0=;
	h=To:Subject:From:Date:From;
	b=sNi3UNci8J58XlJlITF2PTF07LRfz858IVIqwr2vOxqiHNqEQ/YkYRHPqfymlZTCZ
	 bHqG+OlvJIfFd65iRLv7QJ+rfy0c1sAeQgQln1r8HzlXopFmjqcq/GLTKpEHakb/SA
	 WpbYCmtT0K3nJtYVfSm17FyoZ6g8SUgEhwraXRXhUwedG+QIzu/WreAiEo3r2oXeRm
	 AZYoLgDoLQqqjxEhqHSYHAm/JIhekr+JtK1YM0i9AWBiwviF/dLI30lWTBnXp0kkNK
	 vevZJzc+wcOGh30U0BrlwXW0GuvFE3fUWLE6+QYXJCAFmX9OqLinLj2EmOsmj9mC++
	 vJ6vXuu8rcGcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2C07C38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 04:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172058738282.27607.664010760555553202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 762c91ad0cfc1ce709bc878cd2314728afeaa5899e6b0f2ebf264afc3376e7b6
Date: Wed, 10 Jul 2024 04:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720587382
