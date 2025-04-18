Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F5D215079
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744993194; cv=none; b=IjXkCd2qUb8P4WocvpEmo6TPMPFEn0JeyM6l+n2+iOZOl6jpz6I1H4UY9z8i5Q6QhjJ1CPZtvOb8JzKkzPufXVpt01EzFqKMSEew5wXYpZ65uKGwqyc9euAEvB7HX94jWG4kLrr2crMq6PV032tQHNm3ophw7JPTS3AHmDYA9dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744993194; c=relaxed/simple;
	bh=D0qHuyxf97obupmBBYFQyMBHquKRX27CpFODqnZhjDc=;
	h=To:Subject:From:Message-Id:Date; b=VBrFvtg9+kVYM3LnD3Dx+WuDIslAt0eKDkkb99Eq7oOpZKb7jkk2Mu/HYTd/XkypoxMICubnL88X+uV5vV2X25KXQem3VRJJ/3NAE3vT91Bcet1Pc8NZ3kFs+n+LCwHM7PxY/QBF3NSPdtWhNg0M4DdcqRQ6ZD156jBezTsCmy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aVkl9JnI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aVkl9JnI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E86BC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744993193;
	bh=D0qHuyxf97obupmBBYFQyMBHquKRX27CpFODqnZhjDc=;
	h=To:Subject:From:Date:From;
	b=aVkl9JnIAQ3Cfsx0SOh/q5JpdZPnqBNDRFuH56LtR4YSbpDqyz7MRBaONbsXYvy7M
	 +2Lg9X0+3S1xwCKkCZ0fH4NJSC2v2h1Xv3CDint96bI7AScIYdgSp8zh7R1fm68I04
	 xAJhCxd+NtrPwJ9SRmbFHn8vfMHpviH2DezOtGkphX8hK7e/9lHv/URqz1NOwDE7U5
	 9W0lYcC0xiFLXT7aOBHY6Wdb51x8s3NUp5urZo72SNraQuHmqcrTd+0VVo6dqhhX69
	 HwXVuZkkPy2Wg7r3B2YmWdFUiit0gJi8kvfigAdFRLyd1s2O7RrIE7BCOggL8mwiMz
	 0feWxgztjB0rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95ACBC369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174499319360.10694.17782520744988191998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e51ccf5678d79b96533f04d690cf2ae475cdd16310daae691d92802e8662f0a
Date: Fri, 18 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744993193
