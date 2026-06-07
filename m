Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C66818FC80
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780815874; cv=none; b=ojn/BpZLT2n7bXeTHn5uLnyXogSCIc9IoOO3m7bY07Ik4lbWNxddK6HaeOjYKOL39eJPW7LLBtChO4Tvhl4KvRvEacNoV9QZh5kBhslvrBhljXTug82GkHbSpaeYBpBLv3Ru8oL6zVSFGt+ggYq7OcZSZmMx31YMdTJf+XaTVv4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780815874; c=relaxed/simple;
	bh=RBPtJ9kxSH3IPf9bwUFOB79a8wbNSwoUaVPw0l5PlS4=;
	h=To:Subject:From:Message-Id:Date; b=HYAB4W2DtnMeW/A1BOe2v3f9jeLV77Tucn6KwP6WZPGeBr7WEfi8bqNeLKYeKZpMEff9PGlpdwxeygaPvFUDPu5E6aGKPIQfpxL2afAOyKXvKSyxzj3zIzNhfF1cRgKkAgd3KFwohfd6ELJsyJ9SxfYpjAjydCUIlaYSCEDTGFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uagXL2+5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uagXL2+5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE31AC2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780815873;
	bh=RBPtJ9kxSH3IPf9bwUFOB79a8wbNSwoUaVPw0l5PlS4=;
	h=To:Subject:From:Date:From;
	b=uagXL2+5+xrIiN3Gc6omuEVFByITppzCMSlSqiUnluqS1Gw8d3Ws46RafRe+9BzEe
	 BVFMOewpab8N1tbB2oMGlNpIWDK0HkLrVqY3azG4wORXTa+4jszq+ISSBpJklWDL5N
	 0ZoOfQdkp6eFLHIup+iHztFCXL2WsB7Pw0BJk3Gl8hML6IKrsKTBzj3onIdn8qLMCo
	 kUtQHAL8sE0fc/Z/X0doYMSxUNyV5Sf1aeXVVePmNLefgVoI36cizO2ofaAnEpQUpQ
	 FEGTwBtwFCymVvCOutPGI+XDAaxwgFSeoRrRW86NKN9sA8XOo6HjJhpUNH5Fc3WvNp
	 UhjVq3+/YPeQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B30C9CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081587371.30569.7365189199414339330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80065dfb86ead04a212eb8e9addc446d6104c72ac0d96d38b2979dab3273c271
Date: Sun, 07 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780815873
