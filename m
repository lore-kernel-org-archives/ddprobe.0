Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C7F3B8D5E
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765743174; cv=none; b=DvhV1D6SCiIbXSongxH53Aic36iVVYd+rn5tc02SBGH3XermLrcfNzmgacwmeV0e2pNZO4TR48U/W8dakz6Azx9xbVY0+80HOBE5IVFeSv+W0iQG1udAwYnIDvSehlQ0Wlc6UU8BfndwqpzvEA1PnXSIkat4Ot8CvFwwPjdR37o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765743174; c=relaxed/simple;
	bh=BCfJxHaFyCfS/aXzTxHDvIQ27aTHvC0PN2IJgSrGkRs=;
	h=To:Subject:From:Message-Id:Date; b=cARc6bQD5ERuN/1aZvDDKzlmVWCGZLdHrV7VGFqAz9gOi+3QuQElZ5qQprvP3MXrATCAKLR1YO2U7n+8HVOmQbHl9sQbJnozlwf2JHAhs2Hh6p/90FRIa7gRAUMRUTEsaSHasClRyF5Swm3rcghudg1umBQEPEnn1VB9mBf7jQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GnGqFF4D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GnGqFF4D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18BDC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765743173;
	bh=BCfJxHaFyCfS/aXzTxHDvIQ27aTHvC0PN2IJgSrGkRs=;
	h=To:Subject:From:Date:From;
	b=GnGqFF4DnwpiZDMJZX80m4bpQ6RMgFacZR6sptg4trThvre5YR9CdAcQLCKwmUltr
	 dPFfEXKrMsqY0ACqkKOPP+h1kZrTDHy7WR2RZVq8qskdaKO1oJB40dzWWoJ39NgopH
	 x71LJvN2bLw5aWXx3CGZaP6bNV/pJg1OwdrOZy5i3eWqJDEqRHWot2BZf1uyUTi9H5
	 Hiu5VWtiosdzV4qx1D59WWXdY8II7FgE/QaEQdaxStxFy7mPgov75v+C8PhWegI3kI
	 u27r19WUk3UAQDxN3+nYNiizfCLDY8npBBWIz3V2TWgAjZ8K3Z9x4M881uURUqxnHx
	 ZfaGfmNlYaF/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2D2D59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 20:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176574317359.13291.18419435501851023270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db8b1cea4805ca935924488849952cba5cabc5f69aff27a4ac2209ecfb6c9ec8
Date: Sun, 14 Dec 2025 20:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765743173
