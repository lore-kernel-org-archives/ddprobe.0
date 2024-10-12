Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 407AC33F7
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728722154; cv=none; b=XtsznjpnFJLkzSPifpvPhdomqTYm3j9MUMkaXJ7sGbVud+FTne20GnNdz4daDNFKrylPPV2IPqCHmfARpBE2LWrH8Uz+im4T/WBTmKfkJJGBgU+a2VdTBXO2IQt5HWnkN3lOF2ZwnLaY75/UcJZOHxDvVOw011XUJcOvul7rREU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728722154; c=relaxed/simple;
	bh=5pAKFKKjtLtHXZ9AkAKeoRyneC5zetxb08Dh5/hl0I0=;
	h=To:Subject:From:Message-Id:Date; b=DCZxtGSDjKYAU8ve7lW6dwV0XWWx7xquP2v7/sKebOjjVb1uw3JNPS7RH8w2xgBZX8M7NalZVq2h4d1Ap05oQveEiN/R+4uwFHY9xLQKmvhZyvQsjbv3dMqRyGKzhJBoj6UeWTNSe+Nq+xZBvAigd7vmI+GUyhge2CmM1nhCfHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ec9tckI+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ec9tckI+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3BCAC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728722153;
	bh=5pAKFKKjtLtHXZ9AkAKeoRyneC5zetxb08Dh5/hl0I0=;
	h=To:Subject:From:Date:From;
	b=ec9tckI+I7eklPgTWLJmBQqkC2bFjmd8KXbBOGiDKwWI6IufAVrLg0vCd1NRHsV6B
	 Pasaa3ktzzf57qiQRdmTdlmBGZcDKfW6fb1dXcI+vwWfr/qHhhThYZuw9R9dTpI10F
	 bygd+nv2bJ5YFMlYILrB2HztCVgbrJt6Ozr+pHWHj6lGJguazomHu0GCUtZMH4pW6R
	 tdWodoKUQwO410ZcIyQ9uxV13dfg/R1cHzKggjr09/3Vp4vCBWnwtVaOlLTWzL/kNQ
	 CobIkM+P05PXgk/Aa1bvpKkYxxzLDoCX1U2AT1X/QRiwWCA8RsKzGS4dUBNtXFUqcd
	 mzK7SF8exd5jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4668D1A451
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172872215362.4822.816575033489389752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9762f6b7abf927266ad5ddb782a3e5787f9c50232b7a64439c2f8bbf747d00d5
Date: Sat, 12 Oct 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728722153
