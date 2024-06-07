Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07B6D194C68
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717774043; cv=none; b=lRUmzUeOuNQl7D0C7ofIFWkApuTnyM0Uj6cDyOgFlSacTlNAUcb6gwHlNWNa64XCTP5yQFzYWCsUUfHz3XPSI1/ShSXV9SQUF8fQKOufHdNPBccrO3TBDdOA21pF2FEd7KIlnAES5hhjQq7X0uffjiqLUETTo/QYazso0fn/Onc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717774043; c=relaxed/simple;
	bh=ZAuJjU2YPtvhwnDPGp9MdfvLQbtvYPzJXuorFbVjKHQ=;
	h=To:Subject:From:Message-Id:Date; b=s9Wz+0RuDsbyU3bVEz46gjY1qe7YlGs6IWCM1fcx/M4gdd1K+OOgVD0fHw3VbjWJt9vlPIi8aOIatbshBuSt7Mk/pQ5m5QYaXAo1EU52VayOYEoCDxTn8arpvkbByRxf0NTtKkWnUEWl5phOKGCC0WT+PQGZhZy/zLCT8QFTXGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nvEggwx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nvEggwx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA8E8C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717774042;
	bh=ZAuJjU2YPtvhwnDPGp9MdfvLQbtvYPzJXuorFbVjKHQ=;
	h=To:Subject:From:Date:From;
	b=nvEggwx8pBc1JNCGk0sIAIfqh30QzJLEJXFB9R4c9Q8Lr3hugWPj+a0Tfm7jg8fuq
	 554sIcrKg0CWqyGUNMRyHNu/SPf4TP9Hh7xEx7+9Vszq95gd1ab7y1fNIy468SYs2t
	 Q1w8PibFXERpRYgVHDJ8+NKRgCof2siM3vOrH+nKERDVurX2It1pqsZhWGW9vHtyE+
	 AYzR3PoD4ZO5M4nwPWeRwDQ5MJj2vbgVs/pTOOVu73/pyRvEPaRVY4GNNjVDFNwzAO
	 jMbvn4qaRynbssMX0B4uB1pMmBPpZQO+ZLRFM2rfbMmqY+VSWTp1mLcLMeh5rh3RBb
	 ty4DvgZ7ABJDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA736C27C5F
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 15:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171777404281.12482.6159222676582779616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf5cffcb0edc3674dab371b5d99883f8265bd53fe9d8d6304524ad0469c0a2b
Date: Fri, 07 Jun 2024 15:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717774042
