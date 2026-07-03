Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BCDD344D86
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783088314; cv=none; b=bWbNmZefh/E27Xsa+GIe8bChe3wpvMDSRwdoGCGjdis0Q1YF1ivsUtsSVIbh/cAvzmz+i0O5BfiDWiK2OTlaXvSNTKgLcTFmHF1o+iD0iyoMiXN2Zj/fIg/5vFCvyUptPPE53maXvSH1QMRd0Xnu7qlNcMLFBTfPhcZNGABirCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783088314; c=relaxed/simple;
	bh=7PAHTaJRJ5eq98FYiyIr0GlssseWHzrvmd5RIfBzPJY=;
	h=To:Subject:From:Message-Id:Date; b=W5Q7SNYLVz5ZlH+skDAYzdIrVRd7zIMO5IUkrtcviJzzAFCRVQv31sYdYI6LS00wH0WoJFjfCmqvuSq/BDVycWYO4Sl60XQHKRocZBHNnXZouGAWnUuLQqvfv4lq0bAfKWMjihMhnZ3cx24b4IfALiWmUOQKe3+ZRzcQEBf5egc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cE/KX+gY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cE/KX+gY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA63DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783088313;
	bh=7PAHTaJRJ5eq98FYiyIr0GlssseWHzrvmd5RIfBzPJY=;
	h=To:Subject:From:Date:From;
	b=cE/KX+gYTfSejw1yh6U6n5ZJLMK4s/O4wok7rDqANk/RM+iNDBvf6zGpM2lFJp7cE
	 l42lsx7T+7o2MV1pMEnNdb367KiyqdBioEPGq1H/H9FWzx/pMBCIygxTseMF1RzAuC
	 UIzD3mf9ma9zax37bi4czmZY1+GjlyBiBCtP6E8BXDYJ3wWt9s42F5PlTa9PDB8KR1
	 3duU8/2/gwLAuvq6pG6J95cAkglQ+uuUGL7yBaU1DZT/xFBNClCkX7cEyp6Q1LzrUp
	 hddDwu7haR/RzSgxLnF6n2C4BawQ21N1qWCLeXZUsjhsIgtIR+RnsRQjRZUy+wy8tr
	 bGxrURMHmsM8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93A8C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 14:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178308831368.22628.3851113234565690641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d6d48b0ac3e6bad9bf7aa979738e292fc171a3cb5892111dfe72a246525548c
Date: Fri, 03 Jul 2026 14:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783088313
