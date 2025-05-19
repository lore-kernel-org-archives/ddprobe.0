Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4CD2A225D6
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747691394; cv=none; b=NtfVH3Ev5y05mYB7dcPEQJJRw6CVF/6tM6rRlvoZArSUaT1rcH8kSRB85uG+PFsJpeGWmU9a/jDSaBIKZns2tHa/Cm0r0fcBLRCrJjXCQRbcRVkbeHSUZg/bgS0BIbbdUdz2HZs4albDUUIYiC8bcMu7Pyf5xT8JbmwvGwnByTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747691394; c=relaxed/simple;
	bh=pbHxL45larI/9A7LidSR0SBSE9fpbRkJqazmwx6I6gE=;
	h=To:Subject:From:Message-Id:Date; b=JJJTw8+4TMhUltCbDFO1euvbC16SDKx34m8BWEaKvTewHdqfdjnBVb/hm/QywZBPci3JHzp3zBb9sfcJSx4QHm0T3wogFMeor6hjDXQfayNWQTnx6odU2vDMl07anxVTnp1F0hseZH2vL1E4/8u8RdAidSjte/h/u4kjyCPwvyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sxoutSe1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sxoutSe1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2030C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747691393;
	bh=pbHxL45larI/9A7LidSR0SBSE9fpbRkJqazmwx6I6gE=;
	h=To:Subject:From:Date:From;
	b=sxoutSe1iDVGFofBNFdAAr9rnowAJV7dhVtH2RoiqpWP2+4n7JYojTiEjmyPPAL0Z
	 UnN01ZF2WxRzI+elcd3WPBd8sYDY6HMqtv8pPjyoO2yizxeP7/vtsaE3S/omFDvWAp
	 RKqd0upoMDEHf8qXDuQ91F35u6Wgb0iiJNlIO9jFQxM3f1MFgiyltuXkrr9HRo3rXY
	 ZcU9nhcUQ5EBqN2IsKDdy/Ie98fL9u70B8IS3sfNzimfb/sg2XinKUHyU53HVs9Bt+
	 dcnH55XK1ZUuKRJSSteV6T2FM5S0t9dWpSxpPGigkmPeuy+zF//EUh+MqgP05VDny/
	 FyKficZzKpjpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E52EC3ABDD
	for <ddprobe@lists.linux.dev>; Mon, 19 May 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174769139357.17774.2441859778017559072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13cf113b58db97278e0c94632cd85460b77fffe5055d24130da44b63d707d431
Date: Mon, 19 May 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747691393
