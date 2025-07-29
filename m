Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21E181A23B1
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753823994; cv=none; b=lqGIewqAvvWDF7en8MyyvCz9fyujRvojA0b/WoXMh5A1n2kaDOml/11eUnHRp6l9qy0usUhO6TIyP/8E4pPGEK4v4RHIOCYmgPDThyT8c0Brxnfdcf+S/DPTkx6DIKwka9lCPAlB/dUf/JkZRinE6MzI1Rd9sEXko1LuM9OQ0sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753823994; c=relaxed/simple;
	bh=jUsUm8PrwZjML5bsuOIWRtsww1iSi2RlnMzABR4j+HA=;
	h=To:Subject:From:Message-Id:Date; b=NQGtbK6PP8s40FAmaux5bLHkzX+R18K5fKnKVx2SafamLRoYBFL0PuqyNpqHZxpO/X77gSDx7jMOCnwzybtgz6h28jAeSb6nzAKP1/PJkjSIyxG2UdxIrWQ6HR6I5o+hHFl+sOpCDQaKorEJfWtvg21v20j0wbWbS0DGUy6mTPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I2Op5TB1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I2Op5TB1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5944C4CEEF
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753823993;
	bh=jUsUm8PrwZjML5bsuOIWRtsww1iSi2RlnMzABR4j+HA=;
	h=To:Subject:From:Date:From;
	b=I2Op5TB1LllFWoolH9FrsweY4pBQwwTKXTDF3m9t5ycJ2222HxrFa8p04j4oWexQC
	 f693GvUA8dE1D0eWfv3y7721qNAi4dz2tpBmBMLUn8wa02buzohzs5FmjyHi/XzrHK
	 ffaTdQl2Tp3unr29Hc9CdNDtFf+9aUoK5HmCGMwZ0el/UaUPeApr2GYC4qUOauJB3r
	 QVCOcWSovEmn2SXJz/E5xQAMo41WRPaLBlHDa0ucjubzbqwyJfmiOZ0pL0PE+XmiAc
	 uRDtCVrsq6xQwBaqyTQrIeLjMIQ8Xugc7DtQOT5pFFpHg/UDS7FSk9swfV/iFf3Azq
	 QSL/39rko842A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9169CC87FCA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175382399358.30183.4957532554370050497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbff0458a2827f80196220359b09c9f707839fda39ea660126334fb13818640e
Date: Tue, 29 Jul 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753823993
