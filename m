Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D1D13932E0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785429034; cv=none; b=P7FcyrheFgmeQ4vouPC6K9W/UfRKUYFDp71wr1z6Z7wfTxzXpd4aRDFTR2umO5obt4UzqwPl6qvpECgzptTdKQA6jNnt/Jn0fzaGDU5F2UzyOQUvIrN6aqkoC6oVDodaIICJHunTBTyImXQKY+luqZZjCoY51KV3ihy3/nlYkRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785429034; c=relaxed/simple;
	bh=gpp8Ihj8gPF48hENTfTWjzRryr1V9DRMj3p0zrZVD88=;
	h=To:Subject:From:Message-Id:Date; b=hd/zHbPEEP1D8mSlh6wogPCAdVeFmoOVoyrujw+0FHxVdoJzjo4i66E889TOSekhYOeyMKnY3OuqYKLlpnNU4ZpV/sJ8iOXt1hVRNmV/SMAns3Ih1N77BCZsDrx+2QDfRLpnhApS8LClhjg7DPSucqkqXCd/j7YoO0/CJ3lvhW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sRSSYRVD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sRSSYRVD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEB93C2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785429033;
	bh=gpp8Ihj8gPF48hENTfTWjzRryr1V9DRMj3p0zrZVD88=;
	h=To:Subject:From:Date:From;
	b=sRSSYRVD4b4NyGO5Xmvv5uKzKKJkJXuXSCdjw317/P1uHgQR06VEdU16zka/AOIGs
	 0wyHBrqOOYaJIbUGtlONU+CG7bAy3N9fNW4dAtosBOhAfVcvHyTchAvM1fPPSpYnRb
	 2W75SwOaSFa4w1BNwnDDLrPYkjdalcERw/kVLI9rZAbOvDy9I6rbGTagNDsqhOwfFe
	 XxWTEGqOMgA27kYNCDeKnGmVdJZCbB7ch/m5CX/M+IfM0wmuFKfqHxEmuR+w6h3USu
	 eyICEZvMeE/SJqD+XlfitZsq44gYLzXORb/Q8DIf6J6we4IWD+jcAqXItNJks7w/iz
	 e6j2r5dYTBBjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9BE8C55164
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178542903374.9677.4857812920684227127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68c6f472ff31d1e485087ab90a46ce7f321f43d0e04212959339fb337da9c6d7
Date: Thu, 30 Jul 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785429033
