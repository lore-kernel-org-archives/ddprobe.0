Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1552110E
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754225394; cv=none; b=FL7K1t2HrZ4ReKCnlqMCKlqUzR9wkVYa5WD1GKeddcShsbG8o5twFtcA3j8/PEyari5EnEjdMg7Qnjlv8R8Gqaqp7o2/LAUALLHkM7aLunWcQ0Fl+pCWAyM3zF56+3eUkMLlb419VA49ImsilDFTb7/mVPdnbyWLH954dtNA4Yc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754225394; c=relaxed/simple;
	bh=UWc77HuDO65BgKYo6V8DMy12ypCHKXr7GYt8uPfRqxs=;
	h=To:Subject:From:Message-Id:Date; b=PGNO6EFrte0iX2dcrKBlqHM2QgR4+WYl5TB/pC/jix6+0Z2MQIpzbHuggLlutOXW/PMgza7ls4BVUYkt1hrID+NqSbh4fKPodqoKIHtdZoTxvqqVcid8Wn2jGiLR9hR8mHHVTMPx6piC6wRdg8Xzgyazq8s9dlKhtCjcP0i+sMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E28dkdqA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E28dkdqA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3703C4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754225393;
	bh=UWc77HuDO65BgKYo6V8DMy12ypCHKXr7GYt8uPfRqxs=;
	h=To:Subject:From:Date:From;
	b=E28dkdqA0/6TUFiaWAM40UyvkGgLL9amu3f/QUdkCCvhwypea5bk/3MXLR2eWxvh+
	 X1CNdIUtGOIQWB6fZtVk8Pp+PDw+kEM/nfAR8kJNPDuSCV+cCJI2IxfqiTOX2JPotw
	 YNTw6TiHltno5kzBKdBnT+YFAadkjtiif8abAe92kxcR/qYD5zC3nEBq8geDVp376v
	 tQai7dkevytR0/cSMSHSY374GIRAyIe6s/lnTPYwpyuvH2rSHpKrBnoWnuE/hHjHa1
	 nZGOLMEnf7erzsNk+Slf20NG59qrPvfk0Yxz8uHpvcZEf8SA1XiyhgozS/tv754MEk
	 2frkybPYdodrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925B0C87FCA
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 12:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175422539357.11969.11934190463842456041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e9379266118cbc7e7754af684c9d4557f25e9cc7a364b8f0c8a50e05c91d5df
Date: Sun, 03 Aug 2025 12:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754225393
