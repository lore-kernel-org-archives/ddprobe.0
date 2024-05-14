Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A76B14287
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715661143; cv=none; b=PMJnQg1xcUMal4FB9BLVhoDvd6qImR5Ejd1UDj+SYrPosOOTX25QA8SOsDgkiloOz1BC5vtBF9ZEzz7/XBWNJCCzxxWBv1Mtyt4KnxdXZGSPGah5TN5bJ3hk/7S8GAsgNvavpkzKqhUetus/YjxSR9HgcCfXSyo4DjFmRk/2Alg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715661143; c=relaxed/simple;
	bh=wjj4lFY5xLx7qX2K6PvjnMPwz2CqTToRI4lvbvc1/oI=;
	h=To:Subject:From:Message-Id:Date; b=I9/xJn+FFDDBmdgup4CTp4La6FWQNAAFIdi7Zv9EcSsC+EQTCnQ3w03g9QTgcYHMOwNGY8M9xxJPtGOjHccV9fBGa4ixzDRLypo9IfvJabuUxhIhTzipIKcQRcsUYSBbFcGtx4swqsb1xLCcbHNKUjQI0qRDua74DlJS3Xpd25A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RCPzjyo7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RCPzjyo7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7BA4C32782
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715661142;
	bh=wjj4lFY5xLx7qX2K6PvjnMPwz2CqTToRI4lvbvc1/oI=;
	h=To:Subject:From:Date:From;
	b=RCPzjyo7OFh4po4Cp2z5MZ9JXDUWJQ5a6r8qM8sv8P41nZADEs6jDDg4JlvOUoXfV
	 aRiX1It0/eINExwua3kBbWD/ep4JP+ic9JzOmAnUOyp+gASob4GAo+QcxheS3JD11n
	 u4CMMuFLh7O3sC5tky05FDyrvJFvJkdr/3225leArPcXvOGtsTy0h9+GOr48Qtwq+Z
	 u1+Cqj5PKxkyJF8PebHBO2RyWChM+ULAutrEsHzWCqYcnNM+BRsIY0YOGnCKEi6/YP
	 acqlS9NfgPBd97TLl5B7QAVczBTCkOWZaXbYfcaF+M3tdmNmQk03GYUdueP5U5ud5H
	 DPCH5E1acxZDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D03BFC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171566114281.19315.2275929578607937130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54bcb3ba56f461d549dbe5aed96fe2a0652f983f35c3cf72101f4377e5b5ba22
Date: Tue, 14 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715661142
