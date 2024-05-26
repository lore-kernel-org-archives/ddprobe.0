Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AB63387
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716686663; cv=none; b=EzGNR4KwpeDsIACoDmaUzaijJzsJhPsZ5JC5dn1JSygwzjLZUTEaB7hM2l4qunFt+K5Z6EhEQSx0F9845IVYGvF8BxGP7voMEal8dscXewRRDGfxlqZvLwj0lsCiMkjI0sz737m4Xez5zTARv1+W9VLRz4KDLxc88CBdnkAmfvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716686663; c=relaxed/simple;
	bh=TfV2ymEWFnQJvIEwmLFhc+ZXEIn0he2yiUV9anL1v68=;
	h=To:Subject:From:Message-Id:Date; b=rlbNTJrlpWHPLHYDwwXrbNBYtxSfx3nNtxkng2rePQKaV2CxVKk7+ycBDNYnD+D9M5+tja1sxbxRN79gDR/q69wxmWacX4ywutaBSWDU1GZqw3rIlydKBNxzljWpdaZJlzWbSV4Se1/NPNZkY3sVyoiGNtdS7tHMd3MiLDofRXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HkY3dsPX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HkY3dsPX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBCA9C2BD11
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716686662;
	bh=TfV2ymEWFnQJvIEwmLFhc+ZXEIn0he2yiUV9anL1v68=;
	h=To:Subject:From:Date:From;
	b=HkY3dsPXHG1j54KqcfJaDN5ZMLHKsaAeUVj0e7g4dWrHDD38Vd5noYom8oks2toPG
	 HNUMWCQL1h7TfkEFBS341VMe89xBuxmsKxoiuF42zm3+oAXlsgnoBhpSbcdyS1xEB7
	 HgkCK9xlZ1Lmh6BvTwn2DQsXYla8GXBNnCRD3tyrAAU3U0r3LsGDmUDPqR/zMZrwGV
	 ez+Jk9aYmk/d2739MC58D/gZvUt425ZtDw+fEONqT59t3jxJKFv38PPw7WTnRbFezC
	 2DyOLt2gazYnndWMxWLopDbojSnzkt/w7gK167Y7SkB2YGuAUxUNdhp3I0wNGo7rhJ
	 iVmEKoxaIe25Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2119C25B78
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171668666277.24906.2929711618141152369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83745898410728467444161bfbcdac20a64d6cdf60c21919ab50bffea366ba75
Date: Sun, 26 May 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716686662
