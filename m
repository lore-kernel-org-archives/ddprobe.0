Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 518AD3B0598
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785424834; cv=none; b=TkqfLw7HahcOpDIAtP3GQwfRDu5++mx49mTGlQPFj/LatEf35DJZ8/xuiH26Zw86Xgt6cxkKAmNtAcrxZbQKxKGsb80vFP4LDO6qfGXe4xTa3MLdtpvYORiRkYdQ12iRVGxy7nPxJW5CUEx7znDL/OmWEvwydIwye8M+KnnRqP0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785424834; c=relaxed/simple;
	bh=UJ/k0SV6CJ4jBzF3pAFXThhR8xFPX/hBVVGFCF3bcsI=;
	h=To:Subject:From:Message-Id:Date; b=UPvVK/dTSq3j40C6j3PbwPtqGClCATAtbLU1ZxP45ZpgqXLwgbKjKPJB4CAzh9GSbVsxh5cRh3c65oUaeKCQDnp3yXY2/UtK6x07WmkAmf9OUy1BL3ALKf9zKwRQJBgnAXHyFZlO7ZwqDG4umpZzbkm8UpWoMN470y+1zgCJm+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jkHv3Zqu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jkHv3Zqu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D9EC19425
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785424833;
	bh=UJ/k0SV6CJ4jBzF3pAFXThhR8xFPX/hBVVGFCF3bcsI=;
	h=To:Subject:From:Date:From;
	b=jkHv3ZquKrbggwqLxajIYwWwH5bySS2EWs6M+H6EXCWpTxjnHHsIR/9xcHm9+s7oz
	 GzuzCA9oMOn/mCZ8WjnIyMvOFpNScrdkmjM0olu0KUEYRLrCkFs1LlKYly1mMwrPU/
	 BUdrtnlEpIIwRP2SDEkzihg9bES3OeWvdf7l4G4ZXfWOdon/Rv3M/ah4WbC5kE82vD
	 TjKpn04x5LrkzAlxIj7nNRaDDLcbfQ2WFmXxBn6r8PAgyzFrocaJ6CquYItGqfymdI
	 AtmtYw6pV30pCOTOw7g/m1SKVZTkjwsYPusiPAC8jofKm6YPXhFO3A5cfHIv8/MIrz
	 BeW271PfG/Ixw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0061C55162
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542483371.31605.2107253184588829395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e4a77dcb8350439f7b1b209a711c57d6df4cd6115e8702cd8377208132fa321
Date: Thu, 30 Jul 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785424833
