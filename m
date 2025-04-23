Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2222701A6
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745443194; cv=none; b=qiF5c9k/Fef77wGJZ2R1c2BbqNfpcEcriABA+rjiwN1Gt/RN+yalGpkywd6Eym5+h0KDEIGKYo9QqIcbRxPoA/MfbW5R+66pPOP1iGkETfFaH88cQ3q2HNvCQB+nejod822lorwlHM+NyrVIK8grxUC3VFAOOYbjgLlRJKJBL10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745443194; c=relaxed/simple;
	bh=7//7KkNvC2V5CgdRqbLW4LBCKTT0t9rdSKdFsGTNyb8=;
	h=To:Subject:From:Message-Id:Date; b=c0VDMvGYqqfsoqFcaMMbZF4SHPZoNRep1QJldZETMR7qcNwtzFDOmZv/4i8WeAxTE71kGaM9xtGXB+/d2dFExo0WlsXgppRRaQlUUsWGrYDyANAZNM2/SpJRR7+iLQ37K/Ot9vc0HiV0PsahMT6I2FdWNKRthNEq+4467977wSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CL5qp982; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CL5qp982"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68BDC4CEE8
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745443193;
	bh=7//7KkNvC2V5CgdRqbLW4LBCKTT0t9rdSKdFsGTNyb8=;
	h=To:Subject:From:Date:From;
	b=CL5qp982ukchIWUfxI6hwwjU8y38lhKvEQ3bDoFmrqB32V1VkH4283tXALiFidhCq
	 phMMCaafI5VzovcWZU1PpPbuThpEV03dBPhDTHAKnzgFQ3m3+7CSGsSFcAXKpE1kto
	 uDYRQkYRRu3sV3PW6tZWwbi2dJIM2nlam07lWf4bDv6e5v4alG7H0PCo7jfQvU8p+6
	 +c6doi13J+mvHgPNBO1sw0n+VcRYHwPerNX+MUzGO1NNVCtGzgVGWjP5XmhEEBNhtG
	 fiDBtshBHt3NKSJ+rDMA1VfScE/8A0UudqgpbuL7tX2bsss7yT7CipP8OpBwB2y2t0
	 RWcvadZ5/sKCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A2C369CB
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174544319357.5221.14375982919897656352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e8e7d85ccbcc7fb3ecdc26713a7b217fa138979d54a17270348df508d9a0255
Date: Wed, 23 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745443193
