Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 423EB253957
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754570394; cv=none; b=tGVKDatMJAUvey8JnmoDLqpCP55M0mTe82jPshK9J3a33NfRtlrWxNH1gQRIdG7YoeJvEthbb1r6TRaN7hf5TFXa1/ro1LA11LnZJ1LVvSOx+eJmv7qHNaDul9oS7UTn/fhkfZWDkYNYoMo8ciuje4AMPVs94vdpSPKIWaXXC5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754570394; c=relaxed/simple;
	bh=yFTg/L61DXLW7QLB0N1pNhvWY8fAPCFbxag2Rdjh640=;
	h=To:Subject:From:Message-Id:Date; b=l07k6Mm/xIfthM8eAd9XnNCPkZUW//AB7wZQBWPgDE5hs8FuROHflzT90Gj2WRau62ZGJb2hN1cULgge8O1SmDG5ZGq7kmRllWXAwcKevTYFLdxQzGTeehUi0igNT5ShQ+LgGnlfLk6LQE3qXqmYrQestXa/k6EYV1IOdx+YMrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qn2Qh7lq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qn2Qh7lq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F607C4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754570393;
	bh=yFTg/L61DXLW7QLB0N1pNhvWY8fAPCFbxag2Rdjh640=;
	h=To:Subject:From:Date:From;
	b=Qn2Qh7lqj+y6vX12QpSMiVi7lR3Dws0xizAYGBtx7L7Np6WexnF0V4FR+FzQ1DkMU
	 ouDzUh7xwhDwbXnVKa4+faZom7YMykWalcoT4xGrCN2BPExtE8WyHavjQBpW5HgFkr
	 WcFmfy4NFXWwu6utoxQyGaavoiKnxfhnElKSxzN4upw0MLUCvHuQ04VzmozE5Q2VIP
	 UT/rSsoJ5/JGgntwT6K0vM92UQHJXU7BEb7LUesbqnbGPSSn9lw7YuDxrFfYjLAcSS
	 mL6cefigqLWXa5HcLjRfEZQkB5HjStqHTpIRmSrGF0JicBRPnRQj2t8NfvYsdb5dKW
	 eut9LY8hDMG+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F2C87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175457039357.22830.9981397852473447250.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b20548e87634a3c16821f4789a9dacf01b33d2e93b9040a2fc8aafe82a37e622
Date: Thu, 07 Aug 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754570393
