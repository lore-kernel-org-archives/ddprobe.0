Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2229939E6FF
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768485834; cv=none; b=ZVnysWu3E+JrUqUh4HS4gxx++i6Yg4IzW0ingqLOQtPnSWy6R/j2dysjuERy48fAR0GsnptpNyX47jyXpsyFz4JFV1M8MVF34/Etw+pyvsLNDeelo3tzvaq/QIoozb2A0OfKLsEySG03YCFBBz9C+AuWB8dxY31OeNm5MO2nB8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768485834; c=relaxed/simple;
	bh=lg4h4mlzdEyrkeb9tvM+ZtUCZXb0gFEBJGqFL61qQMQ=;
	h=To:Subject:From:Message-Id:Date; b=spnfaEpqBGTE6rT42a1SkJ1RSb0Nw3sEDgCGXFPTsi3/OJPqX4euTm/MAwoB/Z4jMP1DokU/1cfOe500AYGnBx4YJY1z/HL2BYUQuU/F1On5HH6I1XgoQUM1T2qt6Hq/59czUpbZW3ytoU1M9trdpeMTGvTDxzhLDKMvItJLOow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nLof0rT7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nLof0rT7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1034C16AAE
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768485833;
	bh=lg4h4mlzdEyrkeb9tvM+ZtUCZXb0gFEBJGqFL61qQMQ=;
	h=To:Subject:From:Date:From;
	b=nLof0rT7zcPQ6mYUy8CNObt1C1qFrR0bb5E70cmSs98ddfXTtuj1dec+jfFluIbc1
	 9jjwMy+z0TIKwCXWpht++dHHM8/t0LYaxKHfylj5L6OpQfARQaPdhtCWSWvQm+z4OD
	 6BVupwmmeYFtmHL1+n+IJgr9qwlj+6clgp76N6pPTNF7Yqbi6MiyrQGmVNu9qAGLji
	 2iGio/y58gIHym4VaInaXUYFjdhTKQJMWZByh8n5xlkx5CvmRwYGyNwJmYDx2k9veX
	 bBf11KizjN+/j9Ds394U3QXMi9dWWAAuAGIpGLRgBwd2Ko0B7GxwI4Lwshca3JbZ5p
	 0O3/HlYc3XixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB5D44C4F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176848583358.8435.3010893676579031226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e4bb5e4ca4a606fc81ffa45882f3bc5c8b55f894743be77defa7f4533ceadbd
Date: Thu, 15 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768485833
