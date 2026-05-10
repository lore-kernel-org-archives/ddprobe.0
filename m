Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADC339C00B
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778433034; cv=none; b=lXyb4pJoXiEcWnbShyjrRHnsYIl1KxRD4odohDklHMaEejyZhHm7efZI3iDARIDndw149wz2XaxkUjzIKqmVfHQTBzFu+wNpIOxqJKJr/5v+a2ehpmlDnwFBwRki5ZjwIFhsrZyKD6mCDUjeqa3m80OGmWWY1sPgt7+MiDe9s3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778433034; c=relaxed/simple;
	bh=uUIdE4Wu5D3TuozpXfxRxQGlj3xCklZXBDcyr0iAL8A=;
	h=To:Subject:From:Message-Id:Date; b=kOyvs8eu3zrFD6tqJKwxhBFGBRED6mSfwSJaHfXg4F3yn4XTNj4lvgNxaEmYrnmMYYZwTHKa55ZRGrLccJdysGpyArybFwUVm+VUSSZred2XeEz0YicXBuNyrpRJ1iMyp7f5m2gbtV5SSDv1Jvz7lJKGdvGHi63jQIWRWYM9UWs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OC0Kk/88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OC0Kk/88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58DAC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778433033;
	bh=uUIdE4Wu5D3TuozpXfxRxQGlj3xCklZXBDcyr0iAL8A=;
	h=To:Subject:From:Date:From;
	b=OC0Kk/88rOzY5Hmj1XNLSMUga/CiS9ZmsKnJG1Z+sBeUmjZgF4ehpL3wLSSLlcEM/
	 ubq9cjLE25OZfVU1DQeIj6KEh3vSAGEdy3iHLrBO/LJVH7Wn5uIfEnoraSDWT7iGEh
	 dl6zQKjvctLFHaVPWx6ncPi9ysg/ykmZAtqPqHnr8dDdZugK9IMeo2E3sF+mxsN+YK
	 KEwb4dSO8gaVvOKTtDVNoDKb4i1DWhC8f5G3m3bWJ13XE6DtVAXP0gmDHDIyuQQNtx
	 8oGXPldd3MmtK+NarUHfrjkdyynawYMHNbj6N9UdB3/lrch84g+WpG6LYQQAz2f6Xv
	 ASqAmHYt+ejhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1424CD37B2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 17:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177843303370.17010.3363275247949369560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83ec2b740409fb925e3852e9cbe9d7c3725fe3c79be881246732a9496baa1545
Date: Sun, 10 May 2026 17:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778433033
