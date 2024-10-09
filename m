Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231DC45948
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728447954; cv=none; b=f0rLpf4N2bvpSdrz8aNmLCu1GKHn9jHOBreEapxaHkWylryDBYaH+taqgSvwr5eFd2Iabub35UTXEPrxwUTuzDoHkMNcnrPH6dN8+qPO2QsXIHB64UC6eQb7TaPP2ixvgAnGsHIS6NLCUq8D/jzo4P/gaKV2V3nm3r1WuX4/Xsc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728447954; c=relaxed/simple;
	bh=G5Tw1f5gh2Hk6uKCrl/Bk3ZKvJFXeIms1CyLviixptQ=;
	h=To:Subject:From:Message-Id:Date; b=i1JnrAe464QmgMsv/ipf7vxFPY19jo9+iNwXKTlUVc8FotT07Hh2TnFjWQiP016cOkA37NocIZ5KjwP5dwEhy2reKnUy2aX0deaedxuECe8EohKLf1aGb64YOWKE2109sKknrujOUhTVZeeQiVuw74a3WL2Y+yKGpKmrXLtols0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iszrZw8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iszrZw8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6AAC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728447953;
	bh=G5Tw1f5gh2Hk6uKCrl/Bk3ZKvJFXeIms1CyLviixptQ=;
	h=To:Subject:From:Date:From;
	b=iszrZw8U0Khi2E4OKHlZQAR1q64ceLpKjQOwzHggVNt/sY9lLgWM6PFogdOsfyUNA
	 1lswhNTAIZ+uN32Qo8CckqDO+obURlyKdgfqyIhgR1r93Pr5jft/c1ST3gmgQmNgts
	 klc2wNvC/kc//C6Q5GTro9ILOdrdSM3CeqzItf6Ko7iMuxiRsLBoy7ml8TeSgfvRyv
	 mBghxWorrkjBw5WiwsbB/lsgOsG1+Q5NqiWNpuH7q/UBxmtnEevJVmYstXttkv8jKY
	 wwRJBN5vpCpEczbpF0OPfxzqdHYSBgBz98GnF2IO1e1fBDQAe6F11kUQMyKlkpgkps
	 YF441NMLVHNhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB95CF043B
	for <ddprobe@lists.linux.dev>; Wed,  9 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172844795362.17113.8515360094514766089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa158ab87d362cef894e4ce1090b0091312dd83a24758fb66ead77b68a52a750
Date: Wed, 09 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728447953
