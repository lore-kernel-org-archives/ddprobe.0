Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B9563CB
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766150634; cv=none; b=Gm/QtC+qxj/0EmHGF1f7A6v06jaTh8Uh/8CpF+zoKPPQZBZzetC9uzcZbeUjYthBzcbxH1vpsXldw4mpSs4V/TrDt73bsoGcNJBxtT+Dc0SCbFw7jfEcmt3HG2GHLGWN3//+sbmkqhFDHdu9DWSwpg49x5ZUQhNF1W83ZscYajw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766150634; c=relaxed/simple;
	bh=srzHEZeQGkREUeeRmar36/IZRGLr80jDA6bz7+F1x2A=;
	h=To:Subject:From:Message-Id:Date; b=CT8Vh3e2IbgUnE23QEFkqz4Q2y359JuasMJGrscGNmHJ618z0AJwURHvbOYSQEG9r25Ywhw4OKuh2P+TLryjsC5j+/6uN/8PvTxo8UFH9TgNip6IUXidvW2nanOs4Xb64cnCYJClZEmrVAaC1U7CGYk8bUm6J5mHEWpzOfmjjqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7eLG3Oy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7eLG3Oy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6625C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766150633;
	bh=srzHEZeQGkREUeeRmar36/IZRGLr80jDA6bz7+F1x2A=;
	h=To:Subject:From:Date:From;
	b=M7eLG3Oyjo5BSU7tc9tCTefcvgyGRvis3B8cAEu5/Y6RxqIVpQgZPaEDWwpcwEupR
	 OPRM27dMJ9H/nG11ZMpDkdbbHKoBjzrtyY8Yrc+ClizVH2VdrLd0A5nxDPTpRKvj77
	 6QRQO+V//ZOCMid1xbyDTqCxTyZyaNzj48p6hlpQ4j0MAdQmIDUZUqdcE3S8X1Fq0s
	 lLMCDt7KkPbKYCIgiO+0AmKRfUytA1kkJUyGcsaPd4N+CbiSR4IxFIHlBXnyNpbR0y
	 XW2MScU62sfFUcR14wpiHeBqsHeb5C6gee7B7laSEiCE4OGSaTYWB3menWcAxQMfIm
	 g/+TJexbyBZ8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956A4D78771
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176615063358.13923.10803148976393454901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e18a846a0de9ccdd1911eb812dbf2bda813be29ff6a9dfe9f0bfbc1b4ac69a7
Date: Fri, 19 Dec 2025 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766150633
