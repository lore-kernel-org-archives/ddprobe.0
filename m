Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 397B0194A6C
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741433334; cv=none; b=ZcZkvld9HpSdtfr6tK6CW+rton91FOfimtbPd7v3Aw1GyvMv+ZbIqVCVLVQIIHYD5/CusdkTZGAz5+0plVytL6MOWAFhOo+hRl4Lj4WAnm3Uw1pn94erCSrwHdBhJc+le3Omc+saeNcTqdpIy+sKGS2p3cN3Lw9Q+ShDnZcDnQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741433334; c=relaxed/simple;
	bh=Q5iYF62NpDoM4sSbQFduyr/MxMXdAuqSnnBT1ckmgL0=;
	h=To:Subject:From:Message-Id:Date; b=ddHISrT63tQznp6uM2UGPVysFXTXHmpWXUuDrLPrtTiORdWd+k+RC+kA0rfqBJTQPhbSLopLdo47gPyY+8p7LWa2bofOGmUwiibQ18erpOZs/EpIJtEgmDkawABs7x9gqfXos95zXaruG/SgB7hEqgXMOupON3Id3LRyydOqHXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZbRvc3jz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZbRvc3jz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8693C4CEE0
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741433333;
	bh=Q5iYF62NpDoM4sSbQFduyr/MxMXdAuqSnnBT1ckmgL0=;
	h=To:Subject:From:Date:From;
	b=ZbRvc3jzhH/HV/x64hADGXIEnRWrcopM05W9KL3BmRM0sdDvjwIZoQCGl0ADCrnrC
	 Q0yC0jmxtAky/pcgQP3CsrzMz7LCjTeVTJwYMrUFtRdFX6OVdCkPM/YOUd9MydD7/l
	 EnvJm7fAE9VzbYNBUIMt/6HxqabxIqLi9KkR/B5VdXl/qyGJ76gzYfftf4lhLIfb5j
	 +qy7M1yW68oIDrxpfo6AvLlA0ySv7Hg+xBxtef20cNiPEAtJ4By4924PBJEnX8AZRe
	 qhk/PN3KMD3pxSaikBQxiyT0jaCBVFHMhh2Hrav4wInnMNNU7ev4H7EabR5ZzoRzev
	 pPxtBPJPlhtPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953DCC282EC
	for <ddprobe@lists.linux.dev>; Sat,  8 Mar 2025 11:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174143333360.22759.15818899192400220883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ab2e37cc505823bf6279a06d073dbc258ff05c2320db6997071e470e7b13417
Date: Sat, 08 Mar 2025 11:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741433333
