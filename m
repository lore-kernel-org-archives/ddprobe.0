Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35C92158535
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770821694; cv=none; b=O+GQ39p8l6dGzc4e2lAwKOZcMbZKOM1CPmgEjt431StUubZHR51hRyJGBvMjVyjn8G59BhHPrIpSKnMetwGsPT1tibJC8jBA5lSbkXCHFPnUda20jkZC5PplbzblMJa7CiTMY3JMZnJV12ig1gHB/rA5QINKCxw2d17I36X0Tgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770821694; c=relaxed/simple;
	bh=xv+M5VcUXtsxMGpnK55KKBnJYsNSP1x/M0dt5bHwrec=;
	h=To:Subject:From:Message-Id:Date; b=g4i306y53RbB3mRE6WSFIJsMbT2FDi+a8Kx1Bl87Ix4an4zUaIISGjhXc0p1lIc7E0+f7+PzWJ8TLgWRAqWhnqMvhk+dnpPaDXVan30orwMvCEcSJDtw9pPgUV2DNM0muuyOLkz8716UpvF5HyS29iuSRUU8+CaLremqUlfULb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eXprZ669; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eXprZ669"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8F3FC16AAE
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770821693;
	bh=xv+M5VcUXtsxMGpnK55KKBnJYsNSP1x/M0dt5bHwrec=;
	h=To:Subject:From:Date:From;
	b=eXprZ669exczKPynlXA2vD7z5L4StHc+ZrwODWYWTn84NIGexkUgwtRNhEoayzYb4
	 5zWDMhx1A7RLAHD42QhYYun6mwkQM/BpA0SlCpJXyugAMluy4OgT+tJa7qxrzh3XCo
	 0laXgfPEao3AB2XUkItbxNf/iNszxXE0As7f9O97Zh9/h1+pboNHG6hxcYBOA5vGGE
	 YKE2QNeo+L96MAPxW3N9Lebm54ywg/yDvgrMrtRif05ZI8JMqgrirA4DQ2VwFJNqUQ
	 RCSB/PFaaL+d8G1ftOhrMvD5wS6DtGIzP9vD0crQqCb+1dsQRE78FqS1UnWOgYfFG4
	 G9a9FfLa/tVXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE88E9E31E
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 14:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177082169370.4089.13752607361803782162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991f9fa578aee3c4027abe2fa669482160ba65349a0cf371b0623f1675c18420
Date: Wed, 11 Feb 2026 14:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770821693
