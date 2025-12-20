Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1173825D209
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766258634; cv=none; b=c00sWRMZrmLqCwAPFj+CHI9B0gGtVJGQjjBJYlyLJMCcVPPVOGX3tnJn5nN03AlUfbmTQpg6MZ9LWAH6Hx+AXZA+ygRMyQclHEwQH0iEH3bfsplILj6YwhHxMM4rkIMTv/2/Ov0q34y03W9C+FcRGm9AYMTAYbDYDEtGUoOQeRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766258634; c=relaxed/simple;
	bh=HmaguddGmbjMFifEbkAqOsYBpReFfPF31VVunJLereI=;
	h=To:Subject:From:Message-Id:Date; b=QCGXW+tbEyCEK2W66PMpiSaCpitIPN2A6GbIRKLy2WzeYFfbDL370noYe++2HBt2mNRz+1xue7mhNeoFQwWbUACQ/2DYzzMocj7Fw0onJuinwQWMKUki9BCI7An0VK65e12ndK4BQ+r3YSCugIvmlQRnjkMLHF8cWoe3kHRcgCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bAoYX/rJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bAoYX/rJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E297C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766258633;
	bh=HmaguddGmbjMFifEbkAqOsYBpReFfPF31VVunJLereI=;
	h=To:Subject:From:Date:From;
	b=bAoYX/rJkd41oKmITilhlxZPk5GbFNZWx7Z4Kji706ILWIgPCrekye+ycE0ig6mFB
	 an2GUl92UldO8sNZKqwHH2k5hjxhKZVvFrGkqK91oyjdvCcbcQ6AccQFR9VxQMF3dd
	 NXGrim9gn3mpQ0DY25rX8cF6pykfdOwZFh2EfFEy2ms6fX/m5mQF/KCYddOzQpyD9p
	 lW9fAvHt+gyo8Z3M5oJA6LX8bgXVDabGi8HzH1Pyibckr7krR7S4BsVveKwjmYT/04
	 0omXVeZTcYyTaSts126qDTeYOQa3D78k9WuLFRpkUF/H+pSx624iGsL6zhO5m1rV9B
	 p8nMlwSqtiZaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAF7E668BC
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 19:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176625863358.17170.2550428206171409976.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d0d750d9950a2830c8168310cbcde5971a8162bbbaaf464a0d2c763610a9dd2
Date: Sat, 20 Dec 2025 19:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766258633
