Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAD52C0268
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777180054; cv=none; b=knLSqrcVuAp1Jvow5KXhnkvxXVo8aAQGRrMT96Jukz/4KlX6OtZ7yoBrnSIj+6VOKG7Ph/uiDFYCC6N1FpVBGZbisp0hxbrbLx1VVfg2L+8ve8Es/1JtfmHKvreLG6SOhx1pcOt986aE7klj22OZppYi9+wrD2F3EQUgjDwVtDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777180054; c=relaxed/simple;
	bh=tlov2hG09daBldvpXalvEv3vSO1u1+/mg1upJA8+mGM=;
	h=To:Subject:From:Message-Id:Date; b=bhzqVHboG5VnqrMkZ9KQtiR2VwjZ66YAQAnXh4Sqp7E7lUgZkvjWw3TvLVbQ00yxK1SUa9Xe/PCpVtnyiVZiX9UfkbQiH0mHlfP/OZbtSwPYWjV06lXzHKq26ewpfBDtgD9EHCUVhzgNHNKsVXQoVF6mSN4+rvFzOlXPubQ3TQE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YhWbbfRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YhWbbfRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFB4CC2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777180053;
	bh=tlov2hG09daBldvpXalvEv3vSO1u1+/mg1upJA8+mGM=;
	h=To:Subject:From:Date:From;
	b=YhWbbfRaw7sKOc/9KFheEpoV5NridAgVW6PisqnOulEts7QWL5ok4H2bPLfi87Oco
	 yIQKGjI1aLDJNWr6+RByf83wCac92WHSUSS0KIfDn+gT4xQ8kDS+ftXSkUYrsPwsq4
	 zTvnWdyBbgmoEtQTt4s3faDALML2uuaHOsL2aaDSmHt5YUyg3QX+igtnNsLv6Csh23
	 saes5ks+Rpf0Qi0YDYJ3mxfk0qadE00oqx2OWy8QXbH/5bE1Fg004pCXn9lJBm5h42
	 +EA28q3FY/CZrwLh08N5EIL82ou+y05C+mh9gRz2OHIPnZr0OJ0DcNSQGh4ZqMPdpY
	 3XMDz+Do2LR7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCABFF885E
	for <ddprobe@lists.linux.dev>; Sun, 26 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177718005368.9757.15141366040708421100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2656a547cef98b731c50e5e1543d0d49ba28d27738f145421ff56375ca94f66
Date: Sun, 26 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777180053
