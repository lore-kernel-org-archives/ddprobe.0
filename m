Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DCDB81D1F44
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732038353; cv=none; b=Zk6V8mcwLCvOGJYS8xJiHWjltQZL+ceP/RK2UQlA2vp7aDTyVl1roGRtM172tvfg8vZJs7RJEn2KlnbfQg9aQ10h5vGf/rBPSpAwYI/26+IHd25rGNntPCIdbPXks1A7+ASnnhp2Loi5Sz/P8S/psExR8I6aRruyoIz6/QHRLq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732038353; c=relaxed/simple;
	bh=9FAbCJTYhwCYQtaS6tME4d/OQY/Hi+p/XfPYEjzQR+A=;
	h=To:Subject:From:Message-Id:Date; b=FwsnRw6kJQax2aktBhTL5TX4BhD9VIU3u4S/QXLtaogueRDoL/aBvqVpyqdtjQOsRE2RygDOfx3CMJn8EtRjeo4XvYWJzo9sgMUvpVkhYcJyse7j/CU1Mo94TZP5e2e6otMCG0mX/Zi2QrJ61zFXZqpRZY9J6bk6S1o/0n5Y5No=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjNkxhwA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjNkxhwA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9693C4CED1
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732038353;
	bh=9FAbCJTYhwCYQtaS6tME4d/OQY/Hi+p/XfPYEjzQR+A=;
	h=To:Subject:From:Date:From;
	b=sjNkxhwAILnG5W+0pMxQwuCgG4lXmGrLfrmzc4L7UGYCBVVYm7aELGJeGY3oQkOl6
	 SdtK6yfzx7RHRT+mb6YhAupXq4+yIHJlTLyA5HpRI6bNEd1RvKNtln3cN/4g3V9fPJ
	 TaI+UENjXJ4yECVB1czKHizEkORS1BWYNHyqIQUWDm33EzdLUdpk28OX504I9cLlss
	 dlBfNnnVNMildwNEol+Pkc6LX5rHn4ue/zJzXq5EOntBhif3Pk2mwb/WccgL0PFtFb
	 HVfmRV7C1HpC5wX962AaCFGmTHWqWBy3ZFmBOBr6c2n+pDLivBOoIUOxz4aMZm5YU0
	 zza3huMO+tUuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 906A4D6207C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173203835358.12790.13754122237111045357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405c7a37223646427911310bbcdbc379af73d698273c284d34ac28b45d989c8a
Date: Tue, 19 Nov 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732038353
