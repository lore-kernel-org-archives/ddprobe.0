Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24700238C23
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756141794; cv=none; b=PfRQ/HcXNEcLgOrL+KDQBrs2p6dHOEJHYq/3yGXA1aAwl8sB9Crjfr9e7YajBhHfTRJM42c5nPqU+O793dAUwWJixYS2EuNHpX/9vm8rDsaIuDEt5dhnc0HzIK0Jmq7I/ggG52rfV6w4li4VRk90XY2UAmD3u1U/laQbEihc4Z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756141794; c=relaxed/simple;
	bh=uDxlsB+voQGjNi5LVK3ez7Tiy/d3SyBjeDXkBOdk3p0=;
	h=To:Subject:From:Message-Id:Date; b=k9iLEyFA87G5GHQaTjXHg6HuVBVxtB7kxg4BMUF8euAkwwUjvm73IptH8tnCMwG5Sq5ZyJUOpUtLOJNT/Wvd5CpTeuorUrHK0osawPb7yf+JWyCJX6U7NH+mUQYBiCaugDYQt2pvuu5pt1SneARdXi8vfF+0fH8hJV0I1knDr+E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lquku/dO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lquku/dO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4867C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756141793;
	bh=uDxlsB+voQGjNi5LVK3ez7Tiy/d3SyBjeDXkBOdk3p0=;
	h=To:Subject:From:Date:From;
	b=lquku/dOfOKML55yODWLhVR23we/T/J/tmW3ppSciwAhF/FaShWHXaM2gwNzuANg6
	 fXnketuxriYIInhVyKTmM5tcK3QvXUIMDJ3PmOZ7bLsAb2o7qjQurxzwKI1XVQTpDf
	 EHpFIAOk/qp8dTAVEpBGtMEg4caatmFf4mb0RYXjj8ZcH6zOiCHI7CDRFWPpXkj+Wa
	 vHGcih5EqNowy+U5SgJRBsapWt/nx46ru4J8/wQzwO+ol3dROMFyki3f62GKIYWtMQ
	 9OH77gW3+u5jyYUjaS1fHVw7EkG+CHKjrAIgHoO5NvhH4ajalcVDm1JcNjmDByYP+Y
	 QCgT90aUOkwWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE8ACA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614179357.24052.6449105454087827488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ef7e65ae340c68beead75b4e7c08c0643554b52dbbe1e388184cb6bf1048d33
Date: Mon, 25 Aug 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756141793
