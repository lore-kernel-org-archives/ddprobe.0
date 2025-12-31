Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F6F074C14
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767164634; cv=none; b=s74cL3Rl//4jeH0kQEBASG8h6ZZdFV7PHoC+E11JK0dRKsvmV1VNvnGupVHDSN65HN5OOhBdPwruKNp9bQowI83O5Tkbj0L2dMJvH7tmi5GxJRCQND96bu+S4UYxE7QY6dXWkNRv+Z+hzEHDX7mOgI5RLB0MT8K+HnFDnEalQPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767164634; c=relaxed/simple;
	bh=sBW+QMeVXeHjSNA5ZuswnMmj3O2GZ6CdJJrRyMnHS4c=;
	h=To:Subject:From:Message-Id:Date; b=eOb2z91aCFfE/hLP+HnCmwPEKL6/jvXQO26u0fvTQa2Et4QukKtp3L+iRGSPwaJ+F9F0/FG3PK8fVlxzjoDANWRJksFOgYSYH4y+gzb5sIvdW4JeTYQ96wQX0uttRU3hNRWM3GkiPptlAu8ztH5hFh57TBKbXjiOlU/g96ga6vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2AZHUA4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2AZHUA4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66D7C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767164633;
	bh=sBW+QMeVXeHjSNA5ZuswnMmj3O2GZ6CdJJrRyMnHS4c=;
	h=To:Subject:From:Date:From;
	b=H2AZHUA4j8mfDW+WsPxgvPautPkxasroGbAgUfrIMk492T8YLmQ8i+X2xiM/5wrdW
	 8pD+o8r4+K0x8Es/+ViNPgsoZUlR9rbyqtqgzUuAsB/HXBmp6UV+mGXLim+ZJHPHbj
	 8HxlraCQw1YyAs6/P3Aqvv9zYYBc6YHM6xigckRRq4AAl2phGyJ7MX+gSVn6Q2jd8H
	 XxR5Fxzkqii5E0RoW6mS815LCtaUFgL6GKNEV6Mw707lWQrEH4g6HiwDwUWlQtHMQL
	 RYXKoNM6ZG9b8x/z2AhDS94QhfNtnPtAOQHYOA3NEk6HT3tn+ylJqxUwD9FBKiTyId
	 cNzls4kBqQb4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9283BEE57D1
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 07:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176716463357.32574.10425305179862430371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac969075519d0ddfd1402a5b67733a4e1601c087d1319e5c7924ad2c16b79cfd
Date: Wed, 31 Dec 2025 07:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767164633
