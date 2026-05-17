Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2508C34D3B0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779016834; cv=none; b=eETTokNEEwZQ/vhHHXswbkgIXfibbj3JplD2PQ92reO1ea3oW3oakZ+wo1bajUXoQoUmmb1vHqeIsU4Rh5DI0pybKN/nr5afMaV6tx+XdiD0O/8NcahTDTJCS7LTrF7wqgc5raWu7xmGGd43O54NVZB1Z4fDaQCd9P87Wg6DpJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779016834; c=relaxed/simple;
	bh=rKzNeM9y2Aas865xJ8d+qp0xicZyNt9V2P/nFpTqNls=;
	h=To:Subject:From:Message-Id:Date; b=i5jRdjtqH8+1ugSud21T8Zkr0/sCiS+9r/7PUBDOF+6pwTPWJm9se2Lax5tK7HSZU1x4X068ey8s8bLv5VM0DZ/adPpXxQVa+eDu1dMbwZFmw+kP2Hpa8CsnEl4kor72ZAJbhnzYZCfrNlKjNy/afUEiRoeZUKMOIzzZxROt69c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JHR8t2T8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JHR8t2T8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C391FC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779016833;
	bh=rKzNeM9y2Aas865xJ8d+qp0xicZyNt9V2P/nFpTqNls=;
	h=To:Subject:From:Date:From;
	b=JHR8t2T8DascI1BGqiGo0roR8bWAA9m0oK//rSbCabkUmAnAK8ZU8FdfK0FBzRz09
	 24nEMoxvUOFIQEwXVpG3xgAhjHDBDfS/D8uc+Y1f33TaVPfuCwmSIQUypkj4L96Pq7
	 xWIhjHMPWCig/TXVDLR3DGIFe+tiz8Te1h2ZO8wf4qUWlW0MWQ04j3PudpVbtF82mb
	 lXEAHg/DsrhggLe+GYjYZCTYFPpmjrfCF+CU+sMC5xn2GLlmBJO+9fccbWRfjLDU5s
	 OrnQoNXvRhR2dSDUZlrP+2v4RGGD7RSMZYE9YD1eU9PS5sZYwjusNA8O54GBfp67C9
	 9zwpeln4wGG2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B13A3CD4F21
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177901683369.31850.2770057496286555203.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bc7a936c546f8b459a8ed28ace7744f68cf31537e9f3d9d371e8d8bb2fd3e25b
Date: Sun, 17 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779016833
