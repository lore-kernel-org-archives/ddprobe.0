Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5D7246BBA
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755631195; cv=none; b=i3xyMlJpD2fObplGX5nIt9UqscfrpgP245IZ3e4D8r+KtORaptuNRFDPM+1TE83ycmUwqjfo8a8xa7/6nYxQI1YlEXnvR2D6/IziZCiLr/1fFWh/T/4Zn1dFrR9SCLhtKLnC5tLL2XhQRBp81RbuXFMLTWKGAeB6aw4S0WQP1KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755631195; c=relaxed/simple;
	bh=Zdy/lIK2o83hW0L3COo30KGog2k9mCAH9AWpPcAezI8=;
	h=To:Subject:From:Message-Id:Date; b=T/029MY41A6E5/RcY8+r0u4jh7GQvSmyT0keskxK3Ubzg+meugj4bMRvdqgYRmVo8G97bTk/QPmsC6vOeT58L4+bqByEGr109zEuVxyR/OgJIxxUJaP1lyqjv4ADYyLO+Q8Vy7UQl6pyRX9ZDUX9fWxTUEKunLlBc8wU2yBkLio=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WphpHv7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WphpHv7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE49C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755631193;
	bh=Zdy/lIK2o83hW0L3COo30KGog2k9mCAH9AWpPcAezI8=;
	h=To:Subject:From:Date:From;
	b=WphpHv7XghHc1wxDkCKZWM2oo8svjVpC8QEmgZNYBYmpglmNesgjV/nwTvkCRz7o8
	 /9pQJbhkyPPGtjpaHdbKCSBhcXV4qsgnsGwfpqWwyHr1JVhpjiTvr2hEHKV9FH1SyX
	 qCXEkeAIOhJtsKQzkkkveYxvcsSEEJvTpMMSA1fi/oOjV3R6flt0TLTfDw9lZA4mDo
	 Y1qL4EFmO8coTgxT70vn2tuN3NzeRLf3hCALBEv3qloqNb7c/tYeLWLGbCAZ+jY/0N
	 dmySu3tHQjn6rJskrNpstCGkv2zCDLFQiN+8g4Ou9Wuy0Iw6Pe2XgM2YpcoZ13iIAY
	 T3rTzUd9uNYRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEB2CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175563119358.17530.9770866225505074598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6fa3602806624914393a8def836d09385845346b3d7617e24d03c692f233fb
Date: Tue, 19 Aug 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755631193
