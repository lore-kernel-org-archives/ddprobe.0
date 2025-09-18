Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1862123741
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758160194; cv=none; b=Cbj6jkxF86YTQZ2LJCS7R78UWIUgBt/yS3SMwP6FIaK9s2r90kkjgR2hCNclDhiVgKAiS4way0GoEhcVGecOGPRzBOJl+YpuLOkz6aQV49+/Nc06j6tcHkcBZK44BXmgA+W20DTry6yE5z64JCu4VJMXyLsMeb56ytGfiUsJ9Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758160194; c=relaxed/simple;
	bh=7N75jrfPE4jZy2IJMxcHp9ec+/aPYEbBxDqk8SiBLcU=;
	h=To:Subject:From:Message-Id:Date; b=m1O2Pl2Itr6madAODNH+oqjt+76d9ojYL8oNpRgU7+JJVwoXhnoaZPcCZOwdWHF2j4FP/Cl+e5ytRFcH+0D/6uBNP5mOpGaOvGb8Rlv6qvJq/cQjkgwxi7r6hh5HEQMLNCeBdGGAcU2zb5Kve5AlA9n6R0Vih4WD7Cn2ee4Ft7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nrfWJmfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nrfWJmfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D417C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758160193;
	bh=7N75jrfPE4jZy2IJMxcHp9ec+/aPYEbBxDqk8SiBLcU=;
	h=To:Subject:From:Date:From;
	b=nrfWJmfGyTVParleOYyTouJUVOVNTK2Pz+52Lmu/OwzYzKzJPD1djdflHN2Z8rmcm
	 VPBv+4e/K0N1GNgmJ5IRE3Qo5X+nBPWc5JIv07RJkZFFm49+bgwNNfcamUqR5nDU+s
	 Kj87R5oRepVHsBIh93ZRWgsVOq3ny+ofzyu8G86OmZEBEvqrNGtJ+l7KRQiChEcqQb
	 CkZdMyJZ5/oOB77B+e2QMuSDuHgcH1HCtP2ubysfOQ0X7oyFGDyYaVLK07YGnPYP8Y
	 gIadMslgijbjMp+yFuTc9AdgORxPUszI5pJSwtJrrxXy7G/KJCZl/fOgkBoTc7rM+/
	 dVfPYU83aTVFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EC25CAC59F
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816019357.23354.8531825082205650628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bca2a8014d217fff9c8ecbf7a0bec0408d9f0683d106a7a41f5b67629cc1a519
Date: Thu, 18 Sep 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758160193
