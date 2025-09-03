Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9932D8DDA
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756927194; cv=none; b=QGrKW4FNfVdVcqG2cSoldQNds7J5IEFRj2D1x9gc/LZva2JMmI+CbGl1VF2U0UDbF8vJGswPMPuVJAMM9KlOb4vR01JwUZ61/HvxxMrQ8lNcn5oAogol3jCuEjsLUITPC80jthtU9zzMjWkAhmfHExIdJxFsGNmnpkw3AzVOaJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756927194; c=relaxed/simple;
	bh=vwABshFMTKx2kVv+Vya/K+EuBXTI/lqEE4oa9nszUKw=;
	h=To:Subject:From:Message-Id:Date; b=dUWOWngFzUvzD2KcMt4pIysNByw1k0L7B7SG3m2aBG+4/mvbeSyY3SDdBZbtpKt5vN2S0cSmjFhsfijSAA5Khv34/M7YL2RQ/VJ62NZdrm3z8GOYBsPG526sBP21JEjkphOwxho+RtbeqcToYmy9qfezjd1s9r8cbVeHAj/5w/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bcg6691v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bcg6691v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A070AC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756927193;
	bh=vwABshFMTKx2kVv+Vya/K+EuBXTI/lqEE4oa9nszUKw=;
	h=To:Subject:From:Date:From;
	b=bcg6691vjCNXuwKuxIDs4auAWkAGeI9lzCtIVglaRedDEwmp9jSkzIpagFjlv+tRf
	 dFIzAszPXBgWlUkofuNMPhw0OtXadcpIkDdDiP5e6pQRBA3pnF1FOp2qc1DmGhMuaP
	 LXXn+lZbz7AJn3YuHZna8RJxh816WP7uzGTJOhCUuGZ3S/pA05akKhexqLBYk7TROZ
	 kFihErNT/EhtHwFaccnSWPhSRNX+3kkiZy/poiWzVVvbkQKwVXbc5XKtpcP2bb/0Y4
	 2JQ5T7JKzMqYDGryVgzWB228TZfwzso+jV4EIHGLtuFZnJRUfygBnx9ZHkHZVfJ+3y
	 IP2W52ImiMdBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDA4CA1009
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175692719358.4950.4243762903869588462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bd33d812b65e3cf7daffdeebfb99c0d8f24e0c6dbb19f7b7802bc559a6794fb
Date: Wed, 03 Sep 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756927193
