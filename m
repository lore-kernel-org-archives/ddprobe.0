Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CAB51422D4
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713903623; cv=none; b=RWZsRdKxno3fsHkGr7rH+y27r95xCak4jSg+0V864DrCeJHcxkVIO+btBCdGj13BOsOLUfbRdofbA5tTkU/7yvLlYGZFD+RiBTZl/vu3RGSi7yoOOQR5nbp9OE/2D44bhJ5gGU+w+IfFu1z6T0qlk2AjjwjDN3I6fpc1dlMK/Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713903623; c=relaxed/simple;
	bh=kiavfRNRvNAdSubu9La8s5n9qFIBwRP2MB6cs+TkUxM=;
	h=To:Subject:From:Message-Id:Date; b=IOo90BSQNMuGdfr0byGONH+Y32Vyo8fQ7ydMhovwaRx7AanYw0xcFllmbg48KDp1dW521Y84m6tGzh4CHjXZ8SLMyMdmP6vDFMyHIL6T79V2RNJE3jorkx55DEEm0KcC9AqTw0x4x+FwFA/mmMmYwmWAXzCh0hcnVgyvIMPITOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTyUn2su; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTyUn2su"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 005C6C116B1
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:20:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713903623;
	bh=kiavfRNRvNAdSubu9La8s5n9qFIBwRP2MB6cs+TkUxM=;
	h=To:Subject:From:Date:From;
	b=KTyUn2su2vehTtoWvPGBs1TaiBIVHPHPsJn1aO5zlleVaDw6YuvRmnzsCNfN2BvA8
	 nOJ25ESXmN56V3/8JL2XdSVQ3b1NiBgzU3ICoobwzGIf4j4i7BlAwgk6yB4s9r1Li3
	 DR7f4J0u+NGlT5TKcaKADZdK64UkCY0VEUT5TguiMEIRpBm5J0RO2wfLbVqftMTAuX
	 162iwcR6/6K5WcdNb0Tl5cDJ1039UL7xmBl/BTVtU2WifYC0yfyQ8DlhvLoznTUytv
	 tUkSqvGKS0s7AfkioQDZrvljaWVaMcTwFWfXg/HG/N3/quT2maelZe2rF+OPlkAClY
	 wqd0CgSmgPM/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DA13FC10F15
	for <ddprobe@lists.linux.dev>; Tue, 23 Apr 2024 20:20:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171390362288.19836.7212604417841377012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20f87413e3e0fc87fc265548f3b0247b1dc1d0463d9db5477c6f2bca3daf0169
Date: Tue, 23 Apr 2024 20:20:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713903622
