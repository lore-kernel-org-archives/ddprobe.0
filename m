Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55EB5610B
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757783994; cv=none; b=ZrtYU1lPTj3vW49nRysfkse6luL3KZNT+bdmdQFg0H5h47Byv4V9RsmdZv8GANiuSsoXoHzg/fGRmfSIIu9DFNb6cxDsagPLXtPeGT9LWhndj32ijIWMIVjxWkLogfupZgNib9f0rVWNG1jrZkz4jFSs1KZZC4TFeGsIrJbRYUg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757783994; c=relaxed/simple;
	bh=baw7SeKPKTVJcxPX2DftAiSAlm8/emBM4z8Uh7zq7RQ=;
	h=To:Subject:From:Message-Id:Date; b=deHH20Q/Kk8+igXO22Uerpt7YS4Mz+i+2qgp3uAsBqCOIGazpIEllI3bSbOP7qAQmTnX/iCf9eJ85r+q0jeiihVypJsPJTzVXObi2sHc/C3XX+NnuyHIlzvfplxXcCQrNYoiYevPwhZ1G9xB516XWR2NwNE4TxBOcEI5KpU1HuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BT2a4Asm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BT2a4Asm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6FB9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757783993;
	bh=baw7SeKPKTVJcxPX2DftAiSAlm8/emBM4z8Uh7zq7RQ=;
	h=To:Subject:From:Date:From;
	b=BT2a4AsmN+6yX8nUUoosVUY5jhkFkqiRe2g3KWg4sM2O1JCb7qsgd2FM7jPZv07Gu
	 5NQWC3IL4IY1k2WYC3GqOquczZLEE5FdFNbl+inpPJP+njhCdrrHIPU+j6vmAwG18S
	 OiyIpm3kPyZC2vKlB2BdqILWRwOmVAdbYRUMvirTwQSLFTW9JXDreRuXlN2byOnNbD
	 FVNGoVd16uZvWMmrVZMQ6bFaWNfeXxQex7KTzzui8fQq2bMZI44JFCONXK8Imb0mmO
	 UFGIN11qlOj10ngbbD02K07m8vb6soV/yFZZwrYS1n3AjDOO/rWzolivj0h17OVZAi
	 8rKDuLBBG+2Mw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94146CAC58E
	for <ddprobe@lists.linux.dev>; Sat, 13 Sep 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175778399357.24322.9764716262519191360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa672b39f56a0b9a0d822a471a454c98d134e58edeed9a7cbbe224bfec12d8b1
Date: Sat, 13 Sep 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757783993
