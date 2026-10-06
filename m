Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0713009F2
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791307234; cv=none; b=pTc8hfygyUT40ejAX3DjdKB0PDLo7XC0GKrDTuv6WTZbSSr4GSasfksd3wI5dl8YoohpoVY1E10s6ZWcHnzrhNFgTUgRcUE4hY+58EpBO/PmLOGOgbY7ZIrq+CEU5gtxTRc4N1GWoJg+DPFNmc5KKunapDftdLoX+6frl/bEbIM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791307234; c=relaxed/simple;
	bh=ympMQiQynzzn8Bs2DsNAvoiaaN/NoALLQ4/A95H+kSg=;
	h=To:Subject:From:Message-Id:Date; b=ae5T7QqYOamdvBs4Gl4U2ixslWTXEquYbMLG25oDbkiusPDTpZboHMIQ6mu1TOn7Ka7gZSe579zi4yOpLPD7x+BAUPMnfWbmaq3jRr/zl/P/R/DjfG6qJphoPSByNdSYIhAub8R9wSxrv9+Sv+xd0V8hqyz2iUod2XFDKYCGqsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dc3kUz+h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dc3kUz+h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D50B1C4AF60
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791307233;
	bh=ympMQiQynzzn8Bs2DsNAvoiaaN/NoALLQ4/A95H+kSg=;
	h=To:Subject:From:Date:From;
	b=Dc3kUz+h2+pr6QnKsbauXwJSWfPTI/7+8yMaUqWjUtjxGcHNMhsbBZRe3gHgaMzME
	 mexXmJy4W44qULpvC2O73QoIZydZVoR2a+23vh4bOo2YnsLiu5tlEIElbSG60i8Ng4
	 Nun8kBNLEFXapxoCs+xcLDD1nRi+yyLJhpmqzW90c86E64GzR4/rLL0+a0BOzyXrZK
	 vzPNg7zkkAZ1CnRZYiRx1JflaDijCMiC98I7WDEIhMovYJ3k7x4aNwqGVpsvG57yIA
	 CIo0qfrHgiBTmLR/KMPo9WKDiKYNwc3trH365rqSlrYY5jcoOVtCtGRqJjiKA6/+R/
	 Txdn/Pgst0vEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1A14CA5FFC
	for <ddprobe@lists.linux.dev>; Tue,  6 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179130723371.30073.15830276991211948720.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27253b2339b3b25d8fc109e68642b9f55c185272561866f2142c5936401cb435
Date: Tue, 06 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791307233
