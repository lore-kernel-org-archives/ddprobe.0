Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1111A376484
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771928094; cv=none; b=L+JZ/9eyZ19gWFH+310dE2nFwJpB6KMW9r/CuQReUpQ5NVX5Awdkev+hR5b0v6AAb8b1r7xlBWVgpw0w+j+1DOYwuP9et2660Mw9JYfIxKZ26fOrNUOXF26OGIjw5Lvv1reNGG5gOD94tqLSL3GU+KXySfW/8kv4OhZg2rQZ6X8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771928094; c=relaxed/simple;
	bh=1IYXzMBlXfeYgHsWMzyf4qsfLfQzcfFcbncoTrZBvo4=;
	h=To:Subject:From:Message-Id:Date; b=D8qpjroDfajsHH8k9TCy/fJzFXiuiZYoYUjTyaFajkxn41hnAx/U9IweZ8TQknKmOfr7NEM+p+DndhonfBk0Se2hePbYwtAmaZ+ngVGtHFPb33c7Ndp14fjtVg56EpAEAMDrc5zL2v2ghndgd1R0UCs8C9F7R4wATcDbQ3cbUd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7vbKnpd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7vbKnpd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71BEC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771928093;
	bh=1IYXzMBlXfeYgHsWMzyf4qsfLfQzcfFcbncoTrZBvo4=;
	h=To:Subject:From:Date:From;
	b=u7vbKnpdO0CDO4YiTHjaspdD9YKtDgETOPORmn8/HrKGUePs96qq5RPH9U7tZvzIM
	 6lb7d3+8PrWGktp532M7/JYWhb6x+Cakn3uznNYRhn6yKi0uLCnmVjmxWB2QNsY6HK
	 wI9YjUUa8QqmN4WkzEVc5xY67tIwzbcdl+lTSwGW/1Bt8cYbTO6gfXe3ZhyU6Ohqmt
	 YTp6hVqDppoohYw2VlX1Du7yST6nf30GftcXIIQ6FBH8pQuUJfaEvQZgMvHjdyHuAJ
	 +d+tuvMh2+x1i6OHFFHeqluRhVFNpY0w7jprKJ8RjprIJfqQi4rkXYXhRYRTWTrBu8
	 WdlidQd6uoWrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A6EE9B24C
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177192809359.23236.13236526926947850996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c3a5dd09c67e570f027391650bd894c49fa500d6935f9b9d335d04f7ab2f72
Date: Tue, 24 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771928093
