Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 396A9218E97
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745303994; cv=none; b=nRKBkzMWuSaPHAppDvvAt84IRpwBdXBEi1M36oAqMMbS+b7YWyRJvoXrllZ7zDTtsliVOtdFezqSPj2SjPtgO5Id8s9T9XxSMW2tkrrShiGjT25MAIu1qFiEMSbd5MUKMgL1TQ8y/FETQOILwyMdzzUSAaYOPbBij2MtaPAG71g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745303994; c=relaxed/simple;
	bh=ccmzvDZ8CRFzBvGi5as+QsYrW3LFAga4CcrafeQFObM=;
	h=To:Subject:From:Message-Id:Date; b=l8F2XqKvcqUfssuJVumohYK8vvZgxlOuJ3lyhWNs8ewVOh6PUwIhtXPGDMSE++yhfrPHamiLFqiHZ9MLXifZmQd+R9X321XAuVvAG3M9OoJxn2LcaJj4zN4oP8k8b4+GTiWLM/SNnqloPwk0AN4FURzpppdE7JTyIeQxBxLoDrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jNRP0KTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jNRP0KTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78D1C4CEEC
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745303993;
	bh=ccmzvDZ8CRFzBvGi5as+QsYrW3LFAga4CcrafeQFObM=;
	h=To:Subject:From:Date:From;
	b=jNRP0KTbPQB1Q4Xe2aBq2E5OTi8u8thnoXsj1ruCgpNr1DWJztU7/BO5Z3+y1pK0y
	 +bSWAQWrKenq8VHlWcLJI+l0QbfSYsWY05NY3rz4rgiuDvRcQS4H+ae5ple3G9aJwQ
	 RM272v0nks8hQQyafmhnw0mW+xgnm1sDYzZdQZ550hj4Q/ALqDgy1CRBxsj0HGr0vl
	 nHS6xWLr1+feDakMBrh3B99zTs9Oukik7A6p1GYQEoT0auHoHF1YSWAof0RqRSz+89
	 XQGiGkVNI3H0A+fJR3+jUK8jRkIUMosW8yoMpd6wK4xxmJXNDvSvJ5ghh2AJeWqH7G
	 ecXD+D6rKImtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9556CC369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 06:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174530399359.663.13439553501629940192.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ffedba86032f635b8960083e9d49ec8b73d5c9dfe532f020917940839cf7160
Date: Tue, 22 Apr 2025 06:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745303993
