Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6C03DE424
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:32:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779701554; cv=none; b=pCXBEogFkQGDF7D83ntrBK8F4LjX/3RSursd9lFH90rJ6uBmvz7AqM3PNJBQ2z+wO1AAt5lGcGM2aF+q/+lMtc+8EkBNNPlrfywI6eGpy7+JMQLH6gtzUOeq7XendnBf8DPa9bdU3WuLMF4CGQ4B11Tb1mFZZbSNhYpGD7EU+qE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779701554; c=relaxed/simple;
	bh=taOb4iPP0yHYQscW3xjy8pglmgRoYBZG/8x9FScckGU=;
	h=To:Subject:From:Message-Id:Date; b=prqlBERQsqKQY3CamXKixtw2CE0EYDgn1KatIOY7f5ZlFvP18MpCjsNFrzLlSLWFxhdMCm6qsoJs9l50oTLtmJgfhY1xC5z4Z/oTdhMPK8467du1SPuh4M2wMsc3Ctk8yAFNJrikZ163taxvz+qLtH5E8CHmFztDAg3336lBIWU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UeGH4nXF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UeGH4nXF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C72A7C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779701553;
	bh=taOb4iPP0yHYQscW3xjy8pglmgRoYBZG/8x9FScckGU=;
	h=To:Subject:From:Date:From;
	b=UeGH4nXFICpQPVCjMpwai+6veX7LIOXLycFQyBAupSs22+mX3ZaaDFxL2XZHowBou
	 FB1qI9qiQXCfcLlPsnsEP2xFGm5KdppGpV8EfpYcGr13LWtmd8ag1Fni8mojxuijTC
	 Tv3ZNYdJDIEPDjdk091paasNho2/wbpfmgP6pHF+SZYq1qqVFE84Y+0ybVTq4vQt25
	 dW/zd+M4H6a+hRu/0xHLdDKalJDaSvkPNGH2S2G8mBggMitg26u+tfEF1rGAJQXZDi
	 vxy2nBo7sHZkgGJiZFLe6M1RZos3yrRoHQ6gEyex2TeY3yYHT1/z5YRclkkn0IGJn2
	 w6bK9ddcRWtkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBD1CD5BC8
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 09:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177970155369.25221.6401199822144564868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 629ea612efd662f97d0cffb4310d4642843b968c77f845445f0c07f82424c5d7
Date: Mon, 25 May 2026 09:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779701553
