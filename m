Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA2423C511
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747079994; cv=none; b=gRD5pAgglSO29NbIDG1VngARUGJsK4EWiUsP73wSxoSPhjGKK5wKEelKvF6xTTIKJmX6aNQGcQCtMe2TUwuRyIJXjRXyUJoaM8jhU8NCyFMyJlLMNgUvGyDlhQbD1xzKg4RiZNMvo73Ca5vY2hwUYxTPJBiy/ncJKUABuuMdB30=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747079994; c=relaxed/simple;
	bh=MXxEhzDVp3/GMKW/28yi/QQpoxByBlvsyvKt5VHKAgU=;
	h=To:Subject:From:Message-Id:Date; b=tA5DP7XX+U9/M+NlSiI0MKR8IWU1sPvVfDrjqlKFDcHZAVgq/2Hfd55nbqSdWxbo2RrKAPUrhEVA7Ga7MRFNVhvMV4nj91R9C33s9lCnZ0ecRv21TitMldTpXEPokFQ2WHlmhrAUioSyEVQFpy48uqwQZ305Ovk/uZGKmrNFYo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cfdRp107; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cfdRp107"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E27C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747079993;
	bh=MXxEhzDVp3/GMKW/28yi/QQpoxByBlvsyvKt5VHKAgU=;
	h=To:Subject:From:Date:From;
	b=cfdRp107PU59RIfdYvvP0/3iKnqBokFwi3mK+mtTWBmLPyyN7Fq1lELWjXWFWXNX/
	 rLVuAg/OyfVL3PRM2CiBlXDfGc2osD1QgYbOhwleP7Zk+smcZ5Zj7+TNxhLGxMzWyO
	 h3r88J0FCJP3+4HldgT537CriujLKz2+Zp46DrV7Y3zdkMwgfwzcWXfT0VxyDMh7HG
	 dNeJQWVmUex8byI7j5dbyL+X6q0ZpWvgGukovJjKm0m/qw++rA+nfG2ghPlocGEnij
	 ROrDmFOySVZ32LxJ5OSZ+XI1rN1Mmu8SywplnPpqjuet7QhshM5prS54liR2PspAEQ
	 F2QXidSl1niVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F598C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174707999357.4104.8202891184242659944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27f2eed783086ca08161d272e579577cbc1de1911c3bd11a6697d1f9b54d1fc4
Date: Mon, 12 May 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747079993
