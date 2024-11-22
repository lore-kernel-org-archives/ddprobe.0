Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BB12156F3F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732264554; cv=none; b=vAASHJ+2bTKY6tJ+1lLbuu1jMQWWqyRd1yEhVGHskQ/A7/U4n6sLD9lLspCvaf4Y0PE8o8vJjZCGcdEzjHApUl2fjLd5jHRdKHgCOyQZogXKyOLl1eRljEyFNvBLjNF2QAyug+zwwATjAA0TzGDSjy2gQX2xAtDsLFqpilICOs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732264554; c=relaxed/simple;
	bh=cQqbL0qgfnu70Ayr05b7fnK0Hchddl0SfZ6Yod+zJmI=;
	h=To:Subject:From:Message-Id:Date; b=F+kEPyGm2LcZFgN5j3NkbIKc376jWr1Y9OA1XCwfgvgGvVIIAbUszEYkP4d1VIHiG9oKt6PANv/2nHINUtWNftxz4dF5SLp6IMzQPPLf3+U1rwiv68qRaR1EsEvyDl2srsS5EWdqrPc/8K9qnEWS7bU4G8dR7vp1/H67fw6UuU0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BmOEg4mY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BmOEg4mY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22FDC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732264553;
	bh=cQqbL0qgfnu70Ayr05b7fnK0Hchddl0SfZ6Yod+zJmI=;
	h=To:Subject:From:Date:From;
	b=BmOEg4mYGAfr7XnYBZL4lHJ4vLfTgZNKYTGQLIw/mkerqiEMNcqkLX8YQgGu6GsUx
	 fcPzgjh1EtSunL2/5NJayCwwuzl62wO6Dekr2RnjVQtQPQfJ7ahmWRPtnb3drIN55g
	 6tDcsRAns1liYllLNlSJXJ1Za2/GFNGzYjdm1SbLLhuDEPifAHiAyJ0ASdDIc2jvOr
	 +rKAHOMAiUYG5U0BB5un8KGemDpHmTH0EZoKcQmx+YOP7eA1Szv0a/51MnYKdu0EqT
	 jjTb+0/Wx+z8yqnyVHvgP2Wj+46XhoCdYY8EnpppphtwH3sBN/pI3aUkU+Rczg7dTx
	 9p2uJwSch9+PQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5D9E65D2F
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173226455357.30540.13251083764451411212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5dbbcdbdb2411bb58d68b5be902f1c6a59e6540a8fdefc4d2ccf11dec22eae14
Date: Fri, 22 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732264553
