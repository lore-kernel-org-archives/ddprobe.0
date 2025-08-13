Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F60927F003
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755059394; cv=none; b=sEKo31iHjVF5hmbDJ4eUM5aOCS9ZIzksLGbdaP1fSO33AFDq2hBXnLqlfE8imIhizB3Oe76oItExeciaAjlM2az/9iqKtv1BK6utu3zBKpg3fZEztFcVYs6z4DsChOgua4NThwM4Md9txhdiYkY77C3y0SZ6TZ89asdBMf50uFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755059394; c=relaxed/simple;
	bh=e9phFb8oTCDC0CWcMDrE4jybV80gUH5cllXMiGmdkH4=;
	h=To:Subject:From:Message-Id:Date; b=qz+iUprW41AagFNredqZ4JlTHaHJIkqu3yGnhkewa7TfKqtBBEIvZkteEeIItIqEgz47VtPx8xlMLnFofFMB6HqHuAYcBOU0FLa7M2dIYhMnjLbafA8rvnHw2Rn18TS8a85W0p5SwahKU5bmWjgpU+vf6ZOrm9Haz1QaPmWsRxg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gVOGHMoR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gVOGHMoR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0743C4CEED
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755059393;
	bh=e9phFb8oTCDC0CWcMDrE4jybV80gUH5cllXMiGmdkH4=;
	h=To:Subject:From:Date:From;
	b=gVOGHMoRMpNSpkE9hTslWI5u6ez3axdShZ2rSBFYP8X98O+Jq47FE/mQRDQAZYNrf
	 TfVLe3x4IgIzYozFOsGAl2bUCsdrRvJVUcwOGY9aW8eObRmxZlcPPDwSSLxYL4jwFz
	 dHM/rxJGArRjxJcJ8vseb8+ZXFbwtEBiEgb8nxbBl68D8PyOuSLNEM5x1zFzTHDHbo
	 xrPjGLa8+rTO77IwEUSJHUkQxlzXunea/b10ViwDenUmTxLgW3i2nnCut4wJ4DoH4E
	 boZKyZfMM95Q5eAQE7AkVHRT+w+6eEBaeoPGURonSYEX2azTn9q2KuBaWLiQ/XmPUx
	 R6BfOAAYp6QFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99248C87FCF
	for <ddprobe@lists.linux.dev>; Wed, 13 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175505939358.20851.17515833284305893098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80e5867caa9d87a35494668c931624df65a6b1f05c6212194e5dd3a1600f3560
Date: Wed, 13 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755059393
