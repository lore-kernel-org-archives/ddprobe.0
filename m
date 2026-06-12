Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C4E93FF1D8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781285794; cv=none; b=SmlccUfL2rfSotpFN6VKfUnCxy9YID5Xf0r8dpGFfJbP2PKGsHJQIGd0l84LY/OwGNjWuNkvVO8Xw/kGybD2pqFbxmE51wQ8M/2rllNDf/V2kI11pQOJsUH7dp9dK63PEoKdr/UMAjjAzTDszLpaRhAP4zDC0akwf885F2BCB0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781285794; c=relaxed/simple;
	bh=rya1lsHuuZxMbd+BkiA1kPR4RJQ5N5XCUeXw9TJMhhE=;
	h=To:Subject:From:Message-Id:Date; b=L0PpPP10J+yfLCKue4xYDpuDmLKCb+Q7jkdai6sX3Si48/bIpBMfbt9EYgaVq+KWCjp7nraIRczm2Nv4pYmk5L7RULVPx60ADBKuEsOHwsvjXKq/NNnXih0+cYw+8CqLQItfqVx9oWFmsk6vHpqvSrspLtQPDRCFSbxyU/kmVas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRRgDKQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRRgDKQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3890C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781285793;
	bh=rya1lsHuuZxMbd+BkiA1kPR4RJQ5N5XCUeXw9TJMhhE=;
	h=To:Subject:From:Date:From;
	b=RRRgDKQINhzNHYneSu0IbBPTXZUDDTPgOuY0B8GmNbjkAIwWKoZqmBH/7vRuW0jpi
	 zROcfIU96lJhRXTRggavNqdYOqRJL23nC3G/kE9zvxt6CtN9Ljlw1Wo8wJIKruSw9N
	 BWRUIyfzEHxE57N6vN20dBchFJuPtLQrzBLNbUCgT8nFvUh/uUJkZR5DzWJf/ltX8z
	 VyvkXfEraBKb2vc78GjVwBtTckp3xYY54KdS2uHw2RbefBLO+yr7pM6MNoEyeLEuFN
	 34+T1CN9POpTBIv9mLovRRhzMs3VQ+JYKNZaji02nnQnILsKa9G9rNfQP6+fHF+6Pd
	 n/FjxBsbx9ItQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8FB8CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 17:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178128579368.32091.913445745053028449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc7db814c2a19f625c433817ff0df1c9933e4adcaabde094952c1d48da42ecb2
Date: Fri, 12 Jun 2026 17:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781285793
