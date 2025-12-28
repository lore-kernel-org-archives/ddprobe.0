Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDA7DF76
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766946234; cv=none; b=BRLM2OxI7+Z/gSmwEdAr0GyiSN4f2RtqeQe/yBTXrGlfBIeGcy1DUrAZE6ibq4gTEcRvie5Ai4/sP8kHhKf+Y2mi44WECgSlVDzY1NkBNa9wk+8Ru+uE9cu27j/ri486Xr+0pTFB9p3Wv28MjGkMEfcRPldqXwZi6ImpwwcB/Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766946234; c=relaxed/simple;
	bh=W0qWUwZEnaROMCdB0xYN+VAL+lzHTaE5XLUBjZBlf+E=;
	h=To:Subject:From:Message-Id:Date; b=n1m9tmJcxlURppiLDSl9/IumHWj2FtfvOi6n7O1dePrx6RLieGA354uBMVRkGcV49Iw+iTBDXnC5gpe3IK+ZHKzIFdZBvARK165ySp7hbprmnH0vS5i7oHng0UNJpSfMwQGQXD1gGMX0RihXSSFdQ/0gSk/ltUKOvkyjsf6snyg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b85WwivX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b85WwivX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C42F9C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766946233;
	bh=W0qWUwZEnaROMCdB0xYN+VAL+lzHTaE5XLUBjZBlf+E=;
	h=To:Subject:From:Date:From;
	b=b85WwivXOoJRnOZO/G2L9Iw2YOhxRAVH5u/6SUmjQFAE4KITALG/xJi/QTWROmNS0
	 xVePlyVlqhH9cNbyd7oI4n5bpk2E6Plcm1RpJFy2SHgYu0t8YA+wuZD/YHtciWIIxE
	 k4YvUbupMtRmJo4RYaqJk39PucOo+jsJg/DR0pc8pi7jCMTQ+aHik8/VVJ9Ga/rLnQ
	 pDN95clbADEqSeGBYpkaY8x+kaS5ke5rMPKmW5o9gI1tA+Ps21W8A7237oMmQRo46V
	 8saAgQIHkPCsNJO0uNOgKtgMt4/TcrPfgb6A4USVES/Jypn4uAv0fXzTqeQq2lROhS
	 ueXgIRCtFeLyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A471AD3B7E5
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 18:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176694623361.16513.2452342462289042910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84869a8e817b9f5879573578f6318622f9764a5e1e16a3f14c6b5096d87709f
Date: Sun, 28 Dec 2025 18:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766946233
