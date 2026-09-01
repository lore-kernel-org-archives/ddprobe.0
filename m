Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B4ED4756AE
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788258634; cv=none; b=p+bB+Bbr1JZ614HAKEmr8HVMDYWdNJmNAa4+vQ7i4WlETUzS0rDxenn4ti2ThW90Ni6bJnMJUU9s5yv25mdl1MYcJ5W5+DwhGSUOaCSmDuFmvxNVelLcRkYNsD6iGeGGu319QPKfJBbrHkigEyXlGpm00QBozH0bHaZLsK1nxsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788258634; c=relaxed/simple;
	bh=v59Pto+5LLqaY/f4UCs0zl3HlI2048pSsASs5gLyi68=;
	h=To:Subject:From:Message-Id:Date; b=QoSNbcelHORh7a3iyovHfSpDBP8CrSZfZ1ry6UQzYa5CR4D2hSS6id5FalHy3Ls0SokPsFCDDGrwaAxZYs/qYZfjUAHJ5uy9SiEl76KjWDtTkEknjWUgdh9Kf+RqYwiOFZcSyRxw0BHGGD3s0B7zoB0TzpnyVCq5Fj5P/Jh/BHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=riwaI6OA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="riwaI6OA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC018C2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788258633;
	bh=v59Pto+5LLqaY/f4UCs0zl3HlI2048pSsASs5gLyi68=;
	h=To:Subject:From:Date:From;
	b=riwaI6OATSeGBjaY/u7RBnWe2OLC8eo9PbsC7pbP5TrmSZdxP9uTSJhbqAn2pBY7U
	 z3etOftCIurde3DY5VKa/2M1Qm/KbKnx+MslCoL8pkmXMMbtX/bVGr/ZSPTRHVs1cv
	 tMriJqgcHsRRTY+sHl3GiKUXCCeShGvPxRdt+6c5HfYwvESGJ9bNGMivPPO7+uJUTK
	 WfCKvbnntJDnb97Hw2JwR6CWP+tu6wNWtqe2Yfl4yHH3YyAKun3ESRiXavhzl9luyn
	 Wr2RYzU+hcz3ZFr5TDwmQZF3hw0e/sq/Sr+QtfDva+ZzlZWtnY/lMefu5kCS1u9kMq
	 fRHW2aoayXjgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96D5C61DD3
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178825863368.4457.15358706298966083137.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5caf7d75cb31248a921a9905db3c699491e03c24d5f0b62b1ba70c61a075435a
Date: Tue, 01 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788258633
