Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103BD31F9B1
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783405114; cv=none; b=i9ky9LDJcezMwiMZZhE/nI8tLv3ZzERJgNtpTbN0odaBuOEt6VwVuAOLVjkkB1Whkcs3VRlMAVe/z6ursbFa5RxTZkqCu4tcN80SOZft3LU2sAyhf8bfF5aaDVm4WuQ7fjUt59rKMb/aVQLRZ+CnMwfKejhimYpOyoiSJtX/Iao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783405114; c=relaxed/simple;
	bh=mvXfN4HMe5NRmCPc1+7KGmOy5K7oV7R1gBuLqrVEVKo=;
	h=To:Subject:From:Message-Id:Date; b=cHcUQKnq8kjfxM7soK1LiO8IbLoz4TGDKvLzkd50QAugzOEZ69yfFz8WPbVdqXnGMki6LlDn3UCEVEczNLv15Pn28WdrkGDjP56ABqA5gbXIXhCJIFYbvvjZQ69hzIp1msf6NI0uhqXdCzUMZTfpmpGkPdm5Mz/nUbh6VZBf2p8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SebcsXih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SebcsXih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4DAEC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783405113;
	bh=mvXfN4HMe5NRmCPc1+7KGmOy5K7oV7R1gBuLqrVEVKo=;
	h=To:Subject:From:Date:From;
	b=SebcsXih0QRDOAco9lcftg108dW99iDL4f4jJrvXV639JKt539aOx8+Dy6BLKdR3y
	 5fEojqOuBd6j68JsqBl4k+o5UhumXKnxNh+PDTdDEfcwKvDWTb2nHYJeRD6W3rvXHF
	 SsI1nahTwg15czp4Z5SK40XB658zxGplrd1TgWgq4IoVWjoNYJTyU1L6o2RxpGulHB
	 BAqHe86gzxMIijBP5j6w9onL50gFUD4yz+mzTHMu8avvtaLlSvZsUAd6iOXHUyTDun
	 7KaVXRmea4vKBRpbFgeZuKNnQFvtgJCb5O5blhRIneVUMCZiAYKQwmWXi1k9Ey5/yY
	 TAyvUOk8faxSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB921C43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 06:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178340511369.7475.5257765747497215268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240287e3f227cd97f2947d19d6db8d0f6f987fc58caa1698c6c4c8f48f5b6822
Date: Tue, 07 Jul 2026 06:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783405113
