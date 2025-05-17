Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30D6C1D514F
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747489794; cv=none; b=sVvP5iBMfYIQaYo7WHp/WqGvZhJkKXYy12C6oDEV3uFmpMU/Kb5xgLyVd+JNobCHxyk301GP+72R6tr+kRH9du9Iobzf0GA904r4bRHcdFEOeeS/BU2Pu+AHc2H60ov7/FyTjPUE080QsT9Px5ZqrqAVDVPd4+540Npo3kOm66w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747489794; c=relaxed/simple;
	bh=/Ke/8Qo1pLuFPVpORLP1DzqDUGi8cE7MKCqTfPZgyME=;
	h=To:Subject:From:Message-Id:Date; b=M9cpwIyY2akDAkEFMfeYh35OOVxAhEM6mCbJAYjbt8aEDzsVm8LHvNGmc82+ExbfvQXeOgeUDgJy5XzF96WsHLEP04kyDzXXeH+b6umjg7/4HPHMtjkr43wOurXeYcS70bU+df33QUPrJ++V/BZXqMnw3JMeuWxFZ89oGSj8MUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hTRs+EOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hTRs+EOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A392CC4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747489793;
	bh=/Ke/8Qo1pLuFPVpORLP1DzqDUGi8cE7MKCqTfPZgyME=;
	h=To:Subject:From:Date:From;
	b=hTRs+EOIoOU/g3bHR85jyCW/z62rK2+PGUV18orPCokD3qSPE1IaRI0edspTbAirU
	 kvugwzNdnw2WOokj6oPufX+r/4YJ9rr/5Rzt48PvDA91kqSVxnw3bVO1RULqxUW2eb
	 BeYYxu7Nl3k/mfWT7SxV7MFEsMqcBboktJY9DIrxfAImL6GULfuX8b63wwVRpoJODt
	 6dsiqGCJQJgg9ABSZ3fhqHhTNsdUCy464lbevRgM8een8K6iFRXImsiS10JPCvvRbu
	 AYh12Nz61gpRLcboav8GrAmaP+P7caCyLsL27E2oVoqwtiNqIGzmocXDEyW7wWx1Sz
	 MkguZBmEHC78w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E96C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174748979357.25381.7196280562229837763.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49944a35b45e80b610a0ca5055c98b05d58585420ae6956a9daff55dd2e057d
Date: Sat, 17 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747489793
