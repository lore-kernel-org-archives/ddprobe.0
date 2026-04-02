Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6945C3AA508
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775122534; cv=none; b=dyWCe4u7Mh/qPFiDrzfG4WrFfz+Z8OxhFF9I+iQVUptHO8Qmmg96AC/wUX90dCAR5SylHuH/uz/4EJq2gECGmHOVoqZLFtb0hXmTbm3VCTfwrAx9Pqq5cmc3uF1Rh6VMlsQwjOXLId23hziBDzfVWxfJRozuX2pVDEJy2Jz6o2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775122534; c=relaxed/simple;
	bh=+R+4u/gin9ESrJAUbaDsiyfRwDhjBfedTr4YJVCiJe4=;
	h=To:Subject:From:Message-Id:Date; b=hc/bBT1TPgsbChTVkbBFwO9EIqqWVrdczqkpobbfvLqV086r8mMUPov6D0aVJ+mM7agcNNARjBEoe0osMJUYlmgMEbhB4rqNO+CyLtMbTdMKriuNfBbJ3jNizEe5Lr+aBSNkqajMlXTwHt3WTxILEUG39YqWAM9LzcbPjJC0PRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cA3yWhYl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cA3yWhYl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0284C19423
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775122533;
	bh=+R+4u/gin9ESrJAUbaDsiyfRwDhjBfedTr4YJVCiJe4=;
	h=To:Subject:From:Date:From;
	b=cA3yWhYlxbC5mdaDNvDauh2OutljqIsYSFd2LsLSX4vXyHc9I8mxNROrrpUivN0Pb
	 aRpgr4jV1DIYCXoY0RF2uERiyvHAxZqQhIIuf+0PIGDl9KuAudu+IQj57zuxuw8pDZ
	 17Sxfii0BkIq9ajeQB+QDJ/r8tN6QZjlv4jHzzfCVvQjH/8dDx40i9IDrXVhy/wHhg
	 FEtBKLRx0vfx2WALiV/X5XitJAj5NNSXeE41auFGSREmUu26VKZlQeU63NLtfNZ/2m
	 4WHIxWPDQ2IHVK+SjZ7v4NhdwWeeosfOijUu5o4fF1qOpl2i5VtBiHEOYTTk1UVrct
	 j6aJjBGPonaxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0D01D39403
	for <ddprobe@lists.linux.dev>; Thu,  2 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177512253371.13322.4719130639749689898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48c1298e4e0517ead45da8ea1ece4828d620761631904b6c1d1e7229f66ffe41
Date: Thu, 02 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775122533
