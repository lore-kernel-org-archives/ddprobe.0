Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20468378D8F
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771929894; cv=none; b=b8vaeCdzzd23PYfEtYn7d3dLmCYfqeIN/BY5LlgxXSjch5w+rhKJTAfxmNzWyUMrzZYn5ATHs7/51lw9Olec2yThiZRCh6BIXX6xFoPdHm89mjupzdePFKyMeJPmdXy+gAN4iTrQi8ApWjARBQ/FSsa9jiO0X5Gj+vcyUv+AJYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771929894; c=relaxed/simple;
	bh=VMmEE1xcAoFXeUF0TnRpXsritzkLMFncNzGGR5dJEk8=;
	h=To:Subject:From:Message-Id:Date; b=gvuzx2hk49IPhuMuKWVZcPfCTmbWDRNGB2DuJytQWLkMqhMSoq5TMSddHdx0X56aRrSYYsO57C1YW8tgzZ7fwtBLDxOwD7BxZfZw11JUAzg0uQ9tF21t3jlz4OF6DdIT4jeDe1psneCdMnGawDPhT1Hq0sZ1QJbGhxf53LT/ajs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6REiBeP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6REiBeP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADE05C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771929893;
	bh=VMmEE1xcAoFXeUF0TnRpXsritzkLMFncNzGGR5dJEk8=;
	h=To:Subject:From:Date:From;
	b=F6REiBePAGadmrzqsqhfZP7kdYGo0LnpYv0SU+9a9LPImQH/4ab5GrmOj4rXHAGHK
	 DcwZC+hJBclY+sUQyMU6QhQTXP2uJCpRrXL8nHpBRSG9Qg+hyhsMBRRq1zQsT9uO18
	 aNdwHzdFpwhW28KVedz+NH87hdVfsknO99bC2e83beF/1Y9slNLqSz3vVNUPjaSfVU
	 DiJMH4PoClshEfPWSI1qvrRU2FjSli2OpmKmnUVDjPruRm9VoJzyDMOP9qHeWVxNTZ
	 Mu0NozmgezGUb9oxNZ7yoDSiLTQmvJH4jUT+jqpL9dpGPIWN2XXAhjvMTkpBEEJhk8
	 6mWObY5edZbOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAAAE9B24D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192989362.28145.2069996369880245389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46b0d16e5479a879f99f576fbc27ed7344c3b1aefe8a1a89189977017ad2fbcd
Date: Tue, 24 Feb 2026 10:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771929893
