Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3368A4430
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737919554; cv=none; b=D/j8MuIUUonyrts4TJ4lvRAnubpkBlgRbKNbxB2Ugayl5WdREpFtBFcBYLRl6FGBBpiRyQPzdxf34VfMJoVsVev2hYOo37gPDANyAE2D/hcVdDaxWj+/GL+TGf6vGyC34Rv91z2BstkpgUz/FsWzguyucrSbHKz1YY2K4bNwmPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737919554; c=relaxed/simple;
	bh=F4Y8QQgeFl6oLupkatdHlzPMxGbPfHffUeQEyFWx9WA=;
	h=To:Subject:From:Message-Id:Date; b=NWjnldux3El/V+NU3fHmNMoxDuk0r7nYvjXUYoneuvGZhKc6DImQHZWVhQwPwkKB6T2g6/JdDANoeliltYChhK8F30AktagzZQeigUgc/+SB1l3eQT7uBWbcnmZsFso9UmSWEevPGRBww6Mu2CpCqBBbYPIWhl7bq81J5gNaNgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lMLQ2fgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lMLQ2fgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE23C4CED3
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737919553;
	bh=F4Y8QQgeFl6oLupkatdHlzPMxGbPfHffUeQEyFWx9WA=;
	h=To:Subject:From:Date:From;
	b=lMLQ2fgkyd58N/di82E9/7AO4nt+qG6slJMy43wR0AdJB2hHO1w9GCZ8LxxiHswrp
	 zj1g8t5fuzUY2IjZdMZn9uHQRutIZJHIvYrKHyN12qcFIYKnkyBgfuRNT7FY1Soq0h
	 E/Y/yaXNRTnaGQWD4BOAoTDxYLBVGRmszeBuqS6gn1Se0fzttWEmmezz2NWC47JHCM
	 f3qMocGxlPNlufEEkryGgrOLUxAEOc413M+n9rBvmlpukRbq4I3hOcxoYthVjuFrbS
	 TwOGkY9fvAHl9Wna4yWuxlRtQykBTqspokK1JV7qCAnd0s3IUFD0v16/yhCpXRMtQE
	 w2IaDiNoedUbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F10EC0218D
	for <ddprobe@lists.linux.dev>; Sun, 26 Jan 2025 19:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173791955357.20356.12670515439062487971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b89109c60c47269766abf4004ea15cae2d545266a62658d623d02785a55d429
Date: Sun, 26 Jan 2025 19:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737919553
