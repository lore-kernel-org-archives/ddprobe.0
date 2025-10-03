Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F41D6347DD
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759503594; cv=none; b=nlhgGShwsPBk3meDTaskrQQyXB+PyBIS/1cehkYzUwgRQcb4auCzM7k6S8wHJ9ZKcZo8RAxIHuHBJDPl04y3gIy87RVHRY0QqJmkFD7/lVsn1IiAFswbWqJQs1bieyaYoZwroJ2ElliqRHPwxrIXlFyPTI1U0aLUv1GxbakuR0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759503594; c=relaxed/simple;
	bh=iykDOKw2lrMTTVu6qlE4TwJ2hg8E6ZdoI5kYGaXppmo=;
	h=To:Subject:From:Message-Id:Date; b=pjpzgO56wCVdqhXTKq6rfIdfMkqmN0uxp09FXjU3TE5Cklnl7tqPib8ycuj78K6UX1x2j4sx/bLVyXAxW5ZgukYLOLHS8+lyBLOg9M3jghC3600mAfUYIYZh5k+tubtMZ5LO1xXK9IbM6MNxajRBg3JM+y68nzhb0/2PJS8bW0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r6y9KmNG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r6y9KmNG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2014C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759503593;
	bh=iykDOKw2lrMTTVu6qlE4TwJ2hg8E6ZdoI5kYGaXppmo=;
	h=To:Subject:From:Date:From;
	b=r6y9KmNGyVmel4+uZO+/O8mTd80xdgH6eizHNw1d/i8WenFBQGZfiG5tPuWaUiuZd
	 Z/wrDvHRIP4ylsVPFyzWbohSUq1UGKhu9MgrzMcVjXwWf2mrDLj1V1hnuHWuWaik+Q
	 s+wFaXqsbJBxaI7s0nHt4xvY73U18wzWspEuDrx35yX9Q0OWSz8YtPBKMOHSjv+pZc
	 f+Bj4UVRuISzbxPJTkr4/LbReP1afaE0UQaYavG1R31Iu7enR7tgUxZxyur1bAvwhj
	 khKzPtOUj1dD3QqaXfJ/AxpzVC3qlZM8BYn6cSrCY+DNERjzkH5VtD3PaqylzVvnQR
	 n0kVRoMcU63rA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90309CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175950359358.12947.2273060955450318960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c9526fefe9b954c184a18b4cf7e11817f55e3ee72e1e1360ab8b172119df6e2
Date: Fri, 03 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759503593
