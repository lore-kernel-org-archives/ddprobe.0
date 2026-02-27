Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1809F45038
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772169294; cv=none; b=OinCZ9CIoIFx0rz9QGnK8CtOH+HTE6gi2azdgn7OrZH/JBjATMIFRT3oX4fvnp2yW4uVCW/fCJ5zGvPO1aI8a7HQdWag1ZlNXNpL+EjWWrrIpLYeI6ECUC5PgnTzVGLp2bA88oDvXT0D6f186uW6mSKmlkmcBHaizc/AV+ODq9o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772169294; c=relaxed/simple;
	bh=RCNt53g3M0mAK04JOOV7bs1SIWII3EXgCkjWN/lA7+8=;
	h=To:Subject:From:Message-Id:Date; b=To9bEcpX5cI6/TfSC0TNrn7r34g450cSHrDtQJA4i+55yVPyp3RO9Iug4XRf/5bHaYntD/8K2SMVYmsAaIZKBaDMdTInnW346qOIcDTUxi9ONJbj3vm2Zl+XAtYBNBcbYrU/J2vGE1T+Pi+ln+qYQxxpJy4oBSlT7zE1LEUXIYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlhDdDGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlhDdDGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D50C116C6
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772169293;
	bh=RCNt53g3M0mAK04JOOV7bs1SIWII3EXgCkjWN/lA7+8=;
	h=To:Subject:From:Date:From;
	b=HlhDdDGh9pIm1rBWg6PjPWn7gX6+9sb6wDMuMwAt7TW/SJOdLl13fnV3Ejd9BOPL1
	 VhU0nSLFtSjl+gvnOLmd8dvR0E5odCKK1/Wd5W48AWzwEw+Ym1impqxkI19FxgTajX
	 4yqYXbs6TKqBmMUIzlPLIxNZUBkp7buQ1o1QatkOlnIZGeU6ofD9EOGOsGDfEB8lVh
	 2uJDSRCHUJ46mnsmZJuH0GR2QRjLr1nlOHw4haJilsCNLptGnon7cXhqfMBHfD7eUQ
	 MKK5KTbe/GkX4yIifDSKnAmeXTo7JsDP6c6D71f7tgE98wM+EeVO4Yr7XN//B5Zdie
	 k6vS+kBAlUtbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95C71FD9E1C
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216929358.16224.1303552524897149765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db3adbb6011cf1820edb99e7230d0b8558cbcf19206a5a623e6bea21a3cba691
Date: Fri, 27 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772169293
