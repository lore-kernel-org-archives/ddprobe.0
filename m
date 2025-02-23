Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA4C13B58B
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 06:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740292134; cv=none; b=qAfGmz3hWmgoWGBA30DOKGxPnowwyhKxA9siwz+Y38Jp3UQt1YFqlFw7hrETKcfC5XGPck3US7mEabDFE6gK2EUofu/0L++geFe8i+MpjJ0hsKDGxDH2Z28FE6IKv2Xe4IkEuq1eZHD7UeN/7p7GIjqqKki7G4n8kg1oKKFY7l0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740292134; c=relaxed/simple;
	bh=hsyjudWPUcVjZzU0U/Z7qpiYjJRozUYQfozngCD1tpI=;
	h=To:Subject:From:Message-Id:Date; b=sA7v684V5/EeGjHDJGU+ej1LIzNebopwAGB9EDC65eLqH4VIcmI/nrojrWVkIa0VBT/PLTKMcEk/szGN/2TFZhBXfybYPaIwoeeC1XdGO7eHqbauVDedkfMKoHV26QX2LUMpPKOHbRB/9cvtQbA+PvViP42H5DtmrJrzxPzgUQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCJiYBDC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCJiYBDC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A83A6C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 06:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740292133;
	bh=hsyjudWPUcVjZzU0U/Z7qpiYjJRozUYQfozngCD1tpI=;
	h=To:Subject:From:Date:From;
	b=kCJiYBDCKToL6B0zsB8hvFPKEHEodPcRpUMIYiFsR9DoVlGAmlrc0fyFCLCMtODTk
	 53raqfy2xmZzhAskTeQo/YQkQLL2axbOD9CYKjO8ytcnDsvQJaR/MFJUrPNOZCLUJs
	 UUi5Kgd3lLahx1HsqYO1dqhlTkLVukJ7Ch5XImecoR+IemVkjYd64wvIg6hFofKo72
	 xoPnrB/8gpsZ9E5w2Rwm2LWOGiybEg1X4CSSdfKtbcZ0uyK9rlGwqT67EPg9pQj6n9
	 +uWt6mIw3S005BIDF4xcL4Klz2wEZdhFYCagsMTOSZ0w6tBkoO7gxmyfL4YGTgeLPK
	 M8AhHE0TGJSVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407BC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 06:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174029213359.13609.5450165514256899776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e04ceb1b74a9e7e6a28dd279818d501536d6938dfa16e7cda8705cd65b91eed
Date: Sun, 23 Feb 2025 06:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740292133
