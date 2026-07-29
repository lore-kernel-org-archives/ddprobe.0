Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3757E3B5841
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785303634; cv=none; b=XGki9x+Fo4VMKiYNMf4SJw106UqZmp8tStG9MgcmsORMCdWf15EnD3GaY3C0TpiF1ImMUUwrZBbCDPgvbPhKA1Fkx+HMVmI0fOCoKwcd/6unQptI+sKarYHpDmhTtfGg+IJt9YPLI2M2AxaYChwH6Hw0Bzf1rQVMczEyPXjIyfg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785303634; c=relaxed/simple;
	bh=rUUMm7fTbu+ylpVGSf8V+wPUCuceI3LM/sNFvoMxVfs=;
	h=To:Subject:From:Message-Id:Date; b=j/lG/f6HkPerXEzAOYY6PyFuAfYi2fCh2pRS1MtRO2idshmLIFlV5/0efYNnusx6O6fh0vxyr6fzgJT1pD8TtKliH0VDlYq11xlX/s+UsW8fAX+1hiwFqFf/F7U47hYplaZK9xXm0mMk6Umf+Op/zy0yLM4d0V8l03WiVAca+Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eVLTaMG3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eVLTaMG3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C95C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785303633;
	bh=rUUMm7fTbu+ylpVGSf8V+wPUCuceI3LM/sNFvoMxVfs=;
	h=To:Subject:From:Date:From;
	b=eVLTaMG3CwHr2FpLNyHZ+5nLB8X80TZK/0ESOHB0qSXqp6h/v3hqlGAFs7plun6X/
	 cfHLbXB7/nLQNyUoziPrBrZOunGxTypxqmy8XRezdNeHuukiiSTM0Q6GDnK0TeFuAJ
	 LzLV4WXr5ChF2iCtJZVz6hW+yBEmxQZunLtweMVE00Nf/egNb/qgLVYNX3I+wYaTH/
	 93S5RXE8HkwJxbfUx3Tj3KU0XJ80969xFEd53g5xJn+rKBc3y5WqMIoD4zTNjNmkeo
	 kTMGzvm5gHj/NLFeUcGGkGIotTCyHR+2PILZZaz+IApg9IQvliql8Rdc86kk2ZTjQr
	 jZw8MGMD3HQ5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D3BC53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530363368.22867.15768690127231831363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad72537bff91514b39aeea3978fddbdfe2998c34477717880928110304350dc0
Date: Wed, 29 Jul 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785303633
