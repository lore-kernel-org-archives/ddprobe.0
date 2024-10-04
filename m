Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC43946F
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728044154; cv=none; b=A6kXOXP884bWO37PLwOHI+PDV19K2bJvIMnCcZgIb1nxYEcmGtF1EIX/xKaqM96SQguFcGJhb8GfPUSfVkkJz/q7qzbYT4ibXD0EYmzx2q/h9ZkvJdPT9cAT0U//C6k1YIN0aRK7KARa8P7EhpEPVMepXJhTuX1FB1vde+s3MxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728044154; c=relaxed/simple;
	bh=bJh/dlWRi3Vscu9bmPdGuRi6rsS2jA+KjrP9eeXgVoc=;
	h=To:Subject:From:Message-Id:Date; b=fPFZ1Ea9WIFcgIC0mRf+Ts7bb27MHvF0X+2Ha+hjv17QHchgyITVCFYt9y9GiznclcyKAz7A/hqdtx0+EiV7c5y9rdJ3QdbPb8ipKSfH1ECR/A5oXE9v27Yu9i5iMNnmQFS/DhJ88KGAkVtWvAAqqx9yPGwXYGSMkDCba0HbBEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GzzOvW6N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GzzOvW6N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA4BBC4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728044153;
	bh=bJh/dlWRi3Vscu9bmPdGuRi6rsS2jA+KjrP9eeXgVoc=;
	h=To:Subject:From:Date:From;
	b=GzzOvW6N5r9VsFQ74XV38XuiPud5dYSEcRMK0UUAfyfQVgRdvGKg9Cnpkooqouems
	 lnukRWmiY9PI6Uq2Nyo7td83mWk/bfif+VS7oLdaKz4Dlj/4gFb/Eds/d29wudTBRZ
	 rPjljHnTZ+ldyIb3xRmag78nGPsavrkJnbPv77R7o5uCI1olb/4RRBOrlg30SBMLjf
	 rEAeeNUsWFnL6QgxuDlQc26l/LpqLQ+4d6GhGTlRy2UvNf1F7ldeua3OOYDcO8v0Y4
	 MfxAXUOc5opDmZqUuaRqrUzSLvvYHA7cOoa6x8S6v5KwYjVlSEalaUp2IYI0S7tQzu
	 YthnagI31PCKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5D3FCFA771
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172804415364.1265.6392997088080208461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a55d61218d236fa6af36b4289415ad7e8b21cfd8f0eacb698bd564067378356
Date: Fri, 04 Oct 2024 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728044153
