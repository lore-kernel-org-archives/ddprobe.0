Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCA141AAC
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751183394; cv=none; b=fTWJols/0WR2Hm4395Er51r7CncBFX7TO5d3ZQ6vxD9xPF+wRK3IIvN9ZY0ZzTheXRgXxXto19cdefrBv3C79Xjk4XA82T+U8h8w1FOEY66sTflY6Lsca8xIPowM9KGYc3rqycqXTA+SqLdkXL4Ny7v7GOwhUcA1s2SFQGWmteE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751183394; c=relaxed/simple;
	bh=dEkEC6NodxjafGqTxs61M6EkDjvaiJ95ryZL2ELHDkk=;
	h=To:Subject:From:Message-Id:Date; b=f6bZwDLRe9AVghF02il8cixdR25pDSSN6wYTONyu/g2qUp3Bj2g0S3PkPQAyHMh7HEetUGlKu9/xB0kFr776VcqaRXpfU8OQKnOQYKtxUBBq65KD17HQEQW//RPgm+cbjCWIXj1Jl7RN/i9lJ/sdQlgNaelEw93GU5She2j0QyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LaQMLVBh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LaQMLVBh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25ACC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751183393;
	bh=dEkEC6NodxjafGqTxs61M6EkDjvaiJ95ryZL2ELHDkk=;
	h=To:Subject:From:Date:From;
	b=LaQMLVBhIXgArzkGrIEsDTiU8LHUXIIdGMjkS/zHNGQvCk3EcpQn8yLLNdNmsc9mx
	 PQCsiYghaLFG714/M5RNQav9KlbVz/irjxn4txRvHAwHXpyyx6UQLS/MZUjNSeCelP
	 ncfKxuOSOPLywkch0y9EWZXM6t/rmOg2HF9boj0Nc4dUBJqhiH2H1MZ1haSMBkllsJ
	 lhENIZxBOmxpT3k0jkojl3CeobD7djzWkvk3QENctaoenAXRZBH3SHyVseLAgW9jYa
	 Nyw1nPNVTguHDdCb358G5knv2dX8Re3BQejrM26Y4BTIU6OkwQbNH5kHUOBoxEthb1
	 bqYebgxvkPQlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112CC7EE30
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175118339357.22684.7892302383111782055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b685f774891983e15e9c618c19cfc03d5facc69f0375309b8201f8f7d071ead
Date: Sun, 29 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751183393
