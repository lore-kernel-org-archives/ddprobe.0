Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BD373290B6
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775798254; cv=none; b=S1HNNmBDo/6fFaBC9m4eUc7Xhx5uCZAOPZ1YwpMw9PuQPAUP7QgKKVoTbgmmzFW3WwiCKY1+HqhCKYC524Sl1gwYG1bCavk1HHMDcRWzIY2a8awUmwlw+aJoMt2DYj6LYiyVVFSbsSNdGhacH9QBHGFq9r8bIuapMr+wvZBq0NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775798254; c=relaxed/simple;
	bh=6KkYgrhRhbvgYLh22X3hAHCMm6EQe9C7LUHXAn3zwNw=;
	h=To:Subject:From:Message-Id:Date; b=Jgm19ETh0CbspU5v2QakYUl/xCNHWHJ8awdq7+cPkr4UHg6hWelfdDcHpQp8tjOS/mUJtJP68HSTE1+an0fObx+2KlRFowfQUDPmDpzjWAdXCZ0supzk71xfFnKmFPSFSl5Gu+0ZK6es5k+8rF8ycUMXsJLQFMOyGxfEtvTdXmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pYjRqN+n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pYjRqN+n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7579C2BC9E
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775798253;
	bh=6KkYgrhRhbvgYLh22X3hAHCMm6EQe9C7LUHXAn3zwNw=;
	h=To:Subject:From:Date:From;
	b=pYjRqN+nC/98t6MyJbmD4C7vzi+uw90NpPbfodMWe5gHcardsnUaAQH67EVmCFJuB
	 ngTyKaJOXthSpt0wi9XMqljaIntWfHgG0tVWmmzVpOScG3IXMsfCxotmDGQgQE2MvI
	 7MxtrQ1OiQCTrEOCBqiSIyjTDli2Kx0S+7Mz2FfWO4RWPzXZK6l93LVZMeSETvfTio
	 u0A16V2Y3BdJqLBkELwCI/2G56h2PpHpbewJS1uSmGDNc/DFm23gR7tUtnuA8arpIC
	 39f9t32hRu1MZEPfgzwz0TxDsWqOzP37fIaijdTTR/Qo+VfVeiFy1SFy6ZzNodQJvm
	 g1gBxrrz9RHiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E73F36BAC
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 05:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579825368.7143.5915301363921642308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39d9490a573520edbd8998c9f587d0d347b60075db52b85f1854a1bfc7c6e6c1
Date: Fri, 10 Apr 2026 05:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775798253
