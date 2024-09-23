Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31203DF59
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727115954; cv=none; b=YbyTKmEgxY1YJytNzzTKT597eXk+LpAUu3cQ6nH6bCu/8U70lzq46LYkTxjcezc4/MIBKUFkRSw51r89n4e+vqcuQXjvglOGkVXZm1mSc5PGLsZfuADsgf5FTKopjQ2c+Wx1T3h7dzCWvJ4W0AEJlPPDIvRzRp9wozCzRPZyta0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727115954; c=relaxed/simple;
	bh=aEJ7fDMFjF8xHXFv5ner1XmnFqYCdxr1sjDGvvvAaaQ=;
	h=To:Subject:From:Message-Id:Date; b=WpZ+8aN727eL9E2RmtgLnJDoekaiT/Dt2ZAE3wZuDz+lDUdAuULreDeF3HGK0S2k3RmZMkSN+h8voKFEwBN7I8TPFMbLVI/01yBNsAEJNhDMS7fqwcqhUh89WgYNWvUXP8DWPgaGAL1Rumm0OElWqoVHJ1+/Su3+eNayfELPe+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aENK1N5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aENK1N5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0142C4CEC4
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727115953;
	bh=aEJ7fDMFjF8xHXFv5ner1XmnFqYCdxr1sjDGvvvAaaQ=;
	h=To:Subject:From:Date:From;
	b=aENK1N5vwdh38vxlzw/hBtcurvSoulLlzOsrYb1TOZcLCjRC7yzRGHNM5aRivfjHr
	 cPt6cyTm63eR7yAIXmQDQzQ/su+7dcHzltzDRET74LjgM7GmXgy3lx3duahrIAsMfz
	 EuBaggFduN4k33Dlp71JaeKERpLzqhO//fS1ORW+dCy6x2GWvUH5VgR9O8UR/yhsi2
	 jPWw4XtSTf9MnNTq19rXjPmHXXipQBFyKO4b+NYO2vP6PUgemdKcdIDwnc2PKywL/6
	 J9CiNXDpHJAArc4iY3gm1cORDLD5TFJmSqCpujZURanDUZsKv1n2Oud5n4mk18T4UG
	 x4VbEfJmeQTIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EE1CF9C6F
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172711595360.32010.9709016199675953387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813ae2d14ca468fa2f3f7465c4d7af9dccc6163fac6d0fe6d53a9f478ef0eaa5
Date: Mon, 23 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727115953
