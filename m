Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5ECC3367B9C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789138234; cv=none; b=sP/bb5XPPt6rU/mq+yaoirsHT+DqhaC64TVedhSzDojT1BjGUaW4kuruvMAgOrHUAb4kRkA79QCCUKZfA1PqNSt3ohEchdwNCJowgTLv6rbL+UpIB+X/0ffrXGhcqqLW0GIQsf4syvI7C9/WBgYbByPprQZ90Ws3HLRVo/G9KfI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789138234; c=relaxed/simple;
	bh=K15kKHHYadSj6psmzf9WrKtTKccfj1jZD9GLbj4LXpA=;
	h=To:Subject:From:Message-Id:Date; b=H8nQBP1Tcc2WbR1xUxIuD+WnXEwOfEmXC5Rc8+2kHiyK+2lfAmJDOnm16XZYNsesaI/C48SQponSTqGC+1JqW7zkxTPjOc22S+Lc2vqqVQIVyNrGAPKybSl8JMy58Q9tlzilRaxcvApphqzC27BbNuq65QzGg6RVvlTRQE31Lfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F7QnsEem; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F7QnsEem"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2DEAC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789138233;
	bh=K15kKHHYadSj6psmzf9WrKtTKccfj1jZD9GLbj4LXpA=;
	h=To:Subject:From:Date:From;
	b=F7QnsEemmt3fHmgoNZT5MaSpMQjrLuVg7IsjNuNNC31Ej9PXoKcuYVrhJ8dOtGmwu
	 RvQyWa5CJgLIoX9WyQwtZrKmyqkp1cj+CIIr/RCBWkPfdU0lDqcZg88WK2rpV8684w
	 6mijlGqbhipZwikuzW/6IPDJd276yOjxVNz/Naqy9Vq9wvzYYBNsEk9oj7ThMtyof/
	 7j60w78yELw9+XtVN2wB5caA14dknaAbEyMB6e7dPpxcYp2lYFj8oFgbCRWGMlbDEB
	 XP30tsuVMRiX63GvX6F6OmzVLXWuDfNNfFbIkNQk8jgE4+aIXnNTO/eSU5MgVAWE3h
	 aKPwh0O2v4Z0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3A4C88E45
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178913823370.14751.7509093476693471713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2addfad4963e1b3d26bb0d3a104787614bfb9b6902531e98790d15130a34e293
Date: Fri, 11 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789138233
