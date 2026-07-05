Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC39360EC0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783289314; cv=none; b=YHgrulN01KrT39GCMadI8EwpKuFoxgzBt9ieZzq/a+mdOti/6lDBgNpN7cIm+Sd0hdQbWbc+3xPx7OAn+SwqBMbSEVZgAirbZxrJ6xWkq3L/YLCuB08PAueMbz4q4ezp/rji/a8iyhTGCgDh+z7jm3P1TDiEpVAgRXe2vF5KM5M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783289314; c=relaxed/simple;
	bh=rwQCXhEdbWisrIMkA5cvtj/0+qVivMUddEmTif2u0es=;
	h=To:Subject:From:Message-Id:Date; b=eQxZQm2LeiRvgacdoFuqwpLwdZpibbGvl6lwbeu2kgTJEb2DZpObklOHC4U7aLoTyMx+G9i92UyF8bIEtXgIcQ40/eBibjOOCI3H8lEr3h3LDz2Lm0VNUn5dB26LbFLCsomo5hhu8rsY7XCES430PPNerH56iputAZ4uTXB+f5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uuU+R2w+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uuU+R2w+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDCAC2BCF6
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783289313;
	bh=rwQCXhEdbWisrIMkA5cvtj/0+qVivMUddEmTif2u0es=;
	h=To:Subject:From:Date:From;
	b=uuU+R2w+69ojFO4Y8032DVV3ymISTuJFSS5F1KewZapLCuYvgPB/7XOtNl8ImPJKz
	 IM3YnbHLxLCskxaCgsUKSBtoIHBPAoNLUG8fzZ+4wlohK2KxOJ9iR205YdW/qbakpE
	 5QavSH3ol7Pbid2i8ltVsp9ILlnWWWm3NAPH3Xrd0AwTwbpSiAxqPTSOULL1IOwUhs
	 7s1m0xI+maYF8yXw0Uq9Dzh/Fh48EwKavgxpUsrB5WRwDaG4auJaTdr3fHbk9TkPfY
	 AIfbTcMgk1om6Yy2nCf1Vy95xCkUBMfBS2CJEUaO9zeuAsJaC4OicFsaYo6uOZpUE2
	 NRPSfo0gx6M5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE965C43458
	for <ddprobe@lists.linux.dev>; Sun,  5 Jul 2026 22:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178328931368.18996.7509003387928513330.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c350474dd72ce395386788b5602f41109320fd07cddf1d6150f3e3ba055076f
Date: Sun, 05 Jul 2026 22:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783289313
