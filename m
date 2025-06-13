Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24AD87082A
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749793194; cv=none; b=LCqhOzsyIfSm58Xbf7YKbsX7XYWaKbOPtv1XsPXtzFf/D3B7S+4iBz6sySSSpRptPotlll0t3TBrdTDp8whUbLMpMjV/f3vwB3QD5dnsl7xNzPmOtBznckvskDEVsU9+8k1riXaSUj8p5UD0c+3Vubr6ass5CxPas/CYOO4fV0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749793194; c=relaxed/simple;
	bh=YygJ4aY1Hok8WVK12cgBr8oFqwPB4tBynkBzGZmMb8Q=;
	h=To:Subject:From:Message-Id:Date; b=SgJJ01TFO7vIehutaTFmus7rMyR6X6DdzCOc2Z4C5qemZHetPDM2a4Dvs96rfDN/XZdj+DFiqJTskmsCtDlg7yS6lpktILaJey0DJAuHmGhzgWMfdMCTh/9kI2Q+MRYsEmjCjznO5kDDBko5yzciUi0uPuFg5Z11bI8RSlREy+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hT8+pjZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hT8+pjZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A165FC4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749793193;
	bh=YygJ4aY1Hok8WVK12cgBr8oFqwPB4tBynkBzGZmMb8Q=;
	h=To:Subject:From:Date:From;
	b=hT8+pjZ2T3CRganJ8JX3y9rtmly/zr8RoP7qgEypttDBeg534tNGblpg3MTLDybgV
	 I0Ow42LqByZTL6jBjiT6SJ1xmwkkpO8HMsjldQ4AILPR1moOhh3fJILhlcHCPKchgq
	 wLHRLUWrrRBTUr2FeyAB2hd+Rwbv4dvkS+iJ+h7Eg5ur+AdY3BFjgsni+0MxJW27K0
	 DUKBe5usdsXuMCtPV23H/JHYLhlhuJFvQI/4CqKx7AsG2PB5D7ZyRB/RyW/1LO4tLa
	 6fouxrxkzpO4WhtevwQ+J/pK/KiyzGkG3NjxZY9i/6D+8djjstKJi6auVjUShtuHBQ
	 BkazUf8FWEMMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911BDC61DB2
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174979319358.19427.10218266864678434227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 969f8979ce28d2e7da67a267b38520d64de4bb4679e0cc09a244fbc1d9aa2bff
Date: Fri, 13 Jun 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749793193
