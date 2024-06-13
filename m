Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F53414A62D
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 18:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718303303; cv=none; b=MxNFL1qLmyiBLuWK6TynTHJq6P6Jn2Zg6P4k/KYRRg+WYUICTxt6LLH8IAIzVr8TlkaAPjUmaWs5d7dqS/w2ZVzOmxsMxS66KJmGM1aMKl5RjoRZHD4tkiYw8CwCThNTYCT0QggTGpMZFbGxmvD8gBO+wWR6KPQoyC7fobXYO3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718303303; c=relaxed/simple;
	bh=j2mmNEns9xL+yeBeaPMpdE3nfJ+2FEOr0Lv+/SMGyUI=;
	h=To:Subject:From:Message-Id:Date; b=NmyvfCbxw7FTmQ8xa+9GZOlekReRt1DodCfvcmMUGFsZuIl8LAhNTgzKTb0RpRAKYDpx32dHoxCxoOG9FmMx0cx8Ia/pTdD9Ks4BIWXMYWSQJy+glA7roeJs/Z7WMWXn1tce7nK4KQIUqI09xd7LYbOVvynQhnMB5fHUO3O+Xmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AmWng5TZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AmWng5TZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EAC40C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 18:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718303303;
	bh=j2mmNEns9xL+yeBeaPMpdE3nfJ+2FEOr0Lv+/SMGyUI=;
	h=To:Subject:From:Date:From;
	b=AmWng5TZIOPb9vx1YrrRasv51mjmBCjdfrE6sJGt0XtGHTDXyhQX9qQefsUi1qSqt
	 1UPPR88ra8iS4BJvI8e0MWdmmy2eSOhgHTpc6ii/Xcn7iRmLF+jpJBH4P/M4wWW0NF
	 956ZHtmmttyXCclDKzO60fl+sFTyWEE2AVI2Ug+t2M2IzLzLoOEpfqK+yQzYC7goda
	 3/yEmf/LphAmwdQNsFVtxfc+DN70AGP/xRsRhRoyHmwXo8sEugtMrWuoLTqOSVio9A
	 kzUTO7VL0nHIozK8p/9MJmm8HJJDnv+RpeVoHArMyyIwXemlybMWitqzWyy45YTjij
	 kaZD0WG9yfweA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04FCC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 18:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830330280.13686.8776191521779106839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa14df9f830211e73fb5aed4425b068b35f894f4718c011c7dc4ee9f12c89ebc
Date: Thu, 13 Jun 2024 18:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718303302
