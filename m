Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417F53C2B8D
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785193234; cv=none; b=RcJwEiEnnXUMWEYhmrUxAnV5fCcJSbuu7C2w+5dI1E7ITadAtn0gzAtP28u72lvp7S+RXtVsKjhk+Mtf0V8mzRgdpJkgsHNVOeIN2sGA++66ox9kl4gQcfaQPhm55q3AvMKNsGu/ZFocJc7PSA3j6XRCvXwUxVXjhHcmJrZbX/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785193234; c=relaxed/simple;
	bh=YANEWnzW1XWUJ/gvwnMPMLtQuC6SkUYHqb03UlTMNOM=;
	h=To:Subject:From:Message-Id:Date; b=jrwpKcHzXs4qrvBJ3LnefQGJMgKnfMsSw1ThSaPN3+J4JUtZDiSypJHXde2ihwmng+BN55DeQLQSRyPD4qqA5G11FtnRe2SYnHS0mOEN3aqa6yg8sw6A37Ox45Zh5EIBDjYhzY2EqkqBvpCYKtS9+HcLJrOREprFOd3OtwqaGrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ciTdwX5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ciTdwX5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD5B1C19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785193233;
	bh=YANEWnzW1XWUJ/gvwnMPMLtQuC6SkUYHqb03UlTMNOM=;
	h=To:Subject:From:Date:From;
	b=ciTdwX5voVSfxWAd4cILJStZVIeuRbFncup9BmMkgRujHiEFYELrndKn+9jX4Av8N
	 nMUveYPDkU+/Moydv3nXPMcI/MmByyMVfgTbh5B+4nT0F5X+mjtgmuEAWeDh6hlfBz
	 jjzpzBi22JlTe5ymYKME5kEYbpBmL44ZbmMo1EbT2Q0XWh30x7EJJemIczKOe2b5Hx
	 /bzqqyUMtjpH5s5zJMpSSExpWqO1NgTH8lvfcN+TOxR1Mj5IruQ/MAtgUuX/4cPLF+
	 ZR2NgdqJ9YkEW6MvdKzaWwIUED960u8CyJfLMSFZn4sBVAqt/BKThsbNHQNHyPmUZm
	 oHrZ4wYOHwTIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D77C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 23:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178519323368.11743.7993886544218230913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b43cfd4f128053f699c829b661013395fb1281d943f98af29bb7c543525fae6f
Date: Mon, 27 Jul 2026 23:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785193233
