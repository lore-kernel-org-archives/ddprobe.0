Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9D66359A82
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777885654; cv=none; b=SZe5evamj11O0OLsfTCTpdu4xPJTk2C9mucLPstzfoRFbhtzjOf1M3zjJsPkTuSodU6kCe3Z2wrNMhXzjClgJUrgVQ3eW3eQG8KcQrP95gb12YjNm1cgU1CoML99RMbUF2FJYw51HLzotPsFx6GX+WC13VtjR/T6ktNy2wwnl6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777885654; c=relaxed/simple;
	bh=/TvWEhdGPKKWLx5ekef4yTcf8ADyx+JP1+FSbwnxxIY=;
	h=To:Subject:From:Message-Id:Date; b=Cxk+3JgasHAewT6Uhg6SnzA2PGSY9JzEMrULSumH4Q7JA8n0fzKCPsCDrMtW0wBzuPXMGmHd0JJmX6gjvM2MkG0OBgGKC0v1B/50jV6xCXNyzMm4j/jevB4pBZkFBe5x16jweQ9pkDzCXspmOmp4NO02mAwpI3yxfYMG5ig+lmQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=occUqPTs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="occUqPTs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8CE1C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777885653;
	bh=/TvWEhdGPKKWLx5ekef4yTcf8ADyx+JP1+FSbwnxxIY=;
	h=To:Subject:From:Date:From;
	b=occUqPTsnijzTZL+dIIXJ5ubYqmsnPK5PyI5Kfog+cxjZEyUr2k3iCg083x504AJR
	 cLXOwQuMM1bP7Gq7I7j2iOfPtQbznOrO2CByuixDg2h1YyGLgHzbdlUhoTEPBYeNfA
	 rg2djLYNOqde4egFfBVDK+3se8Y9FkDDsjvTqSA6FOKRtt9f/2yAN+fSSMEVqaYgZ6
	 tMKBjw8aKDY7YBtEWczdJagWBwngEsir9hnGyOX0Vkfsi/VGcK/8O/lt7hNcsqYKLH
	 ej9KnGxLeyCX0OwnLopId8FHTchLGQ2pWRdoMeTZT1uz/KIQpr3COmquWCdn7/vid9
	 fQfHpYC0unomw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAC85CD3423
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 09:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177788565368.22090.6024400601247221576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef539fb3db80b4b06a8ea1d2b61c61de22d8269983118b26a346fd53561cde77
Date: Mon, 04 May 2026 09:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777885653
