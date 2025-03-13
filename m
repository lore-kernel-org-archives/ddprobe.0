Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 671953A8D2
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741852134; cv=none; b=iJnsl1tTkQkJAiSDHZFrpLyVgNmVSu8k20GgbAfN/yNPS+Np5I1fWoFQoPiLExfPDasJk8DxTcR0gyaipHsMQzhVmp4hRkUdHM8Q/L7yoUASobskKFTygaGdyhhmoDX4DnREwpm13DKfq/3FthZKlcZutg/8T8TIMdQCR/3PJgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741852134; c=relaxed/simple;
	bh=rc/MelHoEIDfydqOB0Q5bwYvpe0BtowVz5qZiZjMUwU=;
	h=To:Subject:From:Message-Id:Date; b=QD3faZtz1fft3GOQD67edQBUKAfNMx3h5obMxTJWj+sXwbyk4nZaA05hkHYg/pLxvZudEh9A7n0bnO/y0oZG9KJRiUrp0P9e19YgMNfD8EquPwrDkRstJPHkNkGBTAB3J9lIPxis/lxhZVSx6q0jIzqSqhKcemHZ71ZZiPg64TU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RKVGdHtO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RKVGdHtO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1625C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741852133;
	bh=rc/MelHoEIDfydqOB0Q5bwYvpe0BtowVz5qZiZjMUwU=;
	h=To:Subject:From:Date:From;
	b=RKVGdHtOhG/DZKXrxewvP863QxYXdRduKa6bcY1rO7WiBZlGb6nylBlxCCvLc2ilL
	 +RaGKQBWr1pQaPLn4A0/uR0fa9SUA86Dhe5U3Vf5RPT7L2AXRiGx/AmJPTmc4k5cvv
	 HDDkZCTRQlZOLcaQPw9JX6nB1fbTZC6Gz6dn9cEdIqZQe4Glf2tWbyVIdYbst7G1ud
	 jkBXUyztO5qsHy4GCVVOcEuMi7TrPLokmfsPgRJaYnV9on8uW0n+2TIBJvYAWaYpMN
	 RR/quYpL1qcO4o60jzsLBA0f4oFs3coO/KEM+O2oUUhA+7/xjaiDof7pwtnjG26U3B
	 Bvtl9TK2YS1EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CF07C28B28
	for <ddprobe@lists.linux.dev>; Thu, 13 Mar 2025 07:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174185213362.13482.13337731887300286508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a8f7d8a7730bfb1aa25e29dd7f0486a55371e246c4fb1fc571013a9dcda817
Date: Thu, 13 Mar 2025 07:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741852133
