Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB3B62E2DFA
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759849793; cv=none; b=qwrZfbL4WxnpAj+1sxZddcFHnF2NFj6L9tVhlYRrvZLWOcACb7sYlCklbJXAyiiX0oDFYbiOnnivnK+sJJXgVuA5LM0FP6dtmi2UyuXibyVjshl+OjZ6PGVPq3PvBvyDNA8A3ePaR1ef4Y/kB6v9qvk32OJR1DmvRtKKDSi5F48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759849793; c=relaxed/simple;
	bh=7lSrjh+JI/zfCGGLSWny24zDsAaa+W9xTuAN87s2Wyo=;
	h=To:Subject:From:Message-Id:Date; b=k0pGFsiNFjSPYDn6yban0vj3Bgpf+FvVGhfzcdvNRhkSR0THzzXlxmx+Y/GoLx/k/Wqe9rBd+fzyylCght+6fGP5RQUmnq+Spf+k+TgJXWo3A7tS2YgMnZjJbaxIrrGn9jNynTGOl2jxZ+3q56vwUs7YRfwcXyzyBL60LEQWi5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apaZbZEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apaZbZEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9677C4AF09
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759849793;
	bh=7lSrjh+JI/zfCGGLSWny24zDsAaa+W9xTuAN87s2Wyo=;
	h=To:Subject:From:Date:From;
	b=apaZbZEFglLDB8NuLxrxmRjb2fovZ3gkXM6riQGB2B55WW2HPYmJ67/IEk9vZK5Z5
	 +2u7BO5jzfPQFQ7XeX/pgJXcwGAIi5dm6rpX5cfv8ijcDQ8O1ad3OJKmNSOYbtC9vv
	 48V4TbzvLBUxlvG5NSXPYlcSX+fxD+Sb8uNaWbxlXRcuaPVoYmKt1s8COtMu8t9R8d
	 6Yd2d6XM54abmKxY4EjZDHFLAxvC/I6A3KqD5YoVjtPHIAOnsYDwGfyFJMV3eSKglv
	 Hi5Hzog8zo23Im09rquVDqsdWwSNpsuAk0sihyk6jJEdWLPg3o4R0mb9mtxI/9jUiq
	 Ynna3paRW/6TA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0DACCA476
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175984979362.17044.10396292798171414749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9deefea6a2f0595a01b40d9c946fb4cded8ca143382f14f2ff814e052168352e
Date: Tue, 07 Oct 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759849793
