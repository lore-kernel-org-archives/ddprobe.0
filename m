Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFEA38F80
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751810994; cv=none; b=ufgTa0v2wt9JMaYvCIApLJV5Q3JjvD5ud71SFmfxaEkCc2FfEoUH9x0vdrGrf8HkTrIbGUqUt39LZM396t0aykncS0xcyPfd63C626q90agrgAX54/O/TORqiA+D2KoFR2nzjIEajrEf9zBtPDgXguXZDZ9u8TENXG9qN3/mJPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751810994; c=relaxed/simple;
	bh=Bk/wpf71E8p9ZqAaXmQgw5nfJOSJWK7fFl4fKo7e87c=;
	h=To:Subject:From:Message-Id:Date; b=rnRtDRT0JeQFtOPpXTaPMCamVIMyEdqC6Y2CG4/WxzDYSKgHZVPp2Tk4xbZJzgTaJ/01g2Cm2FvKqU7nK5My9cJiwTVUhlIVVW6GGU4BLArGreaOX/HoKo2lkHPkl/ctYDuLs5RpA0K+N8xfO8l2cZOtyt+gTpTIK76LGghg4Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z8YZ1IDn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z8YZ1IDn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F199C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751810993;
	bh=Bk/wpf71E8p9ZqAaXmQgw5nfJOSJWK7fFl4fKo7e87c=;
	h=To:Subject:From:Date:From;
	b=Z8YZ1IDnepNf5Lb4Bo/g0OpYPDIFcU2RkVM0VeAlT2Fi5KRjD5RXgL3usbWwC+P2a
	 4bNL8yPspMkoKUytY+sQmvuL1Pz+b6c61vliK+wmubGXrBtQGYFa16PJWKEY+DwLdN
	 hTAuTi7q+zzY3zQ6NzuRL7tvms6BfmgslzZ3dm6/8S7iCejzlTlJkVnvwJBHRn/q5v
	 4llN2CWgjC4WkOfktAQTLR7Y550JYzMHTsB4ixGwpcH9nn1siDpgN6GX6HrLaSndE0
	 A9E6QmJXG9ksJcJdrYiy97h9NI1yyhi+OO+QbUKzILkr7AQ6a0fcMkTw6Q5EepK/ve
	 Yeu0pLkCSWw9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DECBC83F05
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175181099357.30862.9700437195788121186.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22d402e58ae547479046426d3cb7ff99158ce298e31aa8a3eccd1df2aad13202
Date: Sun, 06 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751810993
