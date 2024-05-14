Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 528001E491
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:52:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715730743; cv=none; b=KXvK2ZzRZ3WahU6hwcChb5X3Iqxck+4YobI6RoxkTY4z5WW7b4RZBqO7rHMO8UfmlfZ8qWmQ21crVLLIDY6H8+IUa23xCeXhGMft1lThpCh+U8pfmIx8Y6YC4ssSmEylgtL4pzwyYpWAV8cBql5Uann7sDu5ULQ0lqpmKqiB6CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715730743; c=relaxed/simple;
	bh=yjf0FXXmeUGzStS4NeFqBljkESI9/LjJd/E5SgSOjIA=;
	h=To:Subject:From:Message-Id:Date; b=RvOl1xQnGwv50r2AJUM/Y7T0Dv1G82ZSOyG9T9XFpRgwEZJDJ7PfBBsNCP791Mm4SvzerwNnaYiQuczMWTPm81fIwqJM4zumTWnAk6Cx+ITs7c/l3p1LMPKQj7dznU62jTOFCdFnf94m+gJepXO/2P5xc71qWnyE+LzxsN2GRxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RDnjXXM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RDnjXXM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC5DC2BD10
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:52:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715730742;
	bh=yjf0FXXmeUGzStS4NeFqBljkESI9/LjJd/E5SgSOjIA=;
	h=To:Subject:From:Date:From;
	b=RDnjXXM+MWDVun6QrSe5wqT6ickbIK2GfNzgqFBNu94po7/wUGNB9I5rKOFGzIqVr
	 hczFZlcTO88nVH1uLZe30MJVEP8lLcwHUVIt5ypI9skWao5rAH4cF3SEuCXEw/afZL
	 R7+9KXxY7aIsRcT5PjFfFFO9oMtCCZcOcXQRTvE8q0D9iPMMQyVtpSsoRWx10Vb6FE
	 AJTW6JxNF3Gp8XGUT4b+08IE5RY5ROqmB9O7M52pEdsevvvHpxSPM9LG386H1hfPyp
	 sKGjLHunKdFN69YMdknTmpZoHQQjDjoNRLz+B9rdK/VOg5sz+DgV75C8l2fppB3Nml
	 YyLRyMNjhnMqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C85FFC04FFE
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 23:52:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171573074278.6570.16935605127050383036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f46acea032559c90a8f0e513e2394ad892604c96f14bcd4f7819f5f7f4c4c6c5
Date: Tue, 14 May 2024 23:52:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715730742
