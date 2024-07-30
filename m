Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348D918A92A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722333954; cv=none; b=CxzOkbDj2Q2VUm2GtFXpNHQx916/16tg/pi3K/7s7vD+4inL2fOeVyo672xRFt35mRlZQPZaoVcZKeg7lIUr8fHhVd6sHJSIJ/jazD2N4PR3GPD7fRiSswKqifEwqISk+fvBT+L4iPY5TDf91MWUg5aX41d8F3jNKLmC4qYpPyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722333954; c=relaxed/simple;
	bh=1Az2Sfpz9QB3V3A0JOpIOn8XVl+B4JCWKz5TT6u2aME=;
	h=To:Subject:From:Message-Id:Date; b=aQz2a2Y7c+FFvvbxrE+C02xaMni6/f24MDXTBDCp96xEilyGWQmHKEmsTsL+zH3fdtWQz0TEbb8Zco28kVVSC8ocaqgISwLexEKNI01UNbh/lFrhNXZXTXA+QG9T5v8K91N0uSwxKXrHsRVGbp48RF422U9vpoJCehTtTQEImoQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l6cqSrbS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l6cqSrbS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8932C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722333953;
	bh=1Az2Sfpz9QB3V3A0JOpIOn8XVl+B4JCWKz5TT6u2aME=;
	h=To:Subject:From:Date:From;
	b=l6cqSrbSlzIIOeUpzXwiIUp2K4Cqu94VJaPAQLX5zWUYwbjR2Jx9PADvs782PukQH
	 Od1vzA1xz3yXQbZILXEC81CtOovR1y2ya/pqxI+RJSBsdaFKCmKXnczWC1Pa+I49ck
	 ztV1tR2mHHAqMOVDF52keKr+8ZSnbJ06XyRvhZrcnPIesHHWqzkRGn9crePvMqBd9e
	 VXD3QSAvrefrI7mm0SAFo8/lGm3JmIwuPQHv6yVQME+b4uvAYo55D+JPP3TO+tf3IM
	 kat/+mrrOfu1TVWAxUhN0NBx1F8r4xNaTuiDytDUhvxmRUy99oTW994R8jEp6EhCDR
	 SKi11H+UOh1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 948A2C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 30 Jul 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172233395360.3023.1642113847826963139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a157130f454a1d829fab7921c15933ec088d7ef0866adea8988c4d61b835677d
Date: Tue, 30 Jul 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722333953
