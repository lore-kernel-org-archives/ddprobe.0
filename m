Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19125280CF6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769621034; cv=none; b=RId/dBl4hDiJhotPYPau3vp1QooWxLnWA37IgGt2cSn9/3qhcTdHjOkHklqsdR1s/dH4Ed/eeXCGTTE4KtbjgQvddfGfPU0PNmzCbNVaznQdm4ng08FpCDfw9m9PyLwBmbiwwpydDxaoSH/csD2o95yGshitODZPHposbs9a6u8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769621034; c=relaxed/simple;
	bh=qRgf7KCBLhr+3BDrPw+/juLlxKThyqn+PZq11ifpD6o=;
	h=To:Subject:From:Message-Id:Date; b=IxQlfxE830I6gR9QlQxBSAAnfepRnp3o2VtRFisaLoOe6pkaJYZVzucN0/FfaY28Kcf/Z4gpR/f+Nudzt5J+RVmsKRMp2seDiUcGHbSB3Esumw4PDYNaXr5zXrlEz5OysKslqDfD316CXv3ai0BFc8edLqhKKjNZXnHtEfjoGgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Pn34dAPx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Pn34dAPx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4316C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769621033;
	bh=qRgf7KCBLhr+3BDrPw+/juLlxKThyqn+PZq11ifpD6o=;
	h=To:Subject:From:Date:From;
	b=Pn34dAPxT1auVg320/ySe9JOv4ORVKCeAlqIOfDkaxH5Aj1BcklRln4jRp/QamvmN
	 N0OmAE0fuJcYamwVyXeKh46tT3cp6xqXKQDMLQgUkDpefwrx6P9jgtcrCk0fYJfMfG
	 Y+D7qecu1AmSRPi5eYP7glXoJHjPC1mAH20EM6bSvdXQhtvDDzy7R2Q+KupeUs5EVJ
	 0eZVyejL2Cn+ptC0DvcAKb7P/KScss6b8SRbCUBgx1qU6j8Pl1tdFHD6xNe/QisXWG
	 ZT1G7gPUWymjKwCUTkw2rJV8SmrkaECbqaTik4YSwlVAObN7JFNywyzuHvoLhyxAIu
	 MAckzZUWEGEcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A54D3F083
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 17:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176962103358.27532.7731327097319331002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4149e4efdaa81c05d05df5daa4e38bd9caedffd5c79d9e0b13eae7a32a698604
Date: Wed, 28 Jan 2026 17:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769621033
