Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499FC334C05
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785576634; cv=none; b=aVzi67fII41kkPhY9Yv/3gyp+JdpBgI1rR7invLBoyzaScs3uUAMgCaHeGlmoW4St34OfjLPSKeklGte86mMpHYyKNzYDVv62UII0DBV6IaI4Lwp2V2R93ZN8l6CGmUxF8Tk6Gj/R0BIxAnyEAWwRnlvsQ/XG3iA91vde3dNU6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785576634; c=relaxed/simple;
	bh=TDcTTk18BJ3sL7wAws6vSwlX0TuCbWNPGE7LmxTl6j0=;
	h=To:Subject:From:Message-Id:Date; b=Yj0szegbP5qTfWeY1m+EANJ+BXyp0HuhahPEnOHOZv/0eAi5SPF+ImHsZVTa9Jznld/3/2z04Tb68MYi1aaKfaJbKnlq1/9BCvSdj8sHWA98GUbX+/NooGFOUZomSPACqDyw5I3yuV7l9bijdoPl3D4bwjhmZx3WNLPTkItq2XU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=shg0e4BF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="shg0e4BF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8958C2BCF6
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785576633;
	bh=TDcTTk18BJ3sL7wAws6vSwlX0TuCbWNPGE7LmxTl6j0=;
	h=To:Subject:From:Date:From;
	b=shg0e4BFrxbl+XDmZgNFxlwsiun7j62x10beW2FCz9MepuRJBc8EHIm0n9ed2PVap
	 hIrkyf9oHXKF1Z4sKLRxn3vqlgjVUEQvM3y8fIyxR7lw92IXmuUNfSjpVqgveCgyar
	 q94DbIO49mHenF71CgNVgu0LljMJ48DjnoLQtMaqWjrRphP0g6RxVOAheWlZxDKx5A
	 jXPnXE7wVisQSXj5wELa7v1J84X+iZYwJx+ooqfL6LDRLAM8UtXDnxYp1qJKr8100m
	 +qgT2fejxDgt/7T3wqbZLgVoqP/z8swv6nuPG9Qzshv9yjh8rubUKesVag5JadMEX6
	 Tg2y1yR298aVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0E61C5516F
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178557663369.25579.11440059173707846856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1883367b41e68d24128ea0d5e30363f44e28a44a41909d0f15090ae18b8056bc
Date: Sat, 01 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785576633
