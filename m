Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31E0A23C51D
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757993994; cv=none; b=oT2x5Kx6G22cfeZZtvRZCvDgfmfrPUTOkpkLj1utg/mkZ/vBhje6mYnOvnGc+1uaP4Sp0X4GCRD19z5sX4AjQcBi0lMbvszoJprTpZAjKzsU1rJZL+6HCD+pbL57rYbren5DH4VnIZ4mkn8Ltq7cVM/Mt3t5d5Ek6/Ud0gFCjmo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757993994; c=relaxed/simple;
	bh=QjSb8y5aNoL4pOrhGkym2DsZbRmpqMc8D1NyVyLMyfQ=;
	h=To:Subject:From:Message-Id:Date; b=u/frbnt+mb9qJGJtrfOZ9RXDhnLLFtElD8g4OWH37QkTj4xTbnAqO8ykfP6T/206pr7LwiVAbF6mlLHxn3CsdKtZtxMF8EugX3/uylPLV7G2Fh+e05SckZUIg0zim7DoBxpAQmKx5C4WIGiSQSvnnomc2cT4hr/Pyj1OH/xDl+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eAU1CxmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eAU1CxmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A431BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757993993;
	bh=QjSb8y5aNoL4pOrhGkym2DsZbRmpqMc8D1NyVyLMyfQ=;
	h=To:Subject:From:Date:From;
	b=eAU1CxmJwBDeTYV2/JbpoYb7T3//oLiBTGcN9dK4b2ZSasEO1us6KCpPQdUKzDdpL
	 Y2mF5PXohyuiS3fHUWyE4562B0+rjcAjxJQ995ElBfqPPZ8S0aCO6jLYWo/BIiie81
	 yKSDkLXG1jMpZD7/XoRINM6iSLMclWUwkVop3U0XFrsETpFcJI6//ti6J/Ewq6/dZo
	 j+fULVXYjOOqV/UIxcBrMiFdKMvaMgW3bKJn+13iiH+CINf3RR9rxOor/mgEfpnOQY
	 oxBNoTbu4cVt4bQcIiFAjIpibakw3LGSRnSF7Oyxcb/eSL9nmQn52jmBidgTSi1tIb
	 p8azf/L7ru3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92820CAC597
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 03:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175799399358.25982.6064844445925965951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 476f25741cb7420b2c0121ce0e5137953ea6488c1305be948d9d96c66c1d4efd
Date: Tue, 16 Sep 2025 03:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757993993
