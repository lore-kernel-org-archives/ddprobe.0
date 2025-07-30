Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44CAA13AA3C
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753889994; cv=none; b=LFL3QdxhE7DZ2uj1iZK7RhK8LckWPmti9Za/7mr2mrccgxhPqAN/wFHSFGU6ou0EQQWwtfsZwpFfuX+Wsu/0yYu9h5iS4VPN0ts7/47b917d270e8pU1SNqDPNSa7E0lno3SVOv0UtU8dmf1LdbRxfNtP09TuZV01CM3bqxUi4k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753889994; c=relaxed/simple;
	bh=Llg4hvx9GcIumMYYCJRFbVQwoZ3WanN/hE28S2rTpZ0=;
	h=To:Subject:From:Message-Id:Date; b=nXxPvvGwYHrItKVzcdpz5DRJmpVbnnuAz6Ngj1XMgzmoIuYrLnf/t2geiuwyVRDucEsrls6377t2+Vj6X3dLFuNxoilJfATJrFPlf+vPXOMWSym7qAkQz/nP5Woak2VT09Awbpdz/Pz8/gNQWuxw+mS3/e/PaLsfRFaC2RBdPck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4mnUOgD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4mnUOgD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8608C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753889993;
	bh=Llg4hvx9GcIumMYYCJRFbVQwoZ3WanN/hE28S2rTpZ0=;
	h=To:Subject:From:Date:From;
	b=h4mnUOgDRphkyJKuZiU3iQ+xwY+m5M2amuVq17W37MX10oXIxnUzXefuP72e96iJl
	 WrWrj2QtrMhblf9zEcVBT2w1DjhN2DcyxaSKHMJ6ABD4UZE5JYaFqKNjoadcbWK+0q
	 NAJFxRAK6gLEZF829anD+lHiuYc/w3XUPT5emrDyVN6vpZPcayanpj3AbA5g72AeHP
	 yQtMFTl/dSml734zph6rVJHxHiEj9tgYzlf8xR3nABOH3iMjcqyerP+24NbwC8BkvC
	 JS3uoS2TlCdeKtDZjW0YJGquCPtHZooGSO1gftaYZlMBdAVvdXZCTspTnu+f54C+Gd
	 NC0Icl5CxmIFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934CFC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175388999358.7935.12599027552041663446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c1bb1a4c3405202cc3967c97cbeb9ac4ce8cf35cf2110ac266328b0daa80e8c
Date: Wed, 30 Jul 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753889993
