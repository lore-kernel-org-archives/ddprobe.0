Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54D4E8062B
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 16:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713199763; cv=none; b=LKYGSEW9p65I1dH96g49FGf26uCCLE/p+mWFLiavMLxLXlqR50Ym7DBY4teH38yiw0pRENR3POGBcg5v6dB0weuivMJeCE+qpGrmQNInSZdLsdbXSxrvmL8XpEygZT83JDsv30VAV0UD7t2r41E3bMg0aPo23ad12bVvM3pHnag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713199763; c=relaxed/simple;
	bh=qOcLCsM1VxRMJfE1KTnGqNkzHygkf0jYagam1rgPUsc=;
	h=To:Subject:From:Message-Id:Date; b=lpcITLeYHmVkQoiXHeldnVI3/qbGqZrMU2hYxK4l8AtNy+cikuMCOdKsI4v7USRbHuSqxsbKDIadL37++X9gXu1HdNw80qLT9gPHvbz89fD/FCLvlAzMhS7aYMT/Mmi4P9EmTYTAIv5k8EFptvA0N4Ljx2fBM2dj/DQFeG5YJ2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GRMFX18I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GRMFX18I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDACBC2BD11
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 16:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713199762;
	bh=qOcLCsM1VxRMJfE1KTnGqNkzHygkf0jYagam1rgPUsc=;
	h=To:Subject:From:Date:From;
	b=GRMFX18IZ2uHXOQeM9/U6abUmb+t9vtyinNQ+ojtla/mhPzngQ0nb2p5K29rJDvwn
	 dRKxGmyvxOJOB3b+FQvDwXTF2q9YRmC68N278to9Na5kqaD0iGB1K2IZr1BPiFmuwe
	 Zy+qc+EAe6DQQeUDslKdCPV1DEN7VnKVUiLm2GX20Svob3/4kb9FYtHMK9w6R1JD+A
	 cC66sZoQ4joDIkW23Bz2mKL7DQx0xwaz9362bN1xPF+N/RXS5MP05WiHbs0OtRgAbn
	 AY4tujeRe1JixCw32oLk9e2HyF4G42GXg9qGJ3rXAqKbHek7Yxk16iPLj07rgh3658
	 DujJo8gYMr1eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5B0C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 16:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319976275.6083.11103974859243887659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86e81bcf17dd031e8d214cafae372470fdc9f35efc64188b642efa4e13c38fd
Date: Mon, 15 Apr 2024 16:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713199762
