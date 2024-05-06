Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0DB71A28D
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714957943; cv=none; b=Y9j+3RMhrg3SB7jn57KY+utpM4COLwxQaWAe2X2S7Nx5m3nRFDkSwFdOU5bhkFsMe+WTCg51Vi2NNV+BHx3waBTtMZOR0ubTvTWi1GW7D0mEWYWM53LJr+WCKDftNWWSQb+sToRcQotFdCNA6Tk/RpTzaKwrP7B2hYEgqo0jJcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714957943; c=relaxed/simple;
	bh=8Elif8YPdGhQ9ehppBKoWBgeGv7TALlacYp9VA35BnU=;
	h=To:Subject:From:Message-Id:Date; b=NO3BOuEqDcgQAphN1vbmNbIEw9GwiRX3XuvcCm9k0x2QXKA9Q4GJn6Eoa/PJbdqPkfVXBJP/XP+bv6AB5l63P0+spt6lqCbBuRRP8g3bbPMbWJko128Fehfh+rzfdhrL+2chj5HIQwdL1AEmnt/Ds5jIdZEDaH3kgFcmgaIDO18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qX1wRpDG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qX1wRpDG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB46C113CC
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714957942;
	bh=8Elif8YPdGhQ9ehppBKoWBgeGv7TALlacYp9VA35BnU=;
	h=To:Subject:From:Date:From;
	b=qX1wRpDGYOU+JINFCQo9JHJciybyB+7axmlIN9Nxhf953HdRaRvHNvBWKk3uP7gd9
	 BvuzxK4nSS3emPK8ASH3MNg5pW51M3M3r8fLAGVXM40Rhl3unbEOhW1ZCQVYv3KAAv
	 N1cK89S0V5FdvCxqyFtAc3wf5SnRa9Lc2T+qbikK2G4SdRmypvYUcyqcSN28HoWNt+
	 1zSVQ6ZqmGU93r3SLuqTY33mI+CNMnQmI1dc/b6vx6/dZPBHTuMzCDIj4zDhQ3gwf3
	 Df3QHKLPGcQuogPWc1YFOpkSVpkcTvf0uoy3utkYacnKM9/QudauOthCR0IPxekWrY
	 YvlGVZCcbVEkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC49AC4345F
	for <ddprobe@lists.linux.dev>; Mon,  6 May 2024 01:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495794276.17520.9677159401236339478.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86017c74ce7b10ae24116718201e899bc9bc181d9181e99cfcd7f7ecdeb524d9
Date: Mon, 06 May 2024 01:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714957942
