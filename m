Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5424623643F
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789306234; cv=none; b=jBbOtiwuAJBKoTrCVWq6M4tT5MW8NUZqhS09mTEQIJU/lKLd0SH4HKDGDVB2m8H64hRUJXNgWOSHk9rrqV5cupK2VCV5HWbbl4l0Sxmoy46eeeQBayJmi07tlhcH+t1gNGKLnwmCFOt+2PoiCwOW9/ykITcJyxlzvSvTivD3x94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789306234; c=relaxed/simple;
	bh=nXFmqS3QQqUNcyr7En7/yMUVHAqZLveVB9xddIPTTsM=;
	h=To:Subject:From:Message-Id:Date; b=Rb06Xf6Ibew6KGNj2jDrTgUnObhAUFkO6O5r3kqRai7hncz1WlQLy5MSZJUIGlWAIdug/iu6ceAi6tW33PX4DIJe9vzQD3gsrINZzVXRJm6crJAYLxYYoJIXr58b5rdHIHUBwYu5ol91lqcfTHgcN+L0sCt46P/3FNAQ5zyyJ0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o3vKvcb/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o3vKvcb/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D17ADC2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789306233;
	bh=nXFmqS3QQqUNcyr7En7/yMUVHAqZLveVB9xddIPTTsM=;
	h=To:Subject:From:Date:From;
	b=o3vKvcb/SDHInoZY4X2LxuGvlms8g8BVlEsJFs8RpoRcjxIOKc8X+aqo+R8hSItt3
	 ctmSWOVhNrhK3QldB2GBiLUfnsBb8OUDMB0ny3TTH5PMWctHjTRaSHsqSFUZx8lhqs
	 dEvYtfdsvMp5tMkcrAXo3AgarD07Z97xLk/9JG5V6r75htbkw5XF37i/RefZ2iBK54
	 NaCQagQPIz7yhh05ESULJa+Z1RZBQ/lwh5dFx8c2p+gu+k5yBxR0ur6KL3xGPbbnYZ
	 N/rwDGlpaQYMPw2NqQygVSIJTTHf2ZNWTgqSctMwqIpiq/adJCOnMjqXaBg1sEUo69
	 iuUQWenP7TK7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFE20C88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930623368.31763.10592842080686967628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e564a6e10392cec7aa699a54152edda8888fc27951622f5e9e628defe97c224
Date: Sun, 13 Sep 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789306233
