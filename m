Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F5B24685
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754285994; cv=none; b=HYqL15PG0oJJJsUD9mLLnIuozmlOlsXJQeNm92IILzEChrAnib8rMRSJvNcG2yVpiM3hlHOgf2Md2/trBaA1Gl+eA3V03iXd5zuivPPR1nEFsYAtcdPtHV4lfaBQnQWXw9rVR7m2KfaLSfpyKNmRHSU5NmLA7pVSKR2FQCdCnWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754285994; c=relaxed/simple;
	bh=tBGWQyT1Nq7NvNJnk1WikU5eHnFS0dQ+qcScbaAeef4=;
	h=To:Subject:From:Message-Id:Date; b=dKKzTL9GwxY5ywJOzp0RfSVJ4m0PVBfLx1Vu+yi2De57AN6KAuMg8o/hPDYoXuhJH+44N3mx3Be1Bw9fy4Qw3eNffj88NE43ei4lNTmIIFNZuTUaODoT4Sc16HO6YmY20RFgFtKAJQpjoCRvj71xRmlKd6FDIJz5w+4g/64e5nQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bKt9Y9ZY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bKt9Y9ZY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D0AC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754285993;
	bh=tBGWQyT1Nq7NvNJnk1WikU5eHnFS0dQ+qcScbaAeef4=;
	h=To:Subject:From:Date:From;
	b=bKt9Y9ZYsmMWoOf6GbEvEDeGkO3K8N1djlNA9c3k7Oahm5LWbakWM1n0zDMooUVtd
	 xgyJiiEF0+Kkp5iLtrs+/rmJ0CrSq22pKsJklNAGTUXWz5AzbnYJB1ptBd7V3zPnOO
	 tSgTpGgJmSUrN82vU+VuUj1j3S8YowLeuD6gxnU09JA9SHIpOpExaLyB5UShC5iyb9
	 kgjG1rX3FB7Jshjtnz3fyIk/u9caZFzbIgX0B4lJlLLi6Gs+EotTN9I5mThtycsmAZ
	 Lj1HLbgniPRRwhypYSfDdZ13uEzYLjy/G1NWF8ZtNsHapNP7g7gS4XlEOp/OF88lt+
	 j/wuPZUZ0B6Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F15EC87FD3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175428599357.28363.17120267280219270638.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 624afe788bdd91096c8ff576b5732a41750ef6571bd874738f5bff16896fce9b
Date: Mon, 04 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754285993
