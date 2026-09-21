Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 572394E06D4
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790011834; cv=none; b=Sr1SDguz9XfJ8AI2tlGyFYUzl5TB7kVXEQqulyBM/LcNrl8+e+nV4scljSGzjX8bzTAflHn/kMVxfpT00s55jV6K0xs0STCIwdbysJeD+aPAS2K+IyjIL1UOgoC8SyURLZEx6kAWwWEovAgeDirdIa+l7sl1n3HOiCO+mri3vcA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790011834; c=relaxed/simple;
	bh=PCLBJ08J7AFKupwjv4tgNQK++zJtxwwB8rGtAxYk9p4=;
	h=To:Subject:From:Message-Id:Date; b=MTzk4nhxbUfsBgbXnISAtyaHljxQ3EWPhauX+PEWRg19EdkEDG1L8sIivLvKgaJ4EPiQA+mStnrvLft8ioGrCnHZGS+2wDxWiNADKHjD2/fyEh8yFUZNIzG88DLGcFb6+xGBAC1goMXfi6ZNnBTLVTvb3ca4EFO0+m4+Gub/wdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eWE0DAuI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eWE0DAuI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7EEC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790011833;
	bh=PCLBJ08J7AFKupwjv4tgNQK++zJtxwwB8rGtAxYk9p4=;
	h=To:Subject:From:Date:From;
	b=eWE0DAuIchnOnb9V9JPaX21JVOee8Rw9U5UzG3Hq7IPtW3Uh44zSeWGn6PBvNs5jn
	 q9x+0A17Od1diUL5GLNAF79Sp5kCvuwKZMs0VNyPz5ayowchxk7wqYeD33/NzqzKEv
	 8kXt4AudMvBM271cuou8xMZN+65uo3zqu2oyPXdYCMQoNZmSEfb5Hj3QG6cNu3fXa7
	 hGSeJa9sMsOkB/ciAoDwIeiCrKnwVc9rOInWnKcU+d63pQ8htbqeI0G3pSBzEpFVRx
	 FJLd0/zPv6vE/THMXK0WVGL3wzdhcsWTi8ZIcIVxxjD+ksPFuI4aGgAsmQ3Ewz0O17
	 RUB7zAqxdqbsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4688C982E6
	for <ddprobe@lists.linux.dev>; Mon, 21 Sep 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179001183372.16077.3639866788918303071.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97ca100a5867fe72a12dfd6ec1d7c488aebe9784c912cb815b3a3c6c7c004009
Date: Mon, 21 Sep 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790011833
