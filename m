Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10DF13128AA
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762252194; cv=none; b=kNOp8qCq0PxG1bKfN/BhW8h5c1k/+nCCJJ/tLyTtqgVQXTndeYpeK8CcanlUy/8CB+h1hqmW2mZNW9f4xMhYoxC8t80ogDrep2JddorQqr4TeKwhXInr4NaBWkdCkFkPkm0OH4WUnGT3p67zeLgGccy5ethV2aPDGZt5zTdgsV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762252194; c=relaxed/simple;
	bh=gDTNbWgP4+uvSOvHopaYn/8iHA0NluPOy+jKgizMk1U=;
	h=To:Subject:From:Message-Id:Date; b=SGnTYSQhgt/TNBmf3oxv76ycfbmHlYEpuOK19+R37d73lf4U66Y7dP5jMyifUUQtgRzzToMRHJNgELY3vckybT/+n6pLM86aGCb6s30IXa7pBjWJJmDWkKOd1PvOdFiHLHQiMmmUWCMF1a5SoDB3ompbgKPBjdl5RiA7pkiq3HM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ad8mGm63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ad8mGm63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EEFBC116D0
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762252193;
	bh=gDTNbWgP4+uvSOvHopaYn/8iHA0NluPOy+jKgizMk1U=;
	h=To:Subject:From:Date:From;
	b=ad8mGm63vdE7aeO77YBtxW1NzR8uoOZ8WT7sJY6B86G+D/6Jxqac90cipN4xCrne8
	 CRwQY8js8hADDWKAu20yINH0Y5LfIgk8aRia5Fk+QYZetgFXVCQFAKEQaVLYCfUt7f
	 GVIlGBmoJ2c0thp8BxF7+t+YrODHvHscnndFuih3qSskO7knrxXmMxW14qJiNkmukG
	 9uVUbhiyEaOmLAxiJLf+oalaYTYFy9qYN0HNjg154Y+6Z53GEIq+r2cCYu4fUeDN+d
	 ha7wxgVREVl+zuWn4Bgoknf4tkFRvvJHD42lE3vejDIF7aEt2lb1Rod9TuKsdfysEH
	 d+Y7R2+LCSM3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91549CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176225219358.6539.16834636329686394529.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc11e9e14b4cf227faf7c11f676d4cb779c0f41b08634b59dbc5233602676819
Date: Tue, 04 Nov 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762252193
