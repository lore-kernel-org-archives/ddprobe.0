Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E7D2594
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726802154; cv=none; b=iFhDigBV2qfUvan/yy6fL/c9EokQoZFUagUW9+TyqJPFps+791WY88eWqD8sj/xWTJ6jd1yuRjE50MDAgyBIPWbof5TLVYHtV7avOEIHIXmGu8Ob8b0bYpeAchK3DAp44Onb/+ViWc6kiVEsg7QkXuamm/c/cvT0W0mNs/SMGD8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726802154; c=relaxed/simple;
	bh=TeNOUvVDTuiX82Z96ENg9nL+9Qf2XgFVct8qxwyU8K4=;
	h=To:Subject:From:Message-Id:Date; b=qxF5FisiCKo2MxLOwZY7XFfUra0GAMCngPpJJTBSXCzLrFlrPKFSGGLKdL2j56qEvTpC3UNJWSgk/3TmTdmKsq8MF07FMBndlNq5dWJyuWjKGLMMI+CmyhlLMwBceQZYFHZ1z3FHJ/u+qZtACcjIGF2vUH76GuJppuaeFKUznSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TYPC31BW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TYPC31BW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A44EDC4CEC4
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726802153;
	bh=TeNOUvVDTuiX82Z96ENg9nL+9Qf2XgFVct8qxwyU8K4=;
	h=To:Subject:From:Date:From;
	b=TYPC31BWF5FEVFZkVhYuZU6IIFRHMM4FUeaYK8fJ//zcRaaF2kV0yYJdH+63Hk8Fq
	 21ozGNQ6CjycJ70O9wZMhkQSCE/WdFMJYmPdkexMMk7tPrQVDmE4OtLbO+4lV1Ebqm
	 hsnXZ0t+Yx7/x1CIQAt/seqHBTvvr9B61jzaBzKv6v6BJpPsp7suL/2D6Vu9ilntOA
	 7Kfo9ah5syEa+J2gza6OvusYW4s2OqcbAZCOUPvxUFiroRw8ompEQE9tHRrRYiRMVo
	 eAuLxyV2ra2SgWn/lqMjqv6eVsjyacvxD9avk/N47D5qEeYhrUbletkjrH2HEISiAT
	 o0nZHC3hVYxMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E20CF58C1
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172680215358.23794.12712315470458832409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55edafcf297f02ef15f500e7315e0736ac8da895fb3bc13169a9b3f0b2927ea9
Date: Fri, 20 Sep 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726802153
