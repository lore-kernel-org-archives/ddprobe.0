Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E722D0C84
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778874634; cv=none; b=hvW+yFFvJ+TQcBtLe83XmtIv7j3t8rkI9Zh7OZGcYFOZduP4ckPfShiemYs6dpAYhXoUidzuro99FJtmRf8NbhadjhfBUMyvezaB+GArbQcyks28I3EJGOAOugrmqhoeSdrFW/8/EGAnnVUcZQtDHB80xEO+QfveGhm58d9aCjk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778874634; c=relaxed/simple;
	bh=hpOEM3P2hfqZG9D8meYPgkrkoopfFT3iGaLwn+nTwFg=;
	h=To:Subject:From:Message-Id:Date; b=s9/FLviAdV5WoSM7jT2LyKnv5ntxUPAzKsQ8GFW8Wq0iVCvmv5YUzNZbkyFyGzPlWcy++jgxDRs2a73IO3mRfZqV6IpW4WgmxrR5z3VNpOTFFckb5LF12VUik21HctwCaiDgaTvusRGGvtf5Js90cxeW3DZ4oPxDMwx9hOPN5Xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pl7elXqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pl7elXqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AE0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778874633;
	bh=hpOEM3P2hfqZG9D8meYPgkrkoopfFT3iGaLwn+nTwFg=;
	h=To:Subject:From:Date:From;
	b=pl7elXquEfWPCBIVCGb4W4q9Ccd6MVkxofH/mRggH9gSSW6uqW45OeqJ7vwK8DxnQ
	 PYmwLk+VV6UhbXYCbVSOEjKFE6WBRg2wsnuprJ5CsD2M42F9M8WawpPU4FC7UZ4MqP
	 sZeN6glZ/3iG3CBCpo7BJP44ZMO0jNVmE967jMRtjCiY5yL70xGQaLAJbsRBV8BN9m
	 ZTbamBAk1DWlbn/YWImXiBXewat7qV/tXo5/fAZ0eK0YJE/ZAGNlfhdPv60FUF2EHe
	 oG7J4Ivo8dRlp4kl5zimqxow3ZSydp+VkZBQZ/nZxpToMzEoytmgqsBv68HzmuVhia
	 xFosAVSgevbZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B38EBCD4F3C
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177887463369.10006.724173025072953823.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce259cc9f1da11bc661863037647bf59ff02eaf0bf76d90b218242831572d097
Date: Fri, 15 May 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778874633
