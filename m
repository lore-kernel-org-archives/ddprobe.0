Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6CF3B1A2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736206554; cv=none; b=E3rFtJX7lvTp8werwlXJX8rtqvcSrv4xchK4zg6iZ6bYLLxWJPDMI7oHjd6gf979QXzfnE1zd9JOjw6W5VIiZVUQM8A91YcwYv34tl1uyoWT8XWrJiaYPQmm4I2w63ZfLVVBMkKD6xI13QooFw9TvxT/2Ff5iLWx1nKFcpd23jA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736206554; c=relaxed/simple;
	bh=h4e8WjVIvEyNjV1hNfc8pC/4Ch0QY7Rwwp3QV9uCJvA=;
	h=To:Subject:From:Message-Id:Date; b=QmKmfVMepdnbabIUuygd1jU7ZpLNtbTLWJFGdQAkPVUG3AkMu3vrKsEK/13jSNyVbfgc903kgUkVJMvFninF+lg6H7ukNgoSa5www1GoiPgLdQspdbePlHD5d21W5Ua1w2wjR0F1WI8VwEDZIqI5pXgPNyINXi/JG+9EzU91aV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=id1VUnUY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="id1VUnUY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF40CC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736206553;
	bh=h4e8WjVIvEyNjV1hNfc8pC/4Ch0QY7Rwwp3QV9uCJvA=;
	h=To:Subject:From:Date:From;
	b=id1VUnUYrVe3qoSZgDIaZgv5DkwJ+WtR88vzRpB7J3sXYspG+kaNhQw9y4jOYqpLr
	 fEH1zvJoIdBONqmQf65YmrEpLZuIffICmrPejxTUCH7QV9CRjI1ay6AAsA/idOPMFO
	 YcBDXcLd7nlY0UORyekyIXgr7DR0YWx3bSdnjdAqEC31E6/4gjIxqvgayspe3njmHZ
	 qJ00W6hPcJiKpqhWGLZktqZgvDblFIg89fM+U+0SpnDUtDLh2HmleC0npXv1QRFEZL
	 5ciOnwmAIC0I4OhT9KNxvCf5T2IYTuOQlpp4MpFnKdCri5viFV7qwezWZjPmlcW2g+
	 6IX0Wj/hE28Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E1E2E77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173620655360.7590.2058881087425345946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8640b5b2e10504dbe342413bce0fe54a2e662e2b116792b1ae9ad2a64e6150d4
Date: Mon, 06 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736206553
