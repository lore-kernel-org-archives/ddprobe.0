Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECC541DFE4
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712320697; cv=none; b=jL2qP8k1UJizILNDN+llO1CQE8gHm3HIYaeUos+rcBbN8RlWjcQ40eL0ED/SkjzqxofP8yJoOlVx1Mg1pZZ8Pzj9S0qWK8iJpRZi4Ozw90nTMllXcFfovLC6C+3eESbtVoWVHc6Z382rh/vPcBvflq7rpAaCVqhZnAhOU+Ru+Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712320697; c=relaxed/simple;
	bh=HFvmeNoi4yMhDKL8eix8zcg/uuutRrta8GgNHZML30Y=;
	h=To:Subject:From:Message-Id:Date; b=Ws0+0CGbkK2Z9jWUrOYZLDjfQZGm43LSx8ehZ3G9/yeaFIkzSxhlbsANSTcSfKl3aZOS1W88DPXbogwgHlcFq78splZRpA2YXYg9FTwgFspFKvF8PUTktt5mDd2mYhY5dCPb+Hc85MqSfYAHDYWVqErsYrng40i/mcRhd+R+Xr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HjXn+ND0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HjXn+ND0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6CDF7C433C7
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712320696;
	bh=HFvmeNoi4yMhDKL8eix8zcg/uuutRrta8GgNHZML30Y=;
	h=To:Subject:From:Date:From;
	b=HjXn+ND0vQXAJG4njU248daDp0wLZ+3x9KxEpWQITo6G0jJWATIlqlp2KsVEHjKLI
	 4b3b7t+gzZIZRlHT0mCxaO+t2xv3TKXEAz6x2LTkKOoGN+eaJlt5eon6Pnk9VupUEj
	 R8CJRTWPcC1Wbs0yMJePGeUAnIUvDWLKHsNc/iiGWwx/Zny9De389MH9md5Oxb+npH
	 AL2JEP3fIndXlkB2yCNtYxq+Ick04QhoB3fV8tiSsEQy/Ekqb1nfaVOzr6PhRt2YsL
	 PMsQiCslAS2G1f8UKCpX9hUQOYxU82XoEAALOq1JEbQrP37cr0eWz1J3Dhd3dMFBMh
	 hH5kMTOcgts9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EAB8C67861
	for <ddprobe@lists.linux.dev>; Fri,  5 Apr 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171232069638.5832.15293909808725643640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e71f99e50a4847c4de4ff7734b1df43bf371dea2c71fd81f5f0c50ad82dab5bf
Date: Fri, 05 Apr 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712320696
