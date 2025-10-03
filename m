Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A8AD205AB6
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759535994; cv=none; b=EgCJYxFq+roXxokJApRflGS3OkUR8qYRMPIyU7YVokRPj74UCBvx7tMWW1uwCR6U86PSz7TLI8rP6b/YkFfIhQxHnK796AaPQtDRrjUmz4KlBcS4pMJUlkMdAYeV3TLbeWUDur1R5pMHio6Q8usOXowcSg+MlRT74IgVbcp1Jk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759535994; c=relaxed/simple;
	bh=g5Xh2QppkQwZ3oR5D5MP93ll98WqdLMwKk42EI6zHJ8=;
	h=To:Subject:From:Message-Id:Date; b=IWpkEtPAxr1Ew6ifwBYzLxE9AumqOD7lCDSCVYHkn6VBcei3qgranA4Rz4AuPejbtgWammFVIEThzVqb7gKOY6anMXE8wmjZOfeeJ2mhlYJRYBidD8Phyx20VOantLVfD4TyAlFPwt95StL6e4dewRp7yaSrSIAUramgn7+/tDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ljomKIR8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ljomKIR8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DEAC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759535993;
	bh=g5Xh2QppkQwZ3oR5D5MP93ll98WqdLMwKk42EI6zHJ8=;
	h=To:Subject:From:Date:From;
	b=ljomKIR8c0HddTVvCXqLHAveQTg7Tfb+1kOMQ9QVTFsIzK2OZC7e0769z/ygsCeDe
	 7DgTGhUfC8F74JWspt8vINcdxBwoGIHYk7Iq94KW08Mi1s14WYk7gu2GvEyr6Q3wqL
	 D2dQNq4L9qbt3EMzwoDofQNB8FxnGVs08F/2E8nAg0uit48KfUWjc6pxlRqr8F5oe0
	 JFgRkw3gWMj7V88IaGD/w/W2Bzn13oxJUZE3BgjFuJrvCxu77H4Z0Nr41uMPsvdd7W
	 UNYO7qn2NgwzCs0cyf5DPeV3ihUCHPigoFK/Jejjd5RvknYhrdQ/QeIFhDOPKD2Pz3
	 XCmR7iZJGEVeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE6CCA471
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953599358.6431.16072046926893303521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 201f2fafba1e2823064f2c0f2986c34b09c1cf65cdbee3850ecda6ea7afc5bfe
Date: Fri, 03 Oct 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759535993
