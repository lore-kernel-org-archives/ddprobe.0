Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9C992AD24
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758313193; cv=none; b=Ssd1UGGtuvlAhQrNpj4oSWvAXkYF4bMafLBFeoh8fjZBpVOrvALP8K+7Gsqz6R4/49GknosmAr1EroyM8c78wnT2Br9e1XGw/y3IakT6ypkO4luE3PvgqK+rSv2TP9tSiBiu3ftTAw8Zjrcz1/vSX2v9PNAQ44M/WHBgKZTT5nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758313193; c=relaxed/simple;
	bh=+2eeXqVl/plm2xRoC+DZD3WTT1UAMy+ur5hus8M25o8=;
	h=To:Subject:From:Message-Id:Date; b=gA7D5LPkHYLmZ8cfNdQCqJ/Zz8/Hwx9RAGT1+wwo/lTxsh2o3A3FrJKmVWS8i//b5D4NYm/W+DoybqOPOtspOEtGGq7GVMyiQD6NKIQvXGBkukO650M78xx8XI84qJLCYE1DDS2ZcmMnliqafzyHk0xPitSgbUHi2ztV7INlZz8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AHFvrkqy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AHFvrkqy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 985D9C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758313193;
	bh=+2eeXqVl/plm2xRoC+DZD3WTT1UAMy+ur5hus8M25o8=;
	h=To:Subject:From:Date:From;
	b=AHFvrkqyNmg8lbrTUdK9Lp46fR9JOSH4jlW+xNXNkK1ZbJ4GJy5cIwQAytKAl8coG
	 3g94rhz/VISrMx27/8FNUzxK8BbbrpMhUBpKY6nM3teL4j5GJV5linxqA1tIGMXfaJ
	 6ZTlFSBw5iBPgWHD+iKVCE8LeRnqpokBQ5L0NOWVcTy2I8ZDet8QQMW9FfpCyBqdF8
	 /TxnX2tJ7GQHmmA5cgn1RN7GqPnCTYHRioAe/zstkNZ09uqMzPtAdLU+AHbBIlg4jN
	 hsd4vrhKQBQiXFNhsNgD840vZT5jfelq9ezUVzk8EJCErrncpC1qLlrcunqH1I9eNo
	 5iWoJ3Y5+dflA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EDEBCAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175831319357.31194.7601124754714307299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c86b20e0a67251e261bdbca740d9aec38b228c310d0429b584cff39ee69f3247
Date: Fri, 19 Sep 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758313193
