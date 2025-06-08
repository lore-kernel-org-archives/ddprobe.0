Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FB3194A73
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749406195; cv=none; b=mpd96q0fOaNHkszpjpTcwUlh7jZcSufxSJAMBVRVFcQcgbPVJ/0fMFGkISqaMWNVR313OX9wojPK1CaIV+bixqY0feWHQq67T5Ehf8/HgouZv6oxCLH05acUj7oYk0U6ISFcezrDBFsnoi6i41890Ch3rbMCAKzqBtx014MyV1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749406195; c=relaxed/simple;
	bh=5DzivCD9Q/t5cxH2OaKOCmcbzwboMM8sgwPZnP1SH0Y=;
	h=To:Subject:From:Message-Id:Date; b=keYSbJZVl7WNNPqeVFswikcb4ngderGbSt3Wi5NQkwg6zo2x49DRA/9xz6YM1IUPoJwCCCwGCmoVSisTeW7fTVF2D1sgejvaaNUVgJnyr/4RNfdEQAGbRP5xMLXclqe157zrIrmgSMoHEjSjLZHBCASt+tFQ6dxEHBGozOyJ5AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tSWLkx35; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tSWLkx35"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7877C4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749406193;
	bh=5DzivCD9Q/t5cxH2OaKOCmcbzwboMM8sgwPZnP1SH0Y=;
	h=To:Subject:From:Date:From;
	b=tSWLkx35oFEtR79Mnz57buAejMGhx2QDkUJ8VqY9cKvXb3R8kvRLMVBcOLbAMeQh4
	 +mqG0pkVPMHE3cI47Un/fr/wGsSDVF6VgNKE7GfnxblMRassUfPtAaq6fqkkdaLKqh
	 gGrNyLgLx6LTTvnfequ1yOQ98SvsB05KuxMQ1VFiM2nHqhSXqs8H5nrfY+PrpvS/xH
	 2JBwGSdrYArIw6YP60k4ULoY9MGb5IBPVapZFmszXnlmgMaUhlLIl0siv7IqA0lQPo
	 rvdSPAN7rpt2T6GEY/bU6OeOBOC4Ks6FIQxxhEluSOmJvo6I+fQpGvkhkNk72/ydjr
	 hEvUZ6Z1rCgcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9471EC5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174940619357.27394.18038603315548895678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 410b4b093072d6629b4b0e9e1c079e7bd25acb5fa71c3c71b2eac59354e35051
Date: Sun, 08 Jun 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749406193
