Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24D6F257AC6
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759662594; cv=none; b=FZISA5S51J83lF4jM8qNpSTk9ELMv6SK7J/aXJJSkvwMLnXZxay16IEanA43Dcsl7NXIaMgDH/XRteiMJYWH/JX7seeNfcYU6Tu301P32d2g9jXgNzvoPMWx1rd/GWZBCTKg9uuYiguk4fNd6Q9IegDsH2nvtUQraDc7xryKzmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759662594; c=relaxed/simple;
	bh=GlNSG4cZhTZLpECPAObK8jSdVe/UzFDBU1OQT0JTF64=;
	h=To:Subject:From:Message-Id:Date; b=Dsu6x4khuU6ji4PPghSx+0okqrzh9sqBVbpOp5BtzyFxuReqlB4HeScIQkEbEXDAMHXkDHhGVSNLNuR4uxH5X+t7CH7w8esWjSUv5YABtccnL1aJjg8itlxq2G8PdQ11yHPhMFgfc0i+IePV0Kj62+3Bp+BVW2fNwx+GRBbz1cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mhDf8YHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mhDf8YHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3843C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759662593;
	bh=GlNSG4cZhTZLpECPAObK8jSdVe/UzFDBU1OQT0JTF64=;
	h=To:Subject:From:Date:From;
	b=mhDf8YHVsv4Xh2xaCrELAbhvINtVmhqXak/aKc9+Cs8K+ip2txqVNcGYgmO5WZNFS
	 mING6ZpSDWywnafcZvzBr/hC9XNr514ALv4YiHxd066A1pLUKZ//K6+DjL4rw3gaWB
	 NEx2134QjgsGwU7IpqLbYr4khpWH52dbCMC/xNHG9qgm9wmhQemfVyRaxWePj3iSjy
	 qHwOL7vxDxbs7BQrQSHWrGS/YRniuLR+r0Xy4kqk0q23NsnPSnQFfWBs5HinKo9UWY
	 jutZilAkBb51RuXhnW8MnApNRLIvLdRO26wyk8LAD8svcN+ygcs7+Jlvwon5crgI0p
	 IkfZqdcaFIudw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266FCAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175966259357.21799.18194895727479330892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20ddf03d8a2ad67b24aed530420dadbcf959f81d6035d660604d531fa5aa2edd
Date: Sun, 05 Oct 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759662593
