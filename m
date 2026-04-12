Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF5F212FAD
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775968654; cv=none; b=Q0hs6CqcryPafJZ+6Fd4+I/smp3y+dbZiJbv+VbIR51NdaNWVCSTg4RiHAcv1ha01z8ZhGBywXXRJ5XzdEZuwS5K6KMTJjqa90uD+0dyKNLnfPSe28XhaPPXmr19oQFa8yRD7IIzn9h33KeR7GA5q7jfrDFCLXVgEKqzatfBdRc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775968654; c=relaxed/simple;
	bh=kNSspnJfrafTJmki+RuZY4kN0tbklzV337ZlRSLLh74=;
	h=To:Subject:From:Message-Id:Date; b=UUoWD4/Kz3Xt4RzOrnf6S4qgp/8RhVBPrVnebGqvQCl1qs7ESW2zcZIFzLwOGDZ62K62sFxd8wF3KKHqpe16MG+IX1DesjTuOpmoCaY/HkHmocvglKHcT31ItxA+epZE+OMFznb5jEUahOGTa2NMucOoOqLFDlIXN/1FMOsMyxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSt+9+NE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSt+9+NE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C19ECC19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775968653;
	bh=kNSspnJfrafTJmki+RuZY4kN0tbklzV337ZlRSLLh74=;
	h=To:Subject:From:Date:From;
	b=qSt+9+NEPQW1tXXt9hS1qTpdGfLiKl+ua89YGNrR8vp3yOyXX40NcY49V9BIxD1W9
	 OaZqG2/6q9wdSqJ0vIbmSPnD1QLKXXlV9EWJnZpy3CV02GZwf2bGzDkpb9CU1GfW5c
	 EJkX1RtG0x2v2JrIk1wHZpWcOX8RVjfpNfAwXuBlzn4JH3iwiC3R2qygUwjmpByghb
	 a7mBQ2wiD4qcRsdIcUi3gK9CJRO+gd+OmQ7o6agSGJTxeJCawGZ25IFp2DgpVaAyXc
	 UJw0zcptkC9zBBTnnbsVQ59fPTCz7Us8LcSMELm7uP7AkjXqSSNO/02LK3NhFAtP8S
	 bbxsDcls+LfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF77CF3ED63
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177596865368.22188.5203974974307320005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02615c80d1ebcf03c5adce3f8acc914cda173f45f02cd1aa292ab64f7c35cefb
Date: Sun, 12 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775968653
