Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F4346FB9
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744340996; cv=none; b=W0qMof2KurZU/DtF+9sKLDPlwhkeMfEONjGbH652nK2JoKPiXsFq7f1YC80PciwnBI7+JLDCNziR3YyDngJ/Yg1dZmf0uX0/5gBTlYu76wOMVMYn5ZrLxfy9+Lp3u+kpUDFSxs0gUdFACpGuK27hiZDdFWpUIydVGPHN+Il8K4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744340996; c=relaxed/simple;
	bh=o6VFs29RpQasu8bYxvo9O37stJY61Qq4+qnai8Vrrr8=;
	h=To:Subject:From:Message-Id:Date; b=okIgxRXoJ3SudAQBeT1fT/p6ffZzVG8VYFdS5Y4smOXhDMha1JdzJmqshic9kd9+9GNWSWmodHlacNzpnEg7t8Ca/lyAUv/B1T4ye+FUe351R4h2eDXhztXsYSlgHGHippyKPniKyWAbWXoiBN93FMyS2bZFtNhRDum2pGD03mc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uhJyhMDv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uhJyhMDv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE7C7C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744340993;
	bh=o6VFs29RpQasu8bYxvo9O37stJY61Qq4+qnai8Vrrr8=;
	h=To:Subject:From:Date:From;
	b=uhJyhMDvSKMVroJhqS/JN2OV1Lx6/dsRuGvOWnGjFSZeeWlN8Wjmvw3N6EKa3gdsF
	 ZcaH0Bqtsf/RXvHHtDMsf2FjLltOoCpYMK4DYNocqUV+u3c6UCvoN0rPqfBmESvPM7
	 fbL2mknp+bv3D9smcXQT0nMZgOiCQX4hhM/N/oezYDLFUe5bOSPT8ZNtz+BYseC8g1
	 pF2u7ViPW//1DKRKQQDcSOicGUSKrwtOLrHl5dm7M7HLOSpk4FZH1yNvXMZAhgYD44
	 UdUB8OO8feiH0se1zbewY9V53iAwDb7dPW3dJZhQRKHNmtf3Xybr4HKs8mCKLp/XJ4
	 OPEwRKXbgBLPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A43A3C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174434099365.28908.13289956803787165451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27ee570939696314fa0bfa8dc75a6f94bd24955681b2d4a6b2e0535092c5d85f
Date: Fri, 11 Apr 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744340993
