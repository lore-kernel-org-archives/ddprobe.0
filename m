Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3B51A285
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763878314; cv=none; b=cQvwjry/U3KYhNZwDAnHiQoIOCrRW6Kcdf5LpVPjzP/M8NMOUObtTa44L8CLBpVy8BNq3LoBnZQRFgM8jJGM0gg+r9v6wf1jVKNkXQocWj21uBI8tme+eh9p2UBsKHq7xGIvjL1M073HvgWpoU04Co77AcF2slrGP1ympWztwTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763878314; c=relaxed/simple;
	bh=idg/YiyJltBBnJxZIb/azjkEQoogy7dpO32rVB/wM/8=;
	h=To:Subject:From:Message-Id:Date; b=uTYH5pVOqFyOOz9MAw+mEgdxf16J/IX4c2p7V84/UJuN4EcBTxNdRk+uKic808DUgu30OEQgC6WXc3Vz9VlG7O/0Nx5D8s7Ox5Xkt6DYWExKWAxwVwwaQfefhl3fF+NXffmFvCxcO9576kZzbyPqt4/HAVh0bz3rzgozahGeE10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TJ319CQn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TJ319CQn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22A3C116B1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763878313;
	bh=idg/YiyJltBBnJxZIb/azjkEQoogy7dpO32rVB/wM/8=;
	h=To:Subject:From:Date:From;
	b=TJ319CQn+/DOaJPzA7tnx5c0zLAFuABQWUqBIGiKHYIbU1mI6PZmMCPdtlkgqThZ1
	 QxficYtFiBwwOrpwLm3WIneavR2PNiNzj+c7THuixPD2NjdaWb21OAJDsR4R37kTS+
	 Fj/CxLmE35VZtWrkunRBYLSCWw3O+Ieh+5BtoGChaOHn8SsxtrMcaSQOnvI6B/hbJ+
	 Yhf23wrB/RuxYWTruw1q/75rdSxxE3tC4OaVaF8qj84etfpQb01G/gr16pypHmqkI1
	 YfOngd8d94BkdxD+gmtuOZDUc+ZQSzPUFAVfwfXcbtsEfkXlXElf553iET8slAOzmn
	 13iSfSA+sB3lQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91298CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 06:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176387831358.21340.2934726185527558019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d05aa6de8831f32789c5ad9ef2f33d14e72a1638b344e2993dfa54e6e0c132b
Date: Sun, 23 Nov 2025 06:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763878313
