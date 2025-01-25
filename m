Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AD9228382
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737847554; cv=none; b=YfM5U0wgntYEjvdmme4b+ENAb180s8Ycquy2pqvyQ12R4RIOgkV2YclAnXZ0Z67nh1Yw21H/u2e5aWuTgliyM9aLLJigCCrpPFJSQEcb/cbt4iQjFuiv3mogKDqV/l51gNJwCkNqrljZZhnp7TDxeA2yxaKxUsehYe90nkwzmdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737847554; c=relaxed/simple;
	bh=E9+rhNbnUaoViGYbHpruPPL+TwYJI2hy2bSxcY/u1Jg=;
	h=To:Subject:From:Message-Id:Date; b=sNoDK63/RTIdL9FfjaV71vzjzqOwwuVa/y66LX/oCaaHUww1CpAlvh0lApb2967kQKqr2EnCMT8hX94EDAxowyIsDeMFsRvWNPkiIE2E6b4FLp1DptGdRSfbUT2HJ3z/6i+QOqtztpY2ChLY/9qVm0TdWAdDpwm25Tx/dUKF7qU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+xnjZwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+xnjZwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF148C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737847553;
	bh=E9+rhNbnUaoViGYbHpruPPL+TwYJI2hy2bSxcY/u1Jg=;
	h=To:Subject:From:Date:From;
	b=g+xnjZwd855DMA33cfrD4bjWdhX/PlxbKezduCbm56FVIWddx5MVH/DDt2Gz0mO0b
	 oZ2pt8vyuc9+r5fnJXYcblr0S3TagSlM4e1ipy5rdwFdaaGm+3hOJXBEURnUYeDqht
	 i86YEwGFh8+MiURD64sLP2dbII0TVopttBs1yM9XbpQvqkkVA8XtHpnrtbz32By/3Z
	 7XjU7AVrllThSGqPb9p7TpA1awYStmXEjQLQB7yIpyUsx3LQiyTv8Pplk4mLmAtqlb
	 D2XYKVTsN6HnLDvHRDzXjVWF7qY4x2r5iDLI4Yby/u27Ijxf2gtfy3mzODfYjFShi0
	 Gy6jcOjzBIHKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A85CC0218C
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173784755358.25351.2921741845230454199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 636b4b9256d02b38a348e9fcc95fa85ed8528dba147e4d25a95f014018043c05
Date: Sat, 25 Jan 2025 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737847553
