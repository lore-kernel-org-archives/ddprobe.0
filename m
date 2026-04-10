Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE30338C41B
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775807854; cv=none; b=YcQI6A1ZSU2cYlAL7YQB+C9ek9FhaewqmMFnjCDIm6bY9hIAyw2Sfe7/brjeE2ioQMYC7E9+l7ylLI0lnrV8tbKaNkl3NnTC4LnmLuoY6tutnQ2GJWQbBTICxOaIerbKUEa8s78yT1zRgy4U16NYL3BnCa2n375dD/fl+189lYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775807854; c=relaxed/simple;
	bh=EoOZG6+BwquDGxKSjj0knAx195I17Gd4wP0I2aVc4/Y=;
	h=To:Subject:From:Message-Id:Date; b=b/WfAXMj3lAthfzYPEYuDUNtUuy3UEYc3b7UrfiFOp/rsk6hzdRCGgNHmpHSbtxm2DWAksTnl8s580CG3sB59fGg2crvg1XMPtbtAsOSJMzmR5UQOUa+RTVKJqihd1tr/H3Nn+CdgHqACwIoTfroiDyQ+GoomizsM9wIcFEA4io=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nX85aLbM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nX85aLbM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B02C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775807853;
	bh=EoOZG6+BwquDGxKSjj0knAx195I17Gd4wP0I2aVc4/Y=;
	h=To:Subject:From:Date:From;
	b=nX85aLbMnWTGRFnDiOLvNOjGKrA7EdFKFPF9a9HyuraJRvveGKAxpzoJXDLDiit2f
	 104ynJprHklrOkpuoacVG7QPIoZjefbKKU+0M8rhTzw7hDGkw6uoTbhR0gcKyVYRBo
	 jlzwoyaggclSDlsRLxMgAaHilVfv6/kQPcCpVZCgGRa7oRTVwTqcx4TtAKR+he6IMj
	 P1aYVtSNaRAIsRAX2M9t6uIRAYEzkLLm26Oki0vgP9DqIShl1DwWPTT0ZcpUwY/Sl+
	 MrlStZKniPVug2LIiDY7z1J3+NFseS6VpNbrt37Hc1kledpDncScLWQNxtNi6o4idE
	 hQM+WFNUcLVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B26E99052
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 07:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177580785368.14427.8272439503939147105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18d3b70fe2474a7d53c356e70ed70963e1b6c1bc553a8acb5a5948695c78d474
Date: Fri, 10 Apr 2026 07:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775807853
