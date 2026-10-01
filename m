Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AF58386C03
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790844034; cv=none; b=oDxaKdwQMuu8e03aJYGBep/sSAJlNT9pYwo26fe/X5keop4DHVijTmy2o+F9jvFhlyov/7Z7J8Oj/enZrWWHwJHZ31PR+sThpr6HD661asys/WXbeN5U6doawIGYYKqumXlAlzNlUU51HcVRmXmFMIA5jC48B5yRVFMNiFbVRW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790844034; c=relaxed/simple;
	bh=w4adlf0PXAwrXo+oCYC3HN5cpmZkir13mPwYZXGaomA=;
	h=To:Subject:From:Message-Id:Date; b=mUxruLEw/vKegRr0Y/En+y5o2PLvj7gwyO35FY37nw2ITlTZ/M1abwM/X77nm7BCY76Rmy1Epie+PmRtvJAJ0zoneoECyFzM4m3LmpU+1VhJC7NJHQL/XiZkiw+WNgK3jiv1WIjXR5wHflFoeVzeGR5g/pRsOPpHF1OFXuKXO58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aFBdwKgB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aFBdwKgB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17E9C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790844033;
	bh=w4adlf0PXAwrXo+oCYC3HN5cpmZkir13mPwYZXGaomA=;
	h=To:Subject:From:Date:From;
	b=aFBdwKgBXY8sjWC5mV6Y2BlDY6Ds10WWX6wB2B5cPx8bYGevPxw0feYPPoWV1GTnp
	 d8k+Mg4Ff0zsmXC/5/Um0QtvWHWIQ05r4EaEQSVjk5sD8am2eOk0tRBZJjobfvHBtd
	 vSzWmPeKNN0K2mlfvnNAjzArwnZo++rc9Ux/n2zSq9cMaEa20zc6NKguCkngRDAej/
	 /9cPUxOedHoEPFJvxDBkF7tCAiis1Qo5xVqQDjKZNu5x6qZ1ftg/UfRuYzT97Mlp/Z
	 5ZtDNMx0SLKABrjjTOixlqlIAZerZ6AwKwSGgVzCvWKxBd75JdXMSvaN8PMc31u6Rv
	 gtCTP+C3R/kHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C9CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179084403369.788.14476768139189810615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f70ce1996a7cf1bb3fcbb9331ada4a3246c55cd444452cbab9f3ca5c60db6162
Date: Thu, 01 Oct 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790844033
