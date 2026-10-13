Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25D853CA4B6
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791935434; cv=none; b=KEONVrfEfBU8GlhXzUX19ooxFA+HhWKb4j35qzPO8anDnLi8jkJdkHrrBeSy1Vw5jKG1JMdWh+rV5LNewiR3asEU9D0W0XvC6UnDJRcy8jTofvBvcWIhY+ZtjpIlr9gE1jBQdMZX135olCibC3XDmZqQCM5+DNwBPP2E7qvov2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791935434; c=relaxed/simple;
	bh=6aD+oF0yDGzXPbVTIa2mpG5RR7SfjPGSKjYnBNi5U7c=;
	h=To:Subject:From:Message-Id:Date; b=IAygj9b9OfHWWSVmGENmdfr/FvcsL7NYjE0QMeWiugHeMvXtzIaX1bji62EAMv9UjK7kRBBn/juEMOk8WTtxEXLd61s7IedGzDO3rhb88keu2cPxMsFnj1QTh1a5J5b3+BFJiX135g4XXAJd0zwbOj8Lel9NvrMLyO2n5nbEFBg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=opj20P81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="opj20P81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D58CBC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791935433;
	bh=6aD+oF0yDGzXPbVTIa2mpG5RR7SfjPGSKjYnBNi5U7c=;
	h=To:Subject:From:Date:From;
	b=opj20P819yC9ynBeuUHM7cqmhemYXl2rBgoXK/qq7c/vgIDJ/tUYuAEy+7tu61qdP
	 tdMxdBCJ28hzWzShA98X+4tZP0Zh7qi8/P1311bjgnBzagxVDb6jH2jdIsSRO+WvXZ
	 stH/JPFCj8Dr9b+QHdSWWd82SrKX5aGUfMyiXlzHqlxEGKkTYiuwq24IjjIxkO7EvP
	 PClMjyx+PNWmd7pHqnB37UHVKLbdqk2ncaKjQlJ+RztYJshYQt1dJQCT/Abvx0n3c9
	 w/mi3nOMh7JqsVPUy5TkvSifOeqUN2vOF8c0jvzjFgxjkhantgJTMN9X6IB1d5ZoPK
	 BMBMxpLSWza7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2D00CC6B1D
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179193543369.14247.11743780030110483897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de6d1465d765df4e3be030f3f6716f4e38c2e16c4f89a82de9b0d052ed8c53a1
Date: Tue, 13 Oct 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791935433
