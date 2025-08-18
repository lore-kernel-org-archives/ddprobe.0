Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349183218B5
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755524394; cv=none; b=OuflHrZJZnLbWrz2jIe+EnGqL5pIJYKAMz8+kQGkZ4Ulfu6wZRfun8uFSJtK5HPpToF1UhnFAIjQUOgupEfPgyLlyruGzFxDWENBMTObwhPoYK00qGlekMS/ztyaVSC2wgqtuOlikA7aCt4gG4zgHpqWcrvscG9VurjWm+UCnuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755524394; c=relaxed/simple;
	bh=aOp/VZPBFNPiOGs/3ecpgPRa50om0xYFsPvI5UnxKkc=;
	h=To:Subject:From:Message-Id:Date; b=meBiFGN5K6q6YMe3mj2jT3weXctRcCLyprtL58Pu1y1bHd8TgFXxC8qeJsVaBjsvUyTyetK2C51xxn4zicgxp6ZSoz2ke1PQskX1Uj4V6t7mj6OMtmv8epY2QVol7L+62VouxXWez/J+bEPH1s//T0kYMFeVO13LZXncVQBfQ5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rbVpChxy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rbVpChxy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E98FC4AF09
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755524393;
	bh=aOp/VZPBFNPiOGs/3ecpgPRa50om0xYFsPvI5UnxKkc=;
	h=To:Subject:From:Date:From;
	b=rbVpChxyTe6PycURnVcPr68muSsZgBgdXfOyVCG83YHHJM4v5sSC6tzFt27TzHx2S
	 KTLzGwfRCMlORn21CIE+KyXqETtrbfa2ZYTSNjq9mOJj1lno00Y9tuHuV0gKeqjy+w
	 jkvpNwu/fGWGSizR/D7IcyGYukbtQaWZyiPiFgQoi3UfdJ+tsJoOuqc40gTNQoDG5c
	 I5RGQGzpnlc6n7lKvPnP5WUXDLBJwoMic5aAcS5guZcqSzIr4UafTPrlLXGsgewY52
	 Nia3lRnePB6Gw+cNumsA96/NRJeqje9G033paT2Zk0I5D0QmN1wHlc1DHnwP2B9iTv
	 i9u8g6UdrRkZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902C4CA0EE4
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175552439358.449.16887142892919770437.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32a904fdce10b0fd062e17aa51a2a62c66a433e0300cf9e01e1a06f15fa17dbc
Date: Mon, 18 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755524393
