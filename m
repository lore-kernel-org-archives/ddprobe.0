Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A091E515
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742300394; cv=none; b=o4vvHts9LFhHcQslL5Uaa0odJWjogUGuPjfw2WF0vWLuEc/1Ol1Jm738yLIXq2PAGV5+Ycgh/fZT4Inez90mhZr0KQQAmy3yjfPeWgpow/6Jifik3x1hHZmnr5O4kaLshXryKTzOYsKJq2mW81MHSxzwofUhxGqQwiETEVWaUF0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742300394; c=relaxed/simple;
	bh=d83M8oKWW6Rs6Q+aEscM5cFd6g4AO60rT1q9GBGhk7Y=;
	h=To:Subject:From:Message-Id:Date; b=oQnNjxRbsZQvQ0b8a0i95sRigOfTGkvRa8ODrt3FoLlCfD9sTU2yGcxctOYQR4d8vDi9PcUAFc2douqVSHMhOiDME+QIIOv3fFSJtYz/f6KcFfHNXrBO5TPsE0WX3ecT274YPsf8KEmGEDN2i6Lgqsn8NXeZYyUotb7pdMb3WM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWc9+amy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWc9+amy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA1E7C4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742300393;
	bh=d83M8oKWW6Rs6Q+aEscM5cFd6g4AO60rT1q9GBGhk7Y=;
	h=To:Subject:From:Date:From;
	b=CWc9+amyfXtoBNkWRDU6WUojHyMoTc5jPkwG/FtO2FwMxTxZvuG1M2KsY1XWNNGTV
	 DTADx5lQIY0VIQNw/F3I7EofalOubBL123rGYocIzvVxeREDErHLiU04494trnTXTa
	 arnHUeMS98pB5ukqjWqpA2r+IbctaXcN0SqymBx/akLX9zJAYXtiGzUEFpboQ2wye8
	 RBQSvjQCiV1SEPd4uUt0gH/IpT79drOkKmqBrmtIYDK1dcPWAlC4xjJf+JpctaLKf9
	 6k0ly7hn/1wGMbhofMZ496H1CPqwJK3iIQzww7fKjAtXhNhtK+Nw1MAIPxTQ0jK1vn
	 gLCfqSmRhLoBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AB2C282EC
	for <ddprobe@lists.linux.dev>; Tue, 18 Mar 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174230039367.3947.12776200826801893748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f088d9abc2bd3f3127fd96d94d58b2c9a96596fb77e76637da9898c4cfb59aae
Date: Tue, 18 Mar 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742300393
