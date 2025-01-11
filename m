Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A7B193
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736553954; cv=none; b=SglSWc/R4+eaQgaN8XJYCPSagRCMTr14EeHzkC/LnmkFnuBe8YpzQMgH51AUK15dc7jPqKPRSx/RkgBz1LsS6HRQ0Eb7ksM4X+4vdAjleGzOx/T1Q6uZRdWVEd5ml07cuCSIS+uqI2MLS3S/ouRcqZtnVKL+Rcu/zwWsqf+bCyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736553954; c=relaxed/simple;
	bh=4z/+EfpLqTXBkThE6b4XE+Prgh9FYurylDM1pJ4TkZY=;
	h=To:Subject:From:Message-Id:Date; b=EsQuEO+r6eJEm9AmdHSCP12GltJVCBNNe0ZoloLIlA0VaFt+OuyNXdPEXFtz4TPFuDC2URjEIZ20bdSPP4/kie48Ws90cG3qzf0wBs2G2bCRQ9WI3jc1QGv3X8+gUiwl2vQApy+l7cyPi/VoUQk+tXAhKxjBuCp2L+gvxQm4f48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i9uqhwDe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i9uqhwDe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4A90C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736553953;
	bh=4z/+EfpLqTXBkThE6b4XE+Prgh9FYurylDM1pJ4TkZY=;
	h=To:Subject:From:Date:From;
	b=i9uqhwDezcxz16n8ECmsmRBzvyDzFyf2jGPosgsq4xahY1NZVfC7w2grGR+7esEjw
	 cCqAeCtBAMBZu3d8vy+Uqq7jIAueBr0qBUFh2RPrNZfvRsX6a/uCVLWi7Ija57Meji
	 vpPybFstYcWYi8EpKEqIu79Z8zIrtF68T6lgJpcmT6LSQ4ca26NY3+obW2ysVzS01q
	 swEtz0Oqn4Rmu9l2eSlO5Hoe2ODp8Vg54KTDwYqOSxmaelataC1QGo68D6ChmUwHdI
	 5EEm4l8wINHVm0B89Kyp0rOMo4JH+4yqc4SGrYO91NljmZsgA6fcKiqI30/YueGyZB
	 W51eLzJ0M2Wqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F44CE77188
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 00:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173655395363.11730.13620698913262261057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d060ce7b5b77bf9c9b7a8341be2862e6d5d7e6eb9a8b2f25de4c2cd334d813
Date: Sat, 11 Jan 2025 00:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736553953
