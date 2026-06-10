Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 143154071CA
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781097934; cv=none; b=Sm1yB8sQH+/W9oEbQumIW0EZL5xsK532dPrn0KgFniOcjJsgxVCNacdr7plP1xWIFnJA7hbkNN/vnmFYaiclZaCUSa31hTJP1t4dYwJn2CguSE3YJ4Nzm4yLqyKtlrDwNKmRxVeCvM0KA/Zowugdk1bPjTpazZ73yvHlGUa2pW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781097934; c=relaxed/simple;
	bh=SwQZoWv3yQ+ZtFS2OaSNBZnjKYH3LMrOsIRIV5OedI4=;
	h=To:Subject:From:Message-Id:Date; b=fsyADXMe/U4/g3sreX4beAvm2jBGtBcW4tedARFI9HleaWbeUTe+lxH4gS3LdncSr9aXEsxECk5og1wXTI6cP4PlMxUiK3MJn2ZNzvBYroeZEADKN3NN2jux92hwfP3tZsgj3fmmHhapsV6E6Z+8jYNQR7Kopp5DZMnronc+ywU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ysa30k1L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ysa30k1L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D9DC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:25:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781097933;
	bh=SwQZoWv3yQ+ZtFS2OaSNBZnjKYH3LMrOsIRIV5OedI4=;
	h=To:Subject:From:Date:From;
	b=Ysa30k1LcW341ecr7NfZ80i8a5tp2cuyLW7W9O+RY2uVAcmMGiqtMiZCqjMI0oDnd
	 O9IPpiQRHh76c9qDxpnZcRtagQvOHL/gQQvHaftR3BcdeXjFZ6vbi5eBoEmWA9/IGp
	 GkRf3yMtcaguIbo4N3kMWboYd5yw8T4Wm5JEv8RC0zGKBaY5My+zdEQdSCvFD/DOW3
	 qjouUYnsnyC06frNMupKCqSY037SaCm+Y78EF1TxDajlIpUYnKZ9lNqMyNQibqYjEZ
	 a7KOsixyYYMSWbSbkkit0/5LG6hHuICPjp8qOixO4BE/vTJBNEgE+l+CoX1bAFDFwE
	 DHUJZY7zHlG7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD65DCD8CB2
	for <ddprobe@lists.linux.dev>; Wed, 10 Jun 2026 13:25:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178109793369.31705.11869356394868606481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a93aafeac6897cc87f63ad1525af7fb2af358a3a6dea34ad81e922f41901a06
Date: Wed, 10 Jun 2026 13:25:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781097933
