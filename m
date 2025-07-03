Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D31B11C84D3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751524793; cv=none; b=N3uXd0F/QgYv1Bz1I75yQ3tZTEdusWZ3ctE/jnuMy4H5hUtcEN7k76GRHSHQ/pvuKcH6VbE8/LclImGbqHlAQTmPMRBANImpSKxSd9u664VYNpEP/De43sYtaCmd94oGQFRLq5UG59gvfYCL2tOCjLOdU/JOzsWj6bnYYepI8b0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751524793; c=relaxed/simple;
	bh=SW88izXqPFQc2dsUgpHJIM+W6xQCkcGiBntA498NffA=;
	h=To:Subject:From:Message-Id:Date; b=i4n2JT/EJcejVENc4gemLle6TADh7CVyB6jUtek1BrT0CkXwIdbUiTKa9E0IkFYSsXlVaRhRe6j4nN/YVJpo97kKgTAfSRhW9KZEoJA2pafjDnDUdFyHgjuldMeyl2XVCoj0piS+RnMtui7MLbmQt2yntW2hk6+FM4Z0S37elhQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhC5RAlL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhC5RAlL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0FFC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751524793;
	bh=SW88izXqPFQc2dsUgpHJIM+W6xQCkcGiBntA498NffA=;
	h=To:Subject:From:Date:From;
	b=RhC5RAlLpxr2FjLwJaDCjb34ou0ZbdpS/qiHliU4YDjrRU5RrWQXPcpii93gBQqp2
	 JIFPs71GZPAMRdFtyJwOfreh0mm2nsnXkKpPu8ncG6B09UdNtR2dTZuufv4DWxM/z2
	 rCNCF5lSxXuJo88cm5KyW8oV28InFFJ5DYDcsRtXIspV4Wjue+npK896MsRkhYop3u
	 35kCLtndRANXR1WDQ5k/fREzi4EqN4K+lLSp1odQec6RhEiofmBLRekb7eRheZrxLm
	 KkvCq1H9x4Nq/kd90T75q99n91gkn4yqGtwG8X4q2dRUehkdSx3oXcvOqHRsu8sq++
	 QRdRR1dOXmitA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEC8C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175152479362.31083.15983611194622805105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b88eabce5d885a8abc40679a49ca1fd9247b23fb3d28cb9ed24bc9deb2bc0d8c
Date: Thu, 03 Jul 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751524793
