Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767DC2746A
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713649223; cv=none; b=OsOnqgbxUyon+Kz8+lyN1Tn7Xo2tBFaaamE4+1uzNqAVO5vxJB9GC6BN223c2eC2D70eTynrQphAscQOiaEtXr2liz7Q+a4GysiaG/5fze2rSOvZWvte5FRxyb0CLsUjRSk5EhQJSi3ZFn2XlpKzD3T2bRBDPnmjeuRMSMtnH1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713649223; c=relaxed/simple;
	bh=K3Gnxnv+xXSnwOPua/562FHtAo+NQzWjXQBgkh0wwBs=;
	h=To:Subject:From:Message-Id:Date; b=PtUr4elZd62rtgtPDEyfXjsyix1T/CZuSG9Xzd5X7f4ytQEbUG0rQ11tw4IobNqdhkq+nEygYhivhODpPIwliRcXD/k7NGYSuWHGFGqkpJlhLcjgL2VNBo5nYK4S/q/Rvqp+gXkyvNHPpZvCp4u3LKFdhm79cZdlttkaUPw9DxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSZ8Ibl5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSZ8Ibl5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 01D3BC072AA
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713649223;
	bh=K3Gnxnv+xXSnwOPua/562FHtAo+NQzWjXQBgkh0wwBs=;
	h=To:Subject:From:Date:From;
	b=lSZ8Ibl5NO4+M3hKPP1v9MJ+MkRGwlrQH7aJzvEaENq/stL65c/JsPq8hm6J4n859
	 wObGm2vaCTqEvfIX7pDTVUNJkkpimGhhvTWGjJUUiG9WDr6LYuIpPLl84GezynDEzR
	 vNI5hBiEQLmpdCqNttwOP42hJ4CQ8jjhzwmgLLN5egg3ai6mf+XEcHpZhwgLRCJOrD
	 TgeOWMVkGgjDtf2zdT37eZZlZUCxxmP2zsgf++kkq2lBF/vpPJeFg49teB01/k/MQ+
	 M9KX3pd2DPFne4iqM0h8ww6FpyFtvuYym2GQdQZc7GrQeJ+APtOdMK5YcThlq78ioh
	 8mvCgzFqsS/WQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E1C62C4345F
	for <ddprobe@lists.linux.dev>; Sat, 20 Apr 2024 21:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171364922287.5458.9902964997013805271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be39111b89f70cce5f448279e78f04c296e9e242720dbb9a463ae23fee1da10a
Date: Sat, 20 Apr 2024 21:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713649222
