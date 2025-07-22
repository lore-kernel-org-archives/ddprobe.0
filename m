Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2281827F01B
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753205394; cv=none; b=IPj4OMAx94z9Vn+nrRrkBlJdYGI1aSDcbX5+B4vfz5PdVXxBmPLo7i98r2mmzuVCaDK1JubD/ts5CZyjVx9cj46mvuoivZ1C57KC6fPrelRrsKa8qP8Hf+HcBZQaOca45RlNCJlUS2UCk24aGnW6Jbqk1GKx5T+IMSs9rhV6eO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753205394; c=relaxed/simple;
	bh=Zqfrf5lZFxYSAsGiqCyEYmQKe7VM0zTuAmv07GhOosA=;
	h=To:Subject:From:Message-Id:Date; b=HprT19eNu2aKif4wNQ6HmdMG3lrnjNQKwgB/uZq0zBQJ3BtIk4sTNpp8bf2m6C3n+7TAoxkj3mHEFr+J3e08GhrPWeaqTAZemxpXtWNmwvvCD4cFMyRGo2yChWogOejVSmvxEWK3URa4SUE4UZ2eZTXtstggRDVWlmoFZwBOIdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY0Mn3C3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SY0Mn3C3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5C51C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753205393;
	bh=Zqfrf5lZFxYSAsGiqCyEYmQKe7VM0zTuAmv07GhOosA=;
	h=To:Subject:From:Date:From;
	b=SY0Mn3C3s66yzkwOlIcn0qNdtlalBXT8bqqixprz3Vslf6/48s0/c7AZy2kTf8Zju
	 U5Dd+QrQ4Ko/W2zkaQ589WMdtn51MrPdNGGVKqFtMRxyoOoMBk1K8uXSeqm26+wLaa
	 HYZW9mYrt1UQ8IWY+/59AYNVnspwEwSQN/WfDGIeRvVQstjt9IKJRJB1A+fmc0g4VW
	 /+rZteUV0hnBMoRhSWrw9jMz4p43449L+FGqu6n5kx0zFAmSYaQaFEizpk6rcUE1Ao
	 ilsMdPE40Q2oLUyVKrQdSnED29Z2n2Mo+MxAawXeyU6vKGw4HRgRcSiXiKe0tBJPLJ
	 vBQjp1svbJjlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EF6C83F27
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175320539358.1903.5768579542814512775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fa901896f83c681ea4f3c7528a062172eb72b036c4f4756109838dceed1713
Date: Tue, 22 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753205393
