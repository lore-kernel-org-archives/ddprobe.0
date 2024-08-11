Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1171CAB3
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723366554; cv=none; b=kaQMv/xZOH+HtA9d/MdT1au9I8ER/1hTmp1+HuLWNE2EC+NfG9y/M9tlgPT4YTt9jiXOsDr/SW052wTuZImNxX9IG3S10U49IHE3J+JhWJmeO5SsDm6PiLEsKuzrgr+RRWbIV/5PtSqGaTVsah3bgmvQgfM8JnEVB0163ANghBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723366554; c=relaxed/simple;
	bh=5GGRDXSi+v8Cp5FBchNGol6uY4G3L9WjIn/PoBMflkU=;
	h=To:Subject:From:Message-Id:Date; b=VLJyO79b8PsstYUBBNirREr5w6mwGI6R3Sc66t+tm8vgopiCo+N+1MsbSHkK3ozgYrceEurbmBnrB2Wfsfli90bfnbKf//fSpq/7i6WNtsns8DJzEqFxuiZZQ5iWYZnpcdLlrUzpE6810icQPhN7BJEA9swYSeG+ALuNW3uppjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9EW2Gpv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9EW2Gpv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9853C32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723366553;
	bh=5GGRDXSi+v8Cp5FBchNGol6uY4G3L9WjIn/PoBMflkU=;
	h=To:Subject:From:Date:From;
	b=X9EW2GpvP01FtG8bhvB3dJN5xz/UNU8Pip6w/n5u3YhmMuG7ltCcKuUqq+QTOZosG
	 hG9wVvIHfPIYsd0CkeXxo5v3ipHBGStHWuBUPEAZVbw2hQWarSGL2Eej8tOPgWHy+p
	 muizy3LUh8i0L51liPsqiwH7uAKesgTYbtD+Qv1JyM07fUjbv2eDS1uiy9P3L3DG9N
	 e9WdN+/KcH5Inz2EdmGkQ9b0xIie0e3o23ouqsQrNdv3Wb+HV75CJDu+9XTHU6ebHV
	 JnoBPrU0m+U2sAR+VxM0Xk49i7NFjXQEKBWFW1rH8B/5g6qfEr1HukJoREK1LL7KJE
	 M1mZrHJMLKy5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3229C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172336655363.9121.6551772163631407931.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e9b9d45cdcb60fe1b9334e57f9258e59d327ac48fe4e4f6e32cbb36197df1c
Date: Sun, 11 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723366553
