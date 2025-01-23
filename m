Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFE5B1BC3F
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737624954; cv=none; b=uEC4KWF509SGXa7QeainuhTZ0U1UPiyVVrRA7Jjv0xRv/eV0PNM8yvU80e3qyllHJFWkiWZU5nKYAGrTKqEtiHYCW4tjez6XE9g8CP4LGO/yHS90F/23XoqsEQlpnegP1jCDUiQB4n6GJTSEvH/raLeUC3tQy/dpBs35+1kpGBk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737624954; c=relaxed/simple;
	bh=OAtj4lY9RAYhxBcPjbWtvoSnxoV0f5coZf+sCZvbzJ0=;
	h=To:Subject:From:Message-Id:Date; b=dfn655x9qhY2QuyAxg12moy3n3Rd0txvPy1RUAfa49aWa+QcMzrBqCPzbCAWwxvswkrmkFIc1yXBSs2ZlgLfpzBCvZu1G1kCUlCZkog/tM4njPkufj1ErXDUV/OSkHxy9KotRBvmvAkczHTfhp4usAsFvQq4IKQ5bYm3i/A+Ar0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T1s+lbr0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T1s+lbr0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2C43C4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737624953;
	bh=OAtj4lY9RAYhxBcPjbWtvoSnxoV0f5coZf+sCZvbzJ0=;
	h=To:Subject:From:Date:From;
	b=T1s+lbr0gbF6xBv1scLwPkjAt38W0hO3RdKSgBb6uSfg3roSAuQBLVMoxOcSk9AZB
	 5sTy80x5zblPHfjKrnWDILTAKKbk90/rmXAEBDvc4eB9kA82cO/yDVkYe7MaVC+AAK
	 CTWdHBE6uzQrLspNcb25El9UNTUAt6Y4fwUpSJm8d41x2ODU8ZLhlBS58dlvcvjAdF
	 EpHTd2eEU/ImOKmXrPHxD50QvdaU3fqX12hHf6S1siCGgEUbKuQZb6nIGRtZh/t96L
	 VPGQZ/7vGBOrWG/CnQyraW8MII126IYYu2Np3bPeYieB4Fn8F05bGDJPNbc/S2RaRC
	 81ThzyFumywxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F8CC02182
	for <ddprobe@lists.linux.dev>; Thu, 23 Jan 2025 09:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173762495360.6073.15217235957942337393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3e977ae5f11b411cf1dd9ba216cbdc5925f92a5f7f7a5d3a847e72b7f99104b
Date: Thu, 23 Jan 2025 09:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737624953
