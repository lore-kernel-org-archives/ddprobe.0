Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C2291C6FE8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760767194; cv=none; b=fcwtgpVFDTFJ8K+8Nk3hPK3kDMhBMQ3OgETCdIa4LUyJrgWMXmcq1GlWq/cf/BdvMzDzlTJy5/k2/YYH0bQoJlCkpOjpVPZrk1YiC/us/JuYQifLmqqCQACcqhJrZE/TmplWF2PxD+81M7kRksb9u+gJ5pBn09oQmdPU/Q52jjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760767194; c=relaxed/simple;
	bh=OORfMQBltJ7mqsrqI3Yv20jxw39+PFZlYsI2utOOetM=;
	h=To:Subject:From:Message-Id:Date; b=UPhZA9HY9LcKSpNmwUSYmcgelLKC2CHIiJnE1ZshUt5sCJ+AX+I7eRxGIZ3AH2z988HVW6iRiGejEnPhkWHCkrmA7P54gkSV5AajdNvWI/usT3lKF3iB4afXfVTHZCec+aBZHHH/xQpTPCqX3QRAzHAJlqz9Z9z48L4BePSqgZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q0VF7bRg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q0VF7bRg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A200CC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760767193;
	bh=OORfMQBltJ7mqsrqI3Yv20jxw39+PFZlYsI2utOOetM=;
	h=To:Subject:From:Date:From;
	b=q0VF7bRgfftNMdsRNsx2keUORg+C6i8C+2CxeLIRX/t4Xvk+x9tCVKkzY/1ePko3i
	 lS7xedCCooErFahoU7wviFeFM6Pubz3sZtZ9hX16sa674p+KEsDjc7m0caBMZVNeIk
	 WhJ/ptSR8utlQqM8dc0SafIHDP+11c3ZgeT9fWAZSpXncKP38epuYR5izL8vjO9TJ7
	 QBr52qtsWkNrWxsRRdmfKeJRwgTg2NZ8v0+brpdOulnX1ozUZrSBXGoXUdlIdtbR9g
	 /rdyLn655adbpBAvQAnDNHo8FmeNRv8mzxQVJL4wmlyD/7sod6ZHmJKmlfbHJUDBZr
	 Q58FDC2oO5ogg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DF3CCD184
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176076719358.20904.2348881594891556270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7685dfc482e5ae51dfb5d1637ab3a3214e59a6c5bcdb445a8458b85546a4dea
Date: Sat, 18 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760767193
