Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0FA19ADA4
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780760674; cv=none; b=tjtBQEwkitigsbQRKRMH3dYIifkGPmZlH6Xo1n6qN2I8yGANX2372tg0fbVF21CdvNf34lC0M6jSZuoACqFtsSCHS0nbys06lsr5FNJz8IBugdGUaRraXrA5VNaA1mTdT4cdiQDZR4b8wTcLLP0Hph3WQ8q/Ctfz5qnaD5VRfLI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780760674; c=relaxed/simple;
	bh=zqAfoEjAsQGkCMll+d/t8iG1Lb6dDsDxU/LuIE69fnM=;
	h=To:Subject:From:Message-Id:Date; b=jLYC9V1r/Du7bc3kPjxIbuvFMhmrENVwIK25/YH5mg8DZleqtqPfoURnOC8s/9L4ES4kPU1iPfS58ZqbULUY1EV95BDWzgZruL7uDzpcQe33A68H0q883fAn5shHMw0ziZJipw9B+aSRIH8WuJM24HYCfM3hNI7uQ5TOXJvTDKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T3nHpo2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T3nHpo2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDD30C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780760673;
	bh=zqAfoEjAsQGkCMll+d/t8iG1Lb6dDsDxU/LuIE69fnM=;
	h=To:Subject:From:Date:From;
	b=T3nHpo2+jA+UnAFcMxQXgjOMnAiLvMtSS1t6sapMXviI0okctR56be6JhaIyZz6j0
	 LW7ePfAkGGuuKKCPO3beeRo2uI2/gbvDW5PI38K0eP0J0s4xu4M1zS5E/IPt/aIGy2
	 d7dWfqdorMJE3GGY2OCWrYsOstM3HVx5uufdZFjxGQ7JnSX+uQyNlgi7hr8/Z0wLkZ
	 pzDiIHL/JN8LScRInB1hxiNz029vRrw34gcIJrcs/zhBvd/pfp2qzgYg+kyepJufAA
	 K0BG3zu2wrbz1rWlZF0PzcarPMxCgFvD85HOFbwq/3Gki5Puc5jXt2rWUCS5//+lz4
	 ySo8u0kO1JAlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B10C4CD8C88
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 15:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178076067369.18504.9680220559849679282.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84b890bd78045655766b07c5404d9454bd42779e5a1235c6ce60f8898eea503
Date: Sat, 06 Jun 2026 15:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780760673
