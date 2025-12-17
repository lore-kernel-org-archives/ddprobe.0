Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6101736405A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765977834; cv=none; b=A6nTFOsBna7bH7Y18VeoAKO/I8fLXPeaWGuVOolk8xlB8/bc+dwK3/GtUOIVsb1k33toBnNVPSyHuodd28ec6pYVDHcXu2xL0Va6MzexkbSBmxdsfQP5RrN3W5Xv3Kuw5TuQu+5UCkGfkeOljxiDUbOuKo+XVBFECLI6g2M8Xww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765977834; c=relaxed/simple;
	bh=58VDYLA43T11CpI5JbiZA8btcB5PWwOM4RoZkDv7NdQ=;
	h=To:Subject:From:Message-Id:Date; b=IZNye+PEpHrI7rrtoatvKUSlidqrzy7JdWwr1QvTSggR88UYRF//+fOKBVVRUTc71JYOy/DIqlPtfS98LtMeFRX7a06jElgNCUb0/qpOlOYJW0AlnvmhJw/XTsIafIJFX+haj/mOSInjzSQyJBrCza6bF6zCUi9qSsXHMGWDxEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pU+wdc9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pU+wdc9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A396AC113D0
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765977833;
	bh=58VDYLA43T11CpI5JbiZA8btcB5PWwOM4RoZkDv7NdQ=;
	h=To:Subject:From:Date:From;
	b=pU+wdc9L92PgTm0t6ZyB5UxonabV+zFqhwdDG+MFrusahoIuK8U3pY2loIENqDMBl
	 RpeqEkb32/qd39jf1VPibXJQTzjDnorpIdxMZmC5mgxWmj7TNHf07OUdbDMVDGGm5Z
	 f+AqCUZs5Z90KOovOXwj7qmxmBxSxicy2Q1YJKwwfVoTXrjJO5dq+B87xGGeALHtcW
	 J2aq9ncupXWIKq2In4VqlrjlMxCmv2ph2XenzynMIFyyhRpkhkIo9wv2Tb7gu1W1YY
	 t9NhKFBOee17hBcw4WPOVMMH1P1cM2gX1puVXYVUCSQgrJ9+0/plV3GH0+m5CL7yOr
	 zIePMU0RmLSvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 910D3D65559
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597783358.31395.14700964679807133464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d696f94a09ccc7ff5acfd33b9e1d0172d5ae5cf820f5e5c828b216a3fcae758
Date: Wed, 17 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765977833
