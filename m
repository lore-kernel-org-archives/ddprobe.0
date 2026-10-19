Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7103439479C
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792378834; cv=none; b=m2Xnlj4Xcuye8PtP/sk0oUMoHSPhBOzA7LRRoEz+DrtXzwAbTKCtxAFLNq7gBIcphnlaxGyzvIMQ33/nPQffSboKlKK0Tk1a8sR1SmRZVL72n/k+bFQtYqs6OqVM6H/eb0UxJ8yS4CgPkHmUoFhXJVd36jE1znwUlrnZ8FYYqX4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792378834; c=relaxed/simple;
	bh=rtpq+fJCMqn+MVmSPHZt+LHIOXnky6kcPTSylIOukHU=;
	h=To:Subject:From:Message-Id:Date; b=evqLsMFDvb8SwZzyA7z3QDXLO44J4ye51zY2sWnszRjYL6J5mZhxoELKx1o4cuMJFReDpIyS8LTDtpLjHlx8uE1hBjBOFDP0e3LdkarVYrb3p9XPdVa5BdTcl8B6ci1nrAxlMa0revS7iLg14eRFedhJ6adKFRFav31dNw7Vg9M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TvmHW0+R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TvmHW0+R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA12C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792378833;
	bh=rtpq+fJCMqn+MVmSPHZt+LHIOXnky6kcPTSylIOukHU=;
	h=To:Subject:From:Date:From;
	b=TvmHW0+RBGxlSdTkRVlMe19licCyrCZKXLpx3ANf5bizSn1z5AEa6Pv9B15m9qgT8
	 czvceyCFiZt1VQJt9b2PZCOz4iB6Sj7RD7462GUpMneI5YAxbwbAyiZIZ5Xr1o6PEU
	 oeSkL/gOXMDOUiI+B4bOgXK40c8+ixuEw629x9/3QLdjYZCCNnw3Xbrz5GwZnG41/r
	 mkQvUYYxSVvx0iRjfl3QOcP/9G2dqFS9T5RKGx9TYLNhIOzg+UbMCF+zIZWtvZYIJb
	 zyQ7cfmP3ggxT68NAZZY9UJRa2dzXKgddbI4R82dr7KJK8hy8WGtJPqjz5zttnBnSn
	 TZGA/XsfZ6lYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9079CCF2D5
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 03:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179237883374.12521.1354942902385802404.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc0ed5d12b9b7aa72ceb71a8ef631488386c800a899ba44faa7306f877b9be83
Date: Mon, 19 Oct 2026 03:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792378833
