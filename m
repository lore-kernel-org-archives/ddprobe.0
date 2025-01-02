Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3258518F2DB
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735795554; cv=none; b=hTdRbBVDwPyBhj6dkFk6285KXDWr33s86jAzLKK0fSRX8cObyljV+HfF3FBpc8lYboDit3h607f9BtCdy09PAIpfJnRqErD9LHVkLOvzlbpPiUZ/Dv0cWA7Pt+NmL51vGoc5CbFRWu1uic9qd/JQfykIrLahkA+7v3++JnHYL94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735795554; c=relaxed/simple;
	bh=UPA/sw+6jwwA1LQlT9i9rrOgBVd6siH1Z3Go7LMvC3c=;
	h=To:Subject:From:Message-Id:Date; b=a5bpvQ0zchVOHCXPaVJSqFtHk7+bk9VIvcOgjalSB9Vi1xGKaU+LZZytoxGb23szLR9fDzLHZdBxmgIXX2dsMzIVVT76opzJ0tbtI8FLe/TKcLdDEHXQsCG5c9x/aGs+y6cRgzKt593jujArzsumNkZ5afrQ5rvY6xC4V6AXhrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMVOQP+c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMVOQP+c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2CF8C4CED0
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735795553;
	bh=UPA/sw+6jwwA1LQlT9i9rrOgBVd6siH1Z3Go7LMvC3c=;
	h=To:Subject:From:Date:From;
	b=nMVOQP+cBs+XqOeJSXCsk3KYVvlGCC03E+XDOtlg0jFFb2A8W20Q2GrP/3cJBu4vC
	 3m7y5Gy7ca02EBQUPAqsMSO/R2VhNoxiUurFv4Yk3QRHwgI461HenwOzPWaFagxtVT
	 jPk5G4qN4sF7dRX4Mhl9dk3jRRDEsDOZcjQMfXMYCAr5x3cvXAPGOeUlcJbzPXdnoD
	 hNQ+5mTouiatNtZm+U7ys7o1Mud5DmIoohWhGULY1+BJb9nZZMJLCXZ3RvzKvKgDym
	 QZIC/7tBtwnML0IH0hip7+B2GleCkzXjwrT2Pyga+fBseEdiEpe18aPkETBm04kweV
	 I8bDTdKxQuwmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD15E77188
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173579555358.16372.13482860808967820909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a57b3c0222af29b96d004230787cce77cc972c961c6f9e40069a9b267ab0153
Date: Thu, 02 Jan 2025 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735795553
