Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D13D3B2D18
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792030834; cv=none; b=kDwST3WJZGMreETgpL7ZioBPSSRVSLYSYJH0M/hb0tmdvq/w6bHZ0/CKHcOPyHGDgoF6yEIJLREe97HyXNJD2gWdGfXopoiEkHy/qsYB9P4EyXH4y+9NGPckE3LXDxyJVolZZ5x0lkcQQk9Tr0nX2i5WwQE4TgpTNB4zLJKMYDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792030834; c=relaxed/simple;
	bh=WL5gtf6TPcQg9Bq0hM6gK9TRLEOjbEYA5523jOt11LA=;
	h=To:Subject:From:Message-Id:Date; b=AZEJcQjLBYbvzy3iXFm2tOk2Zy0sw5j72XgEn7X5OlxppdsoIfe+Jz7LLnT5zLmX2oLCbwJts2IQmBtUkvqjjLCyjhI9lBC8X5XdtvHOkFhQQ13exe59KnN9aOxt8RbDzIeB0GKd1JHbySdSVYLDcCkvnEcdfUTwa68vbJD9uoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oa3eThHI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oa3eThHI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF569C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792030833;
	bh=WL5gtf6TPcQg9Bq0hM6gK9TRLEOjbEYA5523jOt11LA=;
	h=To:Subject:From:Date:From;
	b=oa3eThHITBaghQv5zGJ7aeyeX5qIbUGTF2enZPA5KtsUe//7sgya34SQ6HrGQa5N4
	 Ehf4PdcUoQzplMZxTtUH74spodetR4ia0hkrYAe+VdzTZTFDGCsCk+F+Dd4UMOcDII
	 blT+zz694c86SnWvAsMdS2QTpuhShHEOiyfnWFryeLgcemJxSmOL5OV4oGV6wZ5Zx5
	 1dkpffiNlaphcxTD2lnKKqYfXZSYSxq63bqFmpYZpINE4PNQYfs1rTxRfx6z7yXapd
	 VVSoGDbRzBLpkQesAv5xVukpdEzMelcFWJDuLsgwC/hIvq4b048ohCbsj07MAW61fJ
	 15my6xNp8sQ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0D9CC6B30
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179203083369.16184.11022279029639958057.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8502719e683cc8572a84d89ca46dfba8a4a0fdb5dffbb61ee7750d8ecfcfe2
Date: Thu, 15 Oct 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792030833
