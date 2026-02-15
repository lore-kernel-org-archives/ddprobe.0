Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BA622D9F7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771149294; cv=none; b=l6NRnpSbFWaykhRkHgYzHFrl1bX95JJMOLPAk0xd7bKdZfweRmipObgoUYD2U2iGJLwWOv4o8QnvSo0y9x+JlIlgLWPcAq9EW188lCXPsUdIZDvJaml0NxXQstQnCg8R4nTLXGzHsSy0tXpLTtDyk8QnARLZjIHPjGekqVBES0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771149294; c=relaxed/simple;
	bh=rReHRgFn9tddkQ927d0zqhIYB/HUzF08oaDR66WBXUk=;
	h=To:Subject:From:Message-Id:Date; b=msWEdxY2QXiMEYVf0wuOsPRq2VKw5GijHYPyx1DGKBDd4/5RBRYdbZSKfAhq76R/vThSeilAptvFAJvUyQPwGcYZIHNOH7G7/ZOr0JfdWY9+hgN5mgnW0M1CyiXO7MMKr8IE9S63wJ9evSaV93G/g8nmMS7hwRkqkd002thabzE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B3H8+rVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B3H8+rVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8F81C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771149293;
	bh=rReHRgFn9tddkQ927d0zqhIYB/HUzF08oaDR66WBXUk=;
	h=To:Subject:From:Date:From;
	b=B3H8+rVDoUwt+mhSVjOtaA3pA5yqkUxIXJhGKCMYmFur7E08PnM3TBxj7cWKUEFqr
	 hqI/rXKez6OxAAyxHIf59dTKp3/7sLRxo357Ra3QTHsL01Gh7GNFrZ6PEVldFdVscM
	 M/TLAXdu5SqxLjzJb/5KwJY+UaXuxi38rXDUGC29khjDSZRhmiJKF0B0zV6d2MnpSS
	 GEnBFdt4xEzvhnWJ2nUzwMltGSMnBpLwBsXvDRzSh1GErimk5NnBD6OZ+TzHmnv9Jm
	 /SiqyuKcTfookim6fiH9bd4D6o/5rXMD4uTkZIh+lROX8dxpdSE02wbNj7hd9iTr1T
	 +RkdoPyBombng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2610EF586D
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 09:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177114929362.9498.4147636781915470496.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f8f145b59ba207b17a3da49034d4b9d4f3626bd75e392013c8c0687715f865
Date: Sun, 15 Feb 2026 09:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771149293
