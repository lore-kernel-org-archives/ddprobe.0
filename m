Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BCB26560A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750371594; cv=none; b=lhtzJM/yjggb49rqYvMGaKyn72VUgm/lTfV0nxxCj53k9KYEEDWcxC9X8zVl3T1oBNwzS185ylDU15ByqW4VLaVG2nUtsXSso0c7AirD6I/Aox5y/JOIYcL51Sh95QByx/jamnAyPy/CAIaRea26w3B0rEdnWZm67zkFMM1Xqgc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750371594; c=relaxed/simple;
	bh=5wRNd36L+7dGvSfSTf4Cdk1oJzyPoMy1f0Z0qMCCHS0=;
	h=To:Subject:From:Message-Id:Date; b=dPi7aQGtX6CgSR8IEfvevfjnNEbFLBMB0ZzYX+pbmaEavwptvw3ejaQyn3910UyWZMUvP9lXdgSCWZiVKQ8bcc75NngWSPKsJQ3EgDcPyb6Jhl9rOF68NawKyjPdVibm3qDSOGfVFFuJNhirmUnFOUqNlLDuV0g/ipWvQhS0PuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neM8ZZ9R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neM8ZZ9R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDF8C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750371593;
	bh=5wRNd36L+7dGvSfSTf4Cdk1oJzyPoMy1f0Z0qMCCHS0=;
	h=To:Subject:From:Date:From;
	b=neM8ZZ9RrTYDCQzm2JnPLPVW3+6lMe7MONqsK5Dc0Miv7hO/kx7yoybcEvrdwUueB
	 u8Qa/vvW+VaC0JG33zwiApjpxltCczeffez/YwamLEGb7nWJXXmJCey5ddPXuVlkgn
	 a/StfP0ZhTLpGW3PGVkCu0ntCEi5TKPsucVojpwRmhw01c8O643iU4ucCSQ8VWNqhd
	 8JGgo4hyI7iAWRo0eNTyJTvKb2g/kjk//5Y1UdMYvHg22c7NZIH8LoSqPpD93vsXMB
	 Ytqcoa+/BCYoUehcHOEqfd66I1Pk1NdJBTx5I90ep+cd/DVGwUb5ZmmB44ZR7HoUNz
	 wHaeTv5Y60G3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F328C7115A
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175037159357.30423.6519850692143893704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d59d8868134703b1480dbb0ee778bc98249e85c564942e39a4360cfbc138e48
Date: Thu, 19 Jun 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750371593
