Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57B2442A91
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717881443; cv=none; b=MYMnQSpYkArPAjVBXkoNyNZ9xpXJyKNBmEFna6paopqSqk9CImEyMftvtCUASZzTLkVbJqkAvgIAPq5PhJF0PoQO+rAz7KVb4ezdkoQdsvvVs+0cojoGHFiSumZYLhH9xDGL96vFXCaVDIrCdFwYhHI0L8A167smvr1EW19YwCw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717881443; c=relaxed/simple;
	bh=Gb/GsYiJnUJWDf1r0HrSRy84ytcm0ciswRKuUES1UgU=;
	h=To:Subject:From:Message-Id:Date; b=d4lu+J9Khbtyx30LpJ1sBQpDXMzUrxaU5mz/gmuGYuGiylqcwYmh47vJggsZEVROZysOD8PUYslc9vz3KKjq8WgfAnGpZd2hWzW1MFf6GC2ECqOZUHYO1GTLVf9biXlCQ5ajfPyzYEXm05BlQZykug3/wngdB9dU7QndmHThSBs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+Ycc9fC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+Ycc9fC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5600C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:17:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717881442;
	bh=Gb/GsYiJnUJWDf1r0HrSRy84ytcm0ciswRKuUES1UgU=;
	h=To:Subject:From:Date:From;
	b=T+Ycc9fCyzIhaoAnMytTGola8hAaWxzzlFauW/skaAl+4doJVg6pjQVuZjXmFNpSQ
	 Am+bu8oHMXcfB3+E237yRAZb8WRPDXWQBDDqAbivr2cjl8P4ju576ukq8Bw49T1F2T
	 RDR8j2ZAn7xE7EyrWiCfmzwYgifEvCAZIp+xZLCvk2S3SD2xBfgHf2D5vaJEBT17mE
	 BfMMn4XamSycH/X3jnbhn5V5YOypUAn8iSu0FCylkDMPzm79awYIDYpv1VqW6Lh2m8
	 zReVHXYjZFfT8ZfKqG3Dr2AlyO+RMmgmvtmD5j8vDx9Qp3QL1sCYBqkBnaEZi4UhZD
	 nALgohXtB23Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0B75C27C55
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 21:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171788144276.25935.7519343400545677413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82ce13843e12d0fe4a03fa5246d1980127f4a3dc3581a67016f7fd758741e9cb
Date: Sat, 08 Jun 2024 21:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717881442
