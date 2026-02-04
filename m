Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38F61353ED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770239634; cv=none; b=Tkf0ATlKVCHsilkr1RzfFKw+ZRcGVOtSsTjIE2MbQGJe1O0viDdg86vHz7iRgt4/EVax5B4boFtIfKrxjyXklYMgh2DYR3PtJ3l3Gw44IQwP3ysG5rYoe0KBHe9E6osVjZLPam677NIyEPZtfJUYOTdGWWw+M3NgX+4IZjhJctg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770239634; c=relaxed/simple;
	bh=lVZBk8FF49wK7thqIDLYPw6oXiQjzCVYJe7hGXN2Y1c=;
	h=To:Subject:From:Message-Id:Date; b=BLqA47PfZk/gYcIL/MYTkQ6bmYw2EA2iK26Ahf61R9vNa25blGCS/i6eWxTmg5UuzqbTuCUG9SLqCYc9JKYZyaJnWnbL1+Lw/wPSe+W4ecRglSP5lAe6PxcOqu3PBsb3mjY6bM39KCcgVJECeNIL20hTDhKLdFPN8dhkGyqbcIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LpnegjNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LpnegjNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16F3C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770239633;
	bh=lVZBk8FF49wK7thqIDLYPw6oXiQjzCVYJe7hGXN2Y1c=;
	h=To:Subject:From:Date:From;
	b=LpnegjNxX6UC5nIFzNybIzHSKn/PIqWyGkyQOEa8PO1vVS9CnyoDUBBPUs+tc7SrW
	 kNaDbzcYpnzOfmZr/q0DTYTsmARvaSN27FXeUJflWXWiacCCGRZiIL3fw3fQR59rDv
	 7wd/SdzgoXagXoTiexQkAwHoxNLHYtPvF5jXTR6PkdTMlcRE8fT67BBetMwEsMEN4V
	 Rzu7uf8g+WxKrWx445xrU5wt0p+tIx06tjhatMz2pymFTyX+8waHW0gYIMNq/33bKm
	 Cj+8LuPeJBIXKk7jVUBcwMN3Mov6BirxKLquSZr69GpLsXNMIv16AG1qR39Bpg9bZi
	 4O6NzW184GuJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E4BEA7944
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177023963362.7497.15664956653676061340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 662acee434ea0a7a8393f8f1a09c5470ef9004f2a5a4d7af1c144e166f6b4772
Date: Wed, 04 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770239633
