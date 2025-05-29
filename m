Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7EA8E2AD31
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748543994; cv=none; b=Wp9vgO0/TYRO5SAVGrdlAaXSR55TX1rulnX275m5lqsd4BmW+t7gb5L2SVQBIrrpaOeJd3GdKmXuDrfm3KPjjWhcm8wP/GLeeUNLKp6TxxWBpUdwiTbjcL7xHV6pOfPooQpKLBY97iBOXRNSQGLOhHBGjntXHTLRvfeoK7dEjBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748543994; c=relaxed/simple;
	bh=DJ3bTm3oLv88gyfrnaa2sXGCuE+cc4jjQ7ZNgFvrMEA=;
	h=To:Subject:From:Message-Id:Date; b=KxA5L6qK6lzHWy5/ZgMdvyhC6C4aF455e+GP2wZDWLXJ6tcWZLoBsxUbgDXMmLKQcgkSEl1D6mzfr/L7F2PANTV6sHUwI0fHxPF6I6JPbFmKnb3vKTgB1bHI2c0qL2qD9bO8F5wksFPf08pqsuKH5wgR+FAMXZVz8Eo0nYs79mk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOWf8H8q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOWf8H8q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5974C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748543993;
	bh=DJ3bTm3oLv88gyfrnaa2sXGCuE+cc4jjQ7ZNgFvrMEA=;
	h=To:Subject:From:Date:From;
	b=cOWf8H8qeg7FaFAlWOUU3TVrWNyG49AG2cOHUzvjjj2P9qeaYROUuwPAkdHVf8Tjb
	 UAsLTRtIWmPeMR+OgOKAY6lvh+tJyzwgZpUjY4o3ZTRELTYIv0bNsDD0Wl3EmiuGvl
	 v/RrXSoWjxZVGqOn+bhXx/AEGrAZGPOcTOCzCY9iXgeoFfQ0birbbo68+UcRj8bPEu
	 6R87IySR8bXloG3dyW9B9UChyD7bKDiDO9JXRGoCpdHNXOntqGBe5ZvZx3rLd2lfv9
	 bmSyD18Dndhin57q//1wVKe4fQHF54sJ5ypBSVpP2I3EWK/pEI6nH/1N937GwWmdN6
	 1NuZ+06uAYH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93CD5C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174854399357.20329.15834109733760323706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc17aa2e2bb5c41e1b487486744d65b8f30e52b7f3f239654d2aba91c4f584bb
Date: Thu, 29 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748543993
