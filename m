Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED1E3DFC7A
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774967094; cv=none; b=Qh+5eqjjZG6o5hsoa9KkgQC1+VB33YcPLnOSJyxs0oc//FCqHSGGT3bJ8oMvKMe1Wm9CKQnLdVZddp5m+nrc34KM6vc2+kzKAyHzN46dmV05n88dIhetliE2vekjr55j6h6l5DosAkGqptShy0Kr6swb/nJPKaS6lZO4QQHDgso=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774967094; c=relaxed/simple;
	bh=aBozwRl5zuX6xswluYEHV2k6O2H7N5vkIwOIpEGKZ1c=;
	h=To:Subject:From:Message-Id:Date; b=YVAO9oBMKDzR25tANksP+7RkqnLZel3BEhFetkgRDvMoFetXyyy8/xYmcm7nsXzAZZa/RJoEuQdFs9v4ih4jtzgHLtUifJtGiPXcHBMNMG7JxT3fXGeB4LMb7f/41YLhDBDZgmMgCVf3b+BXAacw3xyv4CB+a76LdzOHFHDcdY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pso4LRSD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pso4LRSD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83D3C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774967093;
	bh=aBozwRl5zuX6xswluYEHV2k6O2H7N5vkIwOIpEGKZ1c=;
	h=To:Subject:From:Date:From;
	b=pso4LRSDDMw4dHUy878YzBewqLm6/BX6zoguX+E2BgaQa3iFOdI2ErBrf3WminPJ1
	 XVkZaB/v/BWjWBFu15GYPuFHyRwQ3NDjptGY7VRqGVLmUBqybyWjGYsf3Ey/Dq4UYD
	 gaRw4DwywkKYql3wnl1LNXNK9upg7Rv14wYrDUM0AfE7yUUT9PmQ7oteG2QaaMj51d
	 oyzhnX30wH1tBaX8Nw+VXfv2jEcFWg+95omIkaJqSobqMJWYHG23prKO/MmitSX7os
	 e9rdftpTTS3uB0jTrJb2JyN9fMR601MeUr38pLXDjCi8GvDr+ToFm/jcVeRfj8HqDt
	 Tv8t6lboPLWIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F71109B474
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 14:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177496709360.32762.15766117210180802112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8fdd2452ee516868a0faebd09cb35cac90316d2ea83775115e05c0d829811fd5
Date: Tue, 31 Mar 2026 14:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774967093
