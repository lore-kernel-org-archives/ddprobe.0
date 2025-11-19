Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6261C2DAFDB
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:41:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763534515; cv=none; b=CKEH373BbYD15eeCJvXwavU92LJIzxhEOzXCGqlmsAY22n6PhAUfeKBPT9XJvhE8aqwtTX4ymJjIODwg1tgJULsIduuVze4Wz/A9IhbhcmfYYNap2Il+b7n9h6fChL4gnMB9Ab8Jl5HCCnWI0Rt+bPtYOH4K7zqrmX9Bo1lZZpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763534515; c=relaxed/simple;
	bh=c1AxFTbJvLiBPRShmDuGSvEvvUF8Etoy8FjjtRRd7ug=;
	h=To:Subject:From:Message-Id:Date; b=N4lGEMMYBjj1yHUYv4LWZAmaW3d1re8TQhg0tIgf6ePMUQy2PQ42aeADPIzmPV/0usVSMkSUYwgU1XlyQnRsNUQMQJHXUL/QhHcJJnx8ehldBk6s4JMBzdQT6/6U7hJu3RtElhyaaPZlvsrlwZNczxHy9bS7YCdsz//4eF95BnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUCFtGyC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUCFtGyC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7F9BC2BCAF
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763534513;
	bh=c1AxFTbJvLiBPRShmDuGSvEvvUF8Etoy8FjjtRRd7ug=;
	h=To:Subject:From:Date:From;
	b=CUCFtGyCMbeFaqU1nwtq5wMYyDryMAYEgM4vd4D47kcvtlPjrxlnhS7hniMNr3t6v
	 d/qwiFA/hmhXI9W9KbU6uHMRn5x5muUi28TZhzt23z7jjP6kRtBMuoJiTUqFnTZtvF
	 35XBhaLySquoKFGEEtqSs3NTpGZW1UzxKljlGJaXFkniiE0pNFZl2WROpBbK2CCnqi
	 UIRcf25Fk2R3dP0NL+Ga2Q0YM+JaFcMu36hs8H685GEk3+wWZm9CbBcXjQmsNjlRuV
	 HkGalJw1Zsx+JsKaLIavLZZaJyWekJF5/Qbe5dwfrXqwVHuBDITfRer2OrKpEsr2Hw
	 ofZFRUSJdeIrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E79CF2590
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 06:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176353451358.20835.8971370411183940559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34e72db95eb1309ea72ec6cc895ca6b151b83afba1d69f0fcf2af974d8068d86
Date: Wed, 19 Nov 2025 06:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763534513
