Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46D18136351
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730537754; cv=none; b=sRrTS/6dDJbLsoKUu6Fl9U4MhVU3z0x78aW3Oa3hRarZ0kZotL9mM+Ah9gHwkfuBrIrnqK7BZGlrYn6BkBp+1JaGHA5urnaQOZERXPn09dyynU1xumAFWtxzm6xPmO1JFTCzA7zss2aEc/EgC14BYDAIgR8BwYrymmrAJ60vzwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730537754; c=relaxed/simple;
	bh=aQBSyN5kr1xS1s86Yqdma51a6PV6/bHGQzFPXMRRVEo=;
	h=To:Subject:From:Message-Id:Date; b=VUMGxPPlUSjUlauiObcHQYu1Q0Uf4Du65/yUSVJ3X9yK99QrV5WxJ9AdxBU6c0TR983CyFXSpqTEcIoIWJasjlSLfLMCXZb7QSm1sWZdJDDSRfpV+pnvUalHRiUtvYNmNuostC4DTsB15eG3B0j9ArVPEVpYNqz7UDBRfipNqqU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fu/CBoD8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fu/CBoD8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2B99C4CEC3
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730537753;
	bh=aQBSyN5kr1xS1s86Yqdma51a6PV6/bHGQzFPXMRRVEo=;
	h=To:Subject:From:Date:From;
	b=Fu/CBoD8krzK+chGpRBHIm7TF90f/C3ePx+JQh67KOVTkGj2TW1iRSK6Mc1TZqbPR
	 8zT/+gUcui4lvAOnf0z5ihBc5bFrF80nBt9gzhi0K57cI4RxJbX0aFn2wn19BF9B+V
	 bcDuXMXcNQl0RPBJBDz76nVWl7a9gFS6/kpi52Oq+0mtGmoWnVKKvjCk1qSnyZrTSy
	 LGwrVq9Wc/XUrvuwtQPMDWaS6jB32EBPn2ckPIUZVT2cOdI9H8ekmRiUANkOmlfn0K
	 RiuSOil7ZaFpJTdd1Y4KWRLKsAhBFA03nEXnurR77zn1GgKJeDpwRHh7AlrP+XjOl4
	 9s2cz4Uzv58Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACF5E677EC
	for <ddprobe@lists.linux.dev>; Sat,  2 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173053775362.12257.1832966170142287542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f953d119ecd6c698e910c659e79cf163c0dc27eb9eeccadddf6c496ab0096d1
Date: Sat, 02 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730537753
