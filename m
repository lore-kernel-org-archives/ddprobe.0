Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B5B2214A9B
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763599914; cv=none; b=uMMVLCuwYWWFrE0HvEprSWWezKM3fochxtUifcfb8ETdFPbAHt6Ct07jYbPvBzeB4Z5APNiy8Xhjox+bapPalYILWy3rbsigMHF0d0EWR+Yr0+L4uc7zqDXf43RQ2ivzrmkQWzRTd4D7Q2358xG+PVNuaylAloMaTbajzWuwcjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763599914; c=relaxed/simple;
	bh=xfZ6YYZZ+Gy/CBdPNkJbLys/PD9jAERdW4zH5ud1xqo=;
	h=To:Subject:From:Message-Id:Date; b=n3R+WFXIxJ8nRMgF1Oq+XjD60QqhZpmI56o5CqkhLq53mxI+NKoEFm+W6Zn3HeUYwNgWEJvSdAKME5aasNajsv6EgEnyXxvTv5KTRmYTvZVJLzx1e4Bcv0K763gs78Vhnedm37r9IkXmNFdhJl1FwCwBzN+bEWsOp+QjDpwf+Xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tUNxnVWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tUNxnVWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D86C4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763599913;
	bh=xfZ6YYZZ+Gy/CBdPNkJbLys/PD9jAERdW4zH5ud1xqo=;
	h=To:Subject:From:Date:From;
	b=tUNxnVWlZWrIPLYtWaODE83ZXDjS7zXNlp5Z/ZN6Q4xgTAU33FDu7LAlrYHeutjRV
	 rge0ycP/gQJrwDafhaegqopZOUz2DZldvxQDWKM4AadsQuBiqEqrCuxjR9dNx7+9It
	 EkZFzjn7Qo1i8DkQnsatveDl6Q4WmboJ67EmIuszhkVZXX3zHSKJakw0a7J/eIebpC
	 T53sMo1IeCfw7C9PPH4RE0ENlriYGTuVsmhTTMeX1I1+V4feB3AmwLrYEqrIDKGO5W
	 QDrXV9cH4SMQoaT2GwPizSkVWXal6H+Er03Gj/fVu29E9zY1hMItHOfiGMw1uaGVhN
	 X8tXrUzXEbIGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966E0CF6497
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176359991360.8441.3295371331836373997.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f849a90b7533524e6a8d4c7440023f7c4f966dc42823746cd6ff8d21a1802871
Date: Thu, 20 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763599913
