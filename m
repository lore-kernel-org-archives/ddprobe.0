Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD62259C93
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747042195; cv=none; b=eFxiA65x3bGSYBIgAFbCmhlHdi1ommvh7MDTstz6PcXd9nAuGW37R7tDFQR5wI0W9sLY/BckxMmd5p7LfEBWuu5ktBl/llgcFmZQzzknCo9PbmttFN0ocpdF/LOMC9957SqKKyGrdK1WK0KANVYqUYqcAzOSVJrhMktCNiC07Gc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747042195; c=relaxed/simple;
	bh=jdcpFgZXuNW+UaGnR3KkPoVkTMNCAZjGH/97YixB4fY=;
	h=To:Subject:From:Message-Id:Date; b=JFUk5g6pQr0sL+nf2Sn+fqZmotVh724rqf0cFOCbdqvGO978U8JyH1HS0BuGaG9ETw6MncDlb1Neg8iNKAHwMzdQIf9ac4eqILpDysb/aotpC2oJeCtYYud6V8CgqKhLbaf+t6oYWYVMKLG4xbqdu2Wxfwr6nw/hxmLW4vTrzuI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ojoa2CYi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ojoa2CYi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE5BC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747042193;
	bh=jdcpFgZXuNW+UaGnR3KkPoVkTMNCAZjGH/97YixB4fY=;
	h=To:Subject:From:Date:From;
	b=Ojoa2CYiXBySZtLbqotj+5Y5GgOncKQ4G5Om7TYGeFCdCh3qIPorZr3dJH/qtnSEU
	 rsOQBH6rWu1K6MOFUBf3PxkwMJOoITRPFIJagCpcD+n9R+i2c59FJ2mPxOocIG1iK8
	 n0Tgvl+Z3UzGyVooofNpqq1oGTtVXWmgfiNuZ/tYI0au8AFOmkeT1rEgjarqwiPeL4
	 nDfm76daLdAvr2IUeftQ4Hgy1fyCU5lKrtx4Lf26IP8kREaDp0ysDWRGoUyTMP8gDi
	 IAcbBMOP/9XohNugmZrOP80sPSPBLZTq4hPK2Y1oz/8Sgw/Fo4tT5ZpCBuW+eIxb/O
	 TaL0gvmhUsMhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8FAC3ABBC
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704219358.2548.1013359953420887367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1190c8b3f2d923231cf6c0e5477a2a2d1b407caea37e39c03282d0e6d8de9d7
Date: Mon, 12 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747042193
