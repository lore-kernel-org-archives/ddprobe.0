Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27C0439C00D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781209594; cv=none; b=KSXMwDSgPQSH/DEeuOc6bxXOAE1fDqzhevccVdAS0n1wPSpLBo51HcpkDmz9Z8sDVj7j8kf/QldPgN03qfNL5C77ZtaXbbs+3NjPV9Ut0BxQbvYRc+4X5LpXmNRAgLf98jrMpuYV4Wmyon2TYnhf5bKQ9p6X3Mo3fHfOU+70LGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781209594; c=relaxed/simple;
	bh=jM1xDcUp/n8UZFMf+k2hYg3GuNx/fkbYfZaH4i780SA=;
	h=To:Subject:From:Message-Id:Date; b=R/H1H+11PyXdbV3GpXq750ej0Xrhs4wx2PrHcigQrJKNcPMMoPp86tTODlRYEF2fRFNI5Q5ywMCvilvXx8xAeDrFp/09mzm9/g6N5X/UrEYlWGqy5zTEaVDs/DK4gco6LwJVGIrK7MgQ4jqDxYeRxALPqREZf6ELSnzisvUE/h0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P7c48B19; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P7c48B19"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BFEC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781209593;
	bh=jM1xDcUp/n8UZFMf+k2hYg3GuNx/fkbYfZaH4i780SA=;
	h=To:Subject:From:Date:From;
	b=P7c48B19U2wFxdMmAJglXG4wc7v+xtguJbjHq4Fbm1rpN6cWnMqnsSZwRfvXwJDfw
	 IdIXxzFoM2Aos93ok+GdmCsscSmo+zJmb+vBDCcFBbFHHadgb7n7BrStx56e5MAkAD
	 1YN5OvL4lkOLIAIzx7PgEY6Jn08QT4OkGheXhC1XWkA++ch8aWp1P6qv188fsZ9wU1
	 bPAQJ0626z6Wi7VZ7zlL9D3IXpws1a+J3rmy1VbSKXWdIqBZmJu6aTOf37INHOxwJ4
	 XZVBMrfVAzDBWCmxqfEs/jVfKGmqOOwhmxBcb6bq+T16FkU3fK6HbEspenC3YWy/iX
	 Ag/EIux+8SL5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC61CD8C9D
	for <ddprobe@lists.linux.dev>; Thu, 11 Jun 2026 20:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178120959369.3290.10550897276213711590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e836e77ca2aca410a8ad6fbc2e8874c37347aec03a1d4a0457999c4fcdd2e16
Date: Thu, 11 Jun 2026 20:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781209593
