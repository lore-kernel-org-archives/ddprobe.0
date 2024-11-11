Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249C615C15F
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731320754; cv=none; b=I/OKdyBwZYXhXZee0PcPKs9FELal1inMENR9/YVUl1rVAZO3Qms+INv2+nOrKNCfR/KYOA+6ykIF8oo4yLKBRlVET8QhZYMAMsjwusf/2plos4N65kqYG7AdSDXklgp6FAF2CrF6lPkr0mpCzNmcfBs8gKC7SvXfr8K8E6X2zDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731320754; c=relaxed/simple;
	bh=CyqeQV7PXhzWpHGEYk78hGeUSWpzAVh/jOLFpEX1zjE=;
	h=To:Subject:From:Message-Id:Date; b=IpRmwLHZSsfx8CmZwlnjSswot4rhIx8SvO2JTN4MX3xsFdfAOHs75+gSat/KhjdnRIWrGUQNEy69NpYcjpgzriD8g6QcO1VcWdft0fHvekDyUvd7pzr0pz/hGjV96fQ9O6pOnwgbo29Xf/fM841YbWnn3AbqGtuiXKJeAIqNaD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad43JzYv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad43JzYv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6559C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731320753;
	bh=CyqeQV7PXhzWpHGEYk78hGeUSWpzAVh/jOLFpEX1zjE=;
	h=To:Subject:From:Date:From;
	b=ad43JzYvRNoaA/ZJWEVsRv5vZzQzT7gnb3S5I5Gd8cY+zyV6/iL3+hu7pkaTzt8Un
	 CmPZEyvAYuy9vJCIiyxEVamKj/XE3nbRc3qSqb9QUapooGmwb2aGuItEldQzwkgze5
	 trLUi3UCUHHzrnFLiy7p/So1Ni+UlDzt72VkMEDe07JVQ20H0EGDmN+ugeBqxAV9af
	 wygzXyLirJZWrDaYTnBz1CpnXYUlsm21MUT6bZwYUQWGBrS8a2eSVVsGqCONR3J0x3
	 y1DH40l2BOMsMJZ1Yh3Jamjmn3LUXy/V78kRjX38/lWfEtrJ+kRJLZkoMSxx6kISej
	 vZXU9dQCx2Ocg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 934BDD2E9D3
	for <ddprobe@lists.linux.dev>; Mon, 11 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173132075359.31382.11463014443709336890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d2e2622343bee74dc8307249e36f66352bf89bcabbe773437ac96f81b8e74f2
Date: Mon, 11 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731320753
