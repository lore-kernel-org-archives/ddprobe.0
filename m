Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DE15194A73
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743650394; cv=none; b=V86nZZLuePQKN+1UPQKoEljRCbXMk1JPrJn8JZ9Nus77QUDksZkt41YxgpnjWvk5OePb/uioKEfxt0zUNdEC/QmxbCnCwvdJvxO+AtMUnaziXSd8CQ0c801hpNpoFaN3zxYPR0dBdXfof2cTaGHc1MFXqKac6Vu0yQaxNrTa3q4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743650394; c=relaxed/simple;
	bh=R0Mj86Ca3oPWFRwiCNk60RRfE93uEdD9L0K+RfNLb2c=;
	h=To:Subject:From:Message-Id:Date; b=UojP6LasEOrXGkuZh66n+KogUiuVQFKftBaNLVIhSqHGfmKxPJnxkeQGwayQ8CFlQa26T4G7ui/2nu/qrSleXDgPg/u2szL8jyE+/pBWBUglEkVC8fV82ZdCVbARDGLj+U7T8lS2QcyFdnx3gUzrmxMB6nBOAVSIV+VLBbE0csw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MbMFg6QU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MbMFg6QU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD26CC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743650393;
	bh=R0Mj86Ca3oPWFRwiCNk60RRfE93uEdD9L0K+RfNLb2c=;
	h=To:Subject:From:Date:From;
	b=MbMFg6QUi/MjG8OPV5jD07buWKwRSEUyozSIFDWMnPkeUcyFTVtk6MufpU4/tW8fy
	 vQ7Ys3dkGnHLIVhtC/AA0QDoQyaUhM42kC81Y8gnMdGs6rUn0AE1FIJLszjjhkHkve
	 Oxu1DEZYa5NbiHH4+o3kTGaUbD0toypW2lMKJ35l8/KW+/2Qrh85VUGExEVEEmZ5QG
	 b1LceU8IPKmHVpmLFVJCoLzuYOFzz8E5iXFCb5Ke25hGXniQKKEEPiJRj93eAOmTUG
	 cKNVCJClCfguHYOe/b64Eck5gz1eWclI9EjQfv9J2uEpOplbO5vg7QuwDvmRKZdMRb
	 KJOG4u0fwzrUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACC7C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365039361.25753.9453705548566831463.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59a51e7cb0c3ae280f9f8661db1d3f3f2f0c9da8a54a65d3d0f6749f87969c3f
Date: Thu, 03 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743650393
