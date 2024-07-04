Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47ABF143871
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720078523; cv=none; b=B3eg9O+qqkDB0lxzFGGj/6u85hctwyyM9XjdVWmmOju9mCRVJ/3dJfbnkKPA+w0CNBkReBY6yIrhk6IKJILDff1aHz0cpgX5v+L/bvPhDwYcLNs+HJh3mngVEdFFJCk9qEA3GJhH7h2378vMQl+e/+R8g0yeItSDUTFenuiaDVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720078523; c=relaxed/simple;
	bh=cx/fglB8bm9qSfpsPRCPtmUz8JQdn2kwaMogCMx8QKE=;
	h=To:Subject:From:Message-Id:Date; b=tsFa/xFsG+/JVpzk2DquCE3B9GuwO24hprkZdyP4c3CVb2MiGEWPdKYlq4sQYXnsM2eL6KXrH4VNLel5oN7nCgrtQeuOXleCc1vrwcNfdIyE6ka+445LtqZXddoxc60LV8QaY1brb7SKRV7aj/t37ixsvlEOIMoefmejH1tZkok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K80HMLAP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K80HMLAP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CEDC32786
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720078522;
	bh=cx/fglB8bm9qSfpsPRCPtmUz8JQdn2kwaMogCMx8QKE=;
	h=To:Subject:From:Date:From;
	b=K80HMLAPyh2kBGDVGqCja52HLGla4pmYLLha47AZx8OeTzzvm2izKy6sspj97uYQx
	 PiB6mXPuPjSL7MY2k0L3MUIgsqzF8LqnebV8R/25v/oBGnaBxGPJBMwIF2D6J8DiI4
	 q6dejJ2Vy3PZkJC/6x9yozD5Hrvlj5mdsLODP3D9Ghfi+Ra/8HSD0hCq2JJAK7BZ0r
	 1PmWiFG2czlve71HU7Kx48K77WfVCRB39cl7v5HXuqdGrzhQU8v/m5XgEu5Lm2B2hd
	 3f1+cAfLQPiVvzcHC3O369j2nhFuogfrIV687OVexF0KS2Kc6/8tuJLJB5NRWR58Kz
	 uX32PNI2XcyNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3AF5C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 07:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172007852279.27118.10292105251346491515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acf9184683b3ef226c850236f4131d67fc24d53de826d457ed27841598d5630e
Date: Thu, 04 Jul 2024 07:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720078522
