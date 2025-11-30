Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D6C3FF1
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764463974; cv=none; b=QxyjBA1HmoCHjFAQZHQvR1dx1UmJ/ieuwX39k97OFN1u4A5BL/rvpM44h4IHl02DgyzujvefBoEIaisGn4CGnSjD8CWCbWKzhtFrZM0XVk/rTW5FVTPv3g1RqxglQvsDNxOVe2ad9iqD3daYSSuJY8p5DX1mMnpnbooKn4Mg/fA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764463974; c=relaxed/simple;
	bh=OCByKAZl2b7KH+//PLOUpkrOfiOOSKGmD30a27LtahM=;
	h=To:Subject:From:Message-Id:Date; b=gcBrdHlIztmr4m7QaiIiSD+l3wLwEOw7wp/klHf7q6uBaVE/iohLqbe5r8JfkrppIRFeLLdL55lz1bZ8YqCIj6aWv/WuZ4wEstBWC3MunqYSWZ8T0LW17yNWwVBlW9qxaf7tv9esRh2rfHQ2tMXtUqYD5LmrJWMXghqzhYfcWvg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UPs0F4Iw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UPs0F4Iw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50BCC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764463973;
	bh=OCByKAZl2b7KH+//PLOUpkrOfiOOSKGmD30a27LtahM=;
	h=To:Subject:From:Date:From;
	b=UPs0F4Iw9Vyy/2nVJgXpsGn/QmK/PUlMNyQNcyU39EK49PvumULRHrBaY/dv93STZ
	 qfYb5q7I8LHiDCKO4nfL/xH4ngXh1yX/0kQsI2EappA+0c+wipO2L99zjwmqAkQac0
	 9KNaMBQrw5y6I/b+Nz/BtCG0PpijLjgsua9yaEbzNMkk0V8sM3kmoLyA8PwmW68fyc
	 7YH9qmgPs3vG00LhTjREc0/xd9ZDBRX5lNl5KHWZ7FRTZPPWlKsV0s8u9GTqEMoBgk
	 GcPzXJ3oJCWShacUrXD+Srj116vBMXdzfokJnDuWOy/w1Bo4npAVGxVi2y8ucG8Zid
	 stPyoVJDylHlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93756D116E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 00:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176446397358.16997.12478434115508704622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74581a9bd694adbd4a81142ee53056f137a29bae60e63acfe866796468fe8919
Date: Sun, 30 Nov 2025 00:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764463973
