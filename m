Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 028EC28EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761527394; cv=none; b=cyrho9TmODNIi0+NBu7un9rqt96kgxrOUUaWhuc5XyvGOpb1DmSxL4nKcy+JVooOGne3nohlD0C+KSQLIjlyOuOg5IGCGe5WTo2Eq4BaqpKHUwCE2ur/mBVHv+DWEzb7DY7fGrJQtPrYwvvKocxbKR5VBQ5LhpekLcJBkIN/v98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761527394; c=relaxed/simple;
	bh=1qZd+Hmpz7KJCDnAXQVzWx7/ZgtoxJ0atWAlnMY38qE=;
	h=To:Subject:From:Message-Id:Date; b=WLf3NmJJnMUGcqanchd9IBfsDBydSLFeF3Qd97wC1dwToqT5RyQdPV6fp+RzpZJRaNrebMzgmH7W6hXfk/GskC9ZGmmg3XhQxhn1bhdXAni6YlftndwzgVvvHJI1NqrHJt6LLP9bKvP6bGw8SpCYtE9SA3B2/reJqr9KMrHRkoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2aMbKKf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2aMbKKf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0684C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761527393;
	bh=1qZd+Hmpz7KJCDnAXQVzWx7/ZgtoxJ0atWAlnMY38qE=;
	h=To:Subject:From:Date:From;
	b=I2aMbKKfDWycLSy8/xMjplkb1reSrnVYC9pUCDdDhdj4NbtfH2kyPGSOuJ1P38tzK
	 +kRdRyQv/pwu3atHgTaKfXBLnNhR1a6Wem/E2UqiDA7SMGTsYDjmi6cC1jyMQDc0hB
	 q90ijBrX5qOqJU1teRpKl3nVXBZYs+H1JQyCrG6Z0WWZJly5/cnMeSgHln0wtT3HSI
	 glU8wqpQFDm7s3brhGlpFkfKQ7HUhWrh+8U/TZ9NCLglOpWXAdcb1ztD7ouTmte4Bh
	 yGatlTCjnOxjGAMCDL6ffP8eEysNlfOdGudAN8XkgDOClhtBWoIXF5u1qwKv6arccj
	 jRyF5UO75ommA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E372CCF9E5
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176152739357.8295.4575961133296448012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: acc3254582252b65fb732dcb1d295f65dcd339902b4a469a784d6f4650657528
Date: Mon, 27 Oct 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761527393
