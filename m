Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35D2E1FDE18
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737977754; cv=none; b=idxbiVOMzbdlaqhE03RAWAxzWdj53/wj/q3pUc2j8z2d115KSRuvx3hIGhp8lCus7rgRYbjmjJ9e+fQtp5Y9r2VVj4ywfcqJlwv7qN1kjZh7tJCfEBMo3CyFWmmhGGZnzdbMfKQ0CxKUKI8bfKeXyLwrBm5RsK4NXzX73+xQG/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737977754; c=relaxed/simple;
	bh=2mYWyTXJkO07+yftdK9ko4cycuBsQzLJw3axKcA+/4M=;
	h=To:Subject:From:Message-Id:Date; b=pjbvmM+IN5L0hEBfkOUrfv3QA2MvF4w6L2Y1ahSArAKIZSmiAMUdNd3lg38eBsvd6tpRd0cyncYPGdYKmUMFXi0Ys/r8gpKrqB/xZYK0hN8yY4K52AwJdDXOgz665F0VjStFz9K6TlhDUJfKBtMVOwLl60etwczTG1q7E1TsHIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+nnYUdv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+nnYUdv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BE6C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737977753;
	bh=2mYWyTXJkO07+yftdK9ko4cycuBsQzLJw3axKcA+/4M=;
	h=To:Subject:From:Date:From;
	b=r+nnYUdvBK6eR0TPZOPJvV9aWsQwNfNbCNks2kFtOecC2+woOK3QWV15U5f+4/+H1
	 qX6BUgipCuoQ7sD+lsV3unJbR8hfnEhThh/uqY/Sd3w3Adph+8kcBFphYM25ryOoik
	 M347l/625a0LSmMCuj4imZF5mj9PwLWZmRIJ6kDliCPOOTJWzWO7+fZTHanSFu9JOQ
	 sWW/O9JuKeIsuaJi8x5H2uvH6XEFD8nfn8cDwUtlEr9liTAw2XPNeneSfubR2cENh7
	 PRrQ4V7Ogen4tvBGCkgcv50y4Vis7EhgOl5JB4n27p2QdiEA4r6Zc2NrQpJlIEwLi/
	 5ngSG3TCp5EPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D24C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173797775358.29023.8477957788450039938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2f120bed44e221fc9c1996982c667a2afcdb7fd5b7ec5666b96727299b5f42c
Date: Mon, 27 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737977753
