Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4053F2222AA
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784493514; cv=none; b=clugpsozPRwdPkeViwF9lHNgyGIgwsJ6CTXD+zmNX3bi28bOuUGj/apfaR8ie5+MG6FOeCs+RjU1fpUUYP8/HWkUfts9g/O4Qo64nKmg/Jnk6DR/Mf9nHGujgMOgbs/5DVmYrBdPRWoC3tjAkxiwVe219OpE3s8SnZNwBL6Vplw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784493514; c=relaxed/simple;
	bh=Wgu29WLbyS0IoaABG3CP7fTscjntYbfxhoLONUh9B9s=;
	h=To:Subject:From:Message-Id:Date; b=N/1gsqFzGh5MA4X+5IlpBidmgsEFnncregOd15jxKl1mzx3VTYypnyft6JfUAOTSY1sfNVRAQeHBKjrFpytt6IY+1Yh4BaIO93oewkgjz7XDYx/nSbH0xZbRsn0RTjz4BvHc8HYLqTyYF1vKSlGl5hHzyhN+GSNFUsBn+v5O0DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1t20yJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1t20yJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC7D1C19425
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784493513;
	bh=Wgu29WLbyS0IoaABG3CP7fTscjntYbfxhoLONUh9B9s=;
	h=To:Subject:From:Date:From;
	b=J1t20yJ+iE6u4/YRqMql2uvnYovBgOhovaRg4+tXon+Lz6+bNMDe6qwlhLbmD6pVK
	 /szRaypqeCwHSYwmrm4g8/01q4KHjIZ6PY/imz2QWn0PeAnm11Man2VkveQ6nLTfZa
	 UBvmi2nUDl/GiyTAy/V/qLuxYXbEM0RKs0k96u6UnsWncRSJK6Gtoj/IGYvIZYoKOW
	 unxUFZpAMfEctcX6EqNAg1c4dEscUB88r3gKW9IR9UUuE6rKl/zGH02CVHrJ/1zvur
	 iuKomp6UyKwHtA2O5kdIaTflPNkiFp4VrtjY05McIKG9EWUX4efUAKP6HOq+bo4IZP
	 sbARA1mkT7KBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D7DC4450A
	for <ddprobe@lists.linux.dev>; Sun, 19 Jul 2026 20:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178449351368.26923.15547638340676742784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a70fd801b2ba5dcc29b5adeed18ea12be8cb29525f94266f88afe1066bf4e9d0
Date: Sun, 19 Jul 2026 20:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784493513
