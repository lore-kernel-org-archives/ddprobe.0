Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A34A28B7DB
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769183034; cv=none; b=qhfkl6DJNR3+YdStC89DCDBb6rug0MEqc5md59lA0QdlY+bN8Ky/JWWyS7bXFv+NPRWy3199lVa0Tw91B07NCVCbdww/Fq/3CBGa/ASuEE58ST/EKqgu7yEVVVVv5fJmx8Sp8x1fA3z64hpzLmsQU3uheqc8ZlgxDq9NXZVgY4c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769183034; c=relaxed/simple;
	bh=mxbnVJvd08hf2ULIEeyk5yH8cm/cfzbEbZ6hN8+7FRw=;
	h=To:Subject:From:Message-Id:Date; b=F1JDgokviJgQfvpdWZ7RA/mKdH/AMHb302ppic4mOuKeOzeq3bQf+0iYTpw2oLw3QRm486PWg/YxT5gBokzt7DEAugXPq0W8kd4WeAavr48tMddH4kugJ3HLmWCVSrXBcSIf34TviC71i3KetAQln5sqY+JvAo8CJCemgOM1/Yo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZSwv4VUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZSwv4VUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4031C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769183033;
	bh=mxbnVJvd08hf2ULIEeyk5yH8cm/cfzbEbZ6hN8+7FRw=;
	h=To:Subject:From:Date:From;
	b=ZSwv4VURiOuZJMQ+N+LbbTeuvTywPW/C0C/720/l3Kef+tXmHiT4aGLFmXjOXqOgx
	 RgfvkDiVeu60bkUWaEY/cfobJTIoqEGM5CkmxSiMcTheGM1VPS6IXwcIAUDRSc80nN
	 wiQj7TvM6EwgkwbgO3uAuSZUlmXEiW5FUYRjh3+ed8xWjMMfPG6YR/Qp1yPF/sETon
	 OpYs1CBE7qaSLyhutt+mi69mE7OTQ4noVpWSmnynuCy21EKUGD2n4bffxOpfItfnsM
	 h9DITwfuPahbUbybKIM4DZR3rdS6Y5EA6bUDBj6MuCxeRnAUCmz/E4i0q9VQ4jIpjJ
	 XqLCbUoIjthGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9537ED74EEC
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176918303360.5159.9031469472835210210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020a5f2d6de29a4ed8f052db1e54c12fdec7a3c1632453abe6b9fa10e17c68d8
Date: Fri, 23 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769183033
