Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46795CA64
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743656394; cv=none; b=Mn+UZ00Tdk8MWAJNvl9WJYLg/K4wwJEYblHYMQM1JJzbUPMZxODPefoHRIY/gczeh9sk2/mABrxgflJO1DcqKmBZ/FQX6Mh2toBIiJJw4O5wxlevIv75I1dWXqCE9L5lNNmDh3JAnu2aryyBtUukpcZtfFHIAJLDkWV8Y5/WsU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743656394; c=relaxed/simple;
	bh=m1pC1Dtg82fIpSshKR/QJI2gjALG5btagedtq5JNakY=;
	h=To:Subject:From:Message-Id:Date; b=UbFKK188dAVga3eLh+2vuxAEGizcJ1U+mYjwHP3OTQF2mDKk0apEvEO7+c3QVQB26ZFlzJJ1BFO1Q2YJyYJvkuk/ae/TNwdmeC0lPIvQrbHi6hOV+13ymhtYs/aiDSE4Jz43sWdS1jTg/g3gR9rfmOmzg6ygJMGFt65CuiScLlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CmdYCRp5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CmdYCRp5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B362AC4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743656393;
	bh=m1pC1Dtg82fIpSshKR/QJI2gjALG5btagedtq5JNakY=;
	h=To:Subject:From:Date:From;
	b=CmdYCRp5+nWq4O373ucipuVVP94UdHriyaGM3oje+BULXBHaK25WePwTMrMAZ/xrV
	 N+9AMZjcttP0b6xf2pYhDjNmguZNczfg1exZw4G9UHC8a3peViW6P18HPqV64yUpOI
	 9/CYnjT18hvPa9b6D8Tp/LKXcJxnEsUgNAgivS2x6xGL4qqQ42MXwilzCjGEwwXIH9
	 53vO/QKpuRZX5lMo2WBJSpRUb5xbl022E4OIRgJKmwIsga3MBJr5vtEiftFdwWhOzU
	 7VUyoqLrXA/V4mdtIXgy3agqH0lUgw6KEyGQF/88U0lqxaV76b/D22d5LZphawN4PT
	 zlFWxb6hSeEFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B604C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174365639360.13324.4558651909514872517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbdbd0a112b28239996da430b05485c6afeef7495e7be6aaf2d7016a35b29f5a
Date: Thu, 03 Apr 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743656393
