Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4799D3750BD
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790748634; cv=none; b=Y1AvnzfAKWVReBDjgW8wwnLQXyiE1xMifidKWLdLZnHWZZ6HAnaVzV7/Cf2Ves69Vo9zBkxZG2JqaB/rIfiuc16roN4CUTUPls6ZuxLe1x6CEdVd7UAplGr9rUH8TD0uJj2Fd/IuR3wqBFxIndT5QEbak/NoK3nCaT+/cGii4gk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790748634; c=relaxed/simple;
	bh=3K1Q87hF5f7B2zU65qyInjHgtbiW+WQFV8rKPLpl4Zg=;
	h=To:Subject:From:Message-Id:Date; b=GXCfBycHIDdmcQZTA0FJEWmsc+GJ0ZU4sZ+BgK76+uzWJTuWjVFH7ufpc6D3Poz9xhg7l8UpdD0PZnSC71HzG4MTM+DcIRRxR6DkgD0mHwqFd8CeZ54rn0TI4RfoJwN2f0AhQbwWohsAVw7dVv1TYMA47bhY65ZUjyBvhpoqyDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZEhah8wx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZEhah8wx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2BFC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790748633;
	bh=3K1Q87hF5f7B2zU65qyInjHgtbiW+WQFV8rKPLpl4Zg=;
	h=To:Subject:From:Date:From;
	b=ZEhah8wxdMRkpuUsS1F8R3NFvrrUJpkpBKqdufJkw9mCQcf550U0KWnaqpNKlSfqu
	 aEvQH3dJbmoD1Bfmh2BaFEOJqJ8EgK0+LOVZdKaCioUXYQkkpgwa8xBlKHbVYzuwwR
	 jPjmZyb7oCWFDLycZ65XM612SWp5MPxmLBoFTETfcH7bNfNYxjxLpIEB2m9NAZuYQU
	 DcvJVCD8j5+8u7FVleF+OIytmjj+Lf1Of7VMF/4qS4KkQ1jZiol+1lCvdzFRey/wDj
	 +QgfuQ6BYy4s+y1DyYC+8WsdxuJ3pbiafIQWrSxz+78TmEop9MnA5+AUgIJiQTR4M7
	 db4jR8aOyMEEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B4ACA5FAB
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179074863368.20264.10103573891442310294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00dd71b302a44dec67dfc2193c4341ad7f62849d882282fbc0b2523ba9cec336
Date: Wed, 30 Sep 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790748633
