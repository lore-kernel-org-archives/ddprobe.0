Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324581A5BAC
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748770794; cv=none; b=lPCF6wir5nkkFyvDR3tzbyy0xOZ7/mp2ZFI21NqtHBLQMPoeIlzFYcaQg9xpYyS5/a0wdf/2cAAHcSzafSX9biPzepmur33il7QurzOPg+jn05hnnDgRbGl6NuZlk/PuqWUDWA8rPRuKcI5drYuHhcaA8McTVdRXq0OBrJZpTpQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748770794; c=relaxed/simple;
	bh=Up30n7I2XPu/xQ8MKIay2to9/QqmmJ2osY/1OADvsnc=;
	h=To:Subject:From:Message-Id:Date; b=qoKtElk+mxnqSqSmPkWsLuBtSvLGUNo5aF44tOL/nDEOhkq49mZL6xvI0FiS4OkH2TI80MVR+PtH/uaD6ZFpgu5tO6mY3S8r+oqDoFxBjEQufy7FyTxijOAHLz1Ub/04GeE597wgyUhAVR4jtsBM1HLI5RhrAR4qepcpkARqjYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hVCYEam+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hVCYEam+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A541AC4CEF2
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748770793;
	bh=Up30n7I2XPu/xQ8MKIay2to9/QqmmJ2osY/1OADvsnc=;
	h=To:Subject:From:Date:From;
	b=hVCYEam+JxNlkOxBdsLSmkoTR4L0ocrEt76ZmalyX5PtxlOxdnx0cqyXKpIfqbbbu
	 d72gjldSyLsR/Sh8rmo7T7HpJ4BGs3QzVE8Hm7Pr4yWGLFmV6oPmRjp707/4+KVYKs
	 8V0HtHMF+NLCTBtaxSHWr7cT5Ti8A/eNstu/CgGpm+kZWJFojZRBeEseSvHDWsc3qb
	 NSeStDPSMKxAppO+3Hk+ufI3hhVI7Jqba3syaogweTS912z+gp9TMdwkggERiK9zLt
	 Jzo3dhEM5wa8QAD2y8CaOp6av4DRWNJPlFfgzTp78P7WAF3t5GBvazQFPH3L665Upw
	 N6zS8d7hajBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917AFC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877079357.20351.14545637381715925008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea53e004d640a3ed6155955c8722112cc38dafa28f30f68ecc805eaaf657b613
Date: Sun, 01 Jun 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748770793
