Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FE0C40DFD3
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775586934; cv=none; b=AINqJZbWn9wYhfjzOvYpYuyRIVf/zlGT2xcQoNqR2nweI497SMVCDJmsum6LbpAkRc46n4VyniJ509PPnTXG+qjvikTM2YaOHPd6t6+K5a3yN+4W9M/QJt30pvICWDwtVrKmDpK9SMg2n7YWJtGykdaV0QSZseFxwlKeepRm7Mg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775586934; c=relaxed/simple;
	bh=6P57XxnlqHPYO/wrrCbIloerVMzq9xAbcwKJ2mbsMb4=;
	h=To:Subject:From:Message-Id:Date; b=ZYKLHVjUW2jD4sxeTCgD1MNykQ0+7xydxRwW3CCYpnorEChnYgcb8mMLMPX131iSbwbVp6Jfzh5+71yRpb6UQz/O/S5xdSIKEJ62MONoBuM0SICLfY70Y5yjuPe2XeBHwiGTCpcufD6hzO6VTNKvsEsacnVbggXOXk7lascuv3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GUA4Bkpe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GUA4Bkpe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBB24C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775586933;
	bh=6P57XxnlqHPYO/wrrCbIloerVMzq9xAbcwKJ2mbsMb4=;
	h=To:Subject:From:Date:From;
	b=GUA4Bkpe2whQdheQR+iJPCdMdo1lp3X9hq46DBBT2R7RDvQZyFs4gwF3KVpMdJ2Fn
	 NzaUjEett6dgmzPs+w92EsQeCSY5ABZ0RBtHv5pDC8vRhb5lpA1LsT5b89P8TTKxwo
	 vMDohtj4sa3BordHj+2UK4OIzKggZn4XLVvs7QyYnDy9luNCzfBcNHtLFMoX4Db6fZ
	 7Avb1bi3cSxdHAwYAMeTcwQHX2oS2vRRvKB707ns1UW1TROYXX3spshxopPMMTY98D
	 Vu4b3v4XOoxS6EH6Fphj8E3Y4OZ4jUOLCBRMwsgzO90cYnYs5Wfm7GYt2qbASXOQya
	 8WRl2wWhTqNRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA2DFF5133
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 18:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177558693368.15283.4059149752700904113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 359c4ddf55069baf2b7012fd7c8c81fdf5732240cbc380d193ed14bc69a6218d
Date: Tue, 07 Apr 2026 18:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775586933
