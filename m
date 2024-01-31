Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3923182DC
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706737097; cv=none; b=a90gHHR4Y/lHwTbLnilUHxeMS8u9BejzRwGZVhUBlW/NFwxZBcH4oXMcphCGvynXg7L3I4oCVGhe/Q6FlcB6WvIUOscv0aB5z3NAAVOmbr8DVaiG5Q5w2rHVRbj4ReYu8ZF8s/CdiyLgdUfmiBAOkz1VAOKpIxSTGpQ8g2v9nmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706737097; c=relaxed/simple;
	bh=dBdbI9mm1mb8H54Osk9JwpG/lBPDp7JsEtg3m+aRs2s=;
	h=To:Subject:From:Message-Id:Date; b=kgIT86K+xPiWAuTtRPOkNm3nk5qqdp1u4S2jxAxtxYneyNvD+Q0Kng84ZK1gp24ocPw0uaCLVn3BsF4bVpEI1ZHP9soSFHeB5EmIN3qnfK5eycG3Jl/a15FoUCMqBggsh2esU30VGdAYKPapXWLyVFv2ryoIwGy2SdCMn3Dsc5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7s2Tru9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7s2Tru9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72BF9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706737096;
	bh=dBdbI9mm1mb8H54Osk9JwpG/lBPDp7JsEtg3m+aRs2s=;
	h=To:Subject:From:Date:From;
	b=X7s2Tru9IYJ6qw/xbQ2agsOX9w8wUF4AwFByT1LPdV3B/sp01HUcHxvNk5u4BovEC
	 +OFMpXkQObmFMCemnNzjbuMUdvoNPf2XjvMqmJcizdhfInqHATvyvCKIFyYYFmgB3B
	 2NlrwI6kaC8pB4BUlGzv3X+f+X4bWrn5Z3jjOepi7mb5l7qBCLmFjSNRh7d40E5kY9
	 /D8XQRT7L5qUTHayLCcbAC/5tkmvJtrl6FWzzEgW4X8cwL46lRRRUyg2smmXowQIAG
	 l4jic+RzmgSlVSyinAjzb8U+ol2JWN5vY/dHiC48NuXR5yc2WqCk7jAFngzTagxbcb
	 Zcv00IRb+6tnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5C9EFC47DB3
	for <ddprobe@lists.linux.dev>; Wed, 31 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170673709637.13796.17135552428970914808.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 238948346c311b075af9f17415dfe26b7ac87079415fc57b6bb490762dacd6fc
Date: Wed, 31 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706737096
