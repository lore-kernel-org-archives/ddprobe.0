Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481162857CC
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786356034; cv=none; b=UhBvp2IlXGe5oCl5VgwcH5ZaoxhRd0QuEL5H8ut0CUbczvUOU0cKaXC8E36m3Pt9dCankP3WRfs/h7ovaxHwc/RnhVHJ5BQIhv1+IPuPM4XqHv54yRzA9I/7KT9sYWEDBVVBfiWDkyZM7QYFvK5y84DTybpwXDxkr0oAhYBifmQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786356034; c=relaxed/simple;
	bh=QOjQ5LHV20djPtFC7U23LAHnuiA6oYioA6/LKMJhfbI=;
	h=To:Subject:From:Message-Id:Date; b=mJ/JT1CssgFVhlz5PHqfybqcSePhNa8dE4c2969SFkMmwaws89KJt+8WroT/nEMLTT+v0Mcb2OsXJldob13dqOwbXMtksx4nZShYzF+Q2IDUeXWIpbDZ1c5crRdrrj+Rk7N+uKO/+AemmcVI/E5KmZ/6+ZELDCaa0uCr6S8EB8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvmqYV4H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvmqYV4H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4624C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786356033;
	bh=QOjQ5LHV20djPtFC7U23LAHnuiA6oYioA6/LKMJhfbI=;
	h=To:Subject:From:Date:From;
	b=lvmqYV4H0KAOn1fEt0vSFaARQhTZjZcpCaQmNhJGb33w7uJwlSCL4ITjtzN++AlC+
	 7weE22G/pC5toMzVko4N9MiM5tMsKEsvM35Folu64pOGN58D3v5zyKoMAS+JiSGgWK
	 aLluDZQeFE3dTjuVKvNNglm1m/ACr87qFtwLMAkmnC/VFBdMWyWRlgFcucXv2U7DFP
	 rp+W9wMxbDVAFxAE9Fgqm3ow53lv0vvE9vfnGXmouA6URKoXO6TRicHdxS6cWuCP9D
	 zx4i6+RddQ74Rsx3rCRlVLlZ6L7UMGKhm+v5HlpouK6XgaolPrR6fMrQDKrnxZEbW1
	 SPU+IcUKcyd0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA98C5AD4E
	for <ddprobe@lists.linux.dev>; Mon, 10 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178635603370.2144.7432595647180931227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e785c96a91cb5af5abf799554374fe09c79ba22c102c4d8934d9360e6051c71
Date: Mon, 10 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786356033
