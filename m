Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3807C1E863
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:00:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713866423; cv=none; b=RfHVvsNOB3w8ar8HK+dDhoN5ujeqeI89prU/lRywF+m8ijxnFjzQvf41eihZ84TGMn1VW0bktSrwGD2WSj1cPtEP1XIdGEp6oMJIff4g285Uk2uh/GIXi2vCTdb5cLx1Ts1RxDOuidSsmrl95/L8Le9CMGdMwxlRk0EMI8qDf7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713866423; c=relaxed/simple;
	bh=+phMWlfwJxCJIYfRAaNESsygUbHCTxRdKh0AtoXsnHY=;
	h=To:Subject:From:Message-Id:Date; b=RlenRpQPVwz2X4RaquemPlyYi6lcLn6VnRmItr7BY1a78biOCTwMTaCy2MLHj920YkajqaH/UCIfw5f8gcvbGtsGpM6JwwRaaJAhNLd4oGJoQ7PoRUHjONgcwYsOHwD41dqXbx+ARzp/ZRBVU9jpt5iM24MU8yV7ZN9IaHElyGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r59rCIML; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r59rCIML"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA25C3277B
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:00:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713866422;
	bh=+phMWlfwJxCJIYfRAaNESsygUbHCTxRdKh0AtoXsnHY=;
	h=To:Subject:From:Date:From;
	b=r59rCIMLE1T2c2NG1I++qcKQ2wId76+TnBgPu2EXOsg6fd3IXug29xhfCkeAVWEtu
	 t6O0WsW2hIRF79i/+BdplTfX20JILwvwSFhcpZRuZZjaq/zHgCgRkDGh7qHimRpNo/
	 Yr1lRGjXIcasBWE9YrMNkVzLLZk/mu1rDjRr3j0CZoZoFqOCfjaG53SHg0SsNfHu5m
	 eqCGj3HayXSC8z3Aq+FCDQi/Q24rGpOpC3J+UdpGDbJaEJsoCsVZozQM2mgB7Q1edl
	 AeZuxE7N82chIkFNWjvUBvUfXjGveLeVkdSmYfN+KJ6KPETDev1vYBhUScL3NuHe5+
	 lpvRWNUFo9YZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC099C4345F
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 10:00:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171386642276.21639.11413216642312108576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b7635e428e0cedb4f0d90c1ccf3c6fcaa0e3eddacdd2b24aa51f3cdf868c2d9
Date: Tue, 23 Apr 2024 10:00:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713866422
