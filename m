Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377AA23393C
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783886314; cv=none; b=osgJHSpBZ5kmWRNtUj3eQx4N3a01YS6MoKb+zuKzgffGMrBBE+LQ3vtaGT2NsvtJ6lvbAQUOb876xoVK5x5rsFyEvEunziaCfg8LtC5C0Xkl42yfwkH/mn00IhbifIRlAC9CIvUCVBIo9aA3W2FZe2ztoB/1q2qlj/kqjnvRCFo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783886314; c=relaxed/simple;
	bh=mB8t9upv+gd5eBfkKBAO8sWVVCEvphnoSUQCvOuG7g4=;
	h=To:Subject:From:Message-Id:Date; b=R9r1SCFA0a9iyh6sEs1xQLpDQyzWj1xS922ZrPxp8L56RUCdLDi1fbtDcKrU9IrTSgG1bAULezIeRjsffVvIchlzGhs0HGp9cbBhaM/AlCZ7z9xEDXrYc9OT2806SrrVB5JY7YPfBwPYOfcPuGhXC/oEDdXR4qdSQ/qcM38zYLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEXOh68z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEXOh68z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4769C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783886313;
	bh=mB8t9upv+gd5eBfkKBAO8sWVVCEvphnoSUQCvOuG7g4=;
	h=To:Subject:From:Date:From;
	b=cEXOh68zOO2PNljAGmgZGQ+Ogq8a2ts0J0hnsxkqFUUN9Tu81+1KQN3AFr85x06Gy
	 EB1azYTnECAqJY8fiWqBW9aRyRYE5+Q0zYDKctxgvzrjArqSjhkWtpSXZd0WLEc150
	 F2p3pzQG+gClc6QbMaSha09J3DbyJWbzNfT0r6icdpbPLlvCmbhPxpTLexYBFig4xG
	 mLmwXBk1dWv4BaSzaVya9OSA93ziD/A507QpvLsjqyDXrYUK6RNgog8Sk6UbY8s9hf
	 bvpi9zgIuBSwir5KtdykBQSnkeawux+5Lxvi+gl/icaLRdxmDB+qhC9zyKxWsMswe1
	 JHnaV9MI/PPsw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC64C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 19:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178388631368.15985.6352822959374862939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ba12a42bfba22be2be541638651a722be68a68e5c800490c80a01e89601f7dd
Date: Sun, 12 Jul 2026 19:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783886313
