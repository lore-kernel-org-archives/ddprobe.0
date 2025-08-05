Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A26B1922F5
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754407796; cv=none; b=ZRYquFyXr+5iThEzwETo40Bb+m2r2LxPTEXGDVRLuGlGOnb/4ZEH1OG/4QNS8rsOvWHAP1Bkos4NPGLSyRwGzUxrTMgFB0AEp4C3GFkBt5oOM6AIAU4OZW+BICEZM4YVgPbXbHUENqzOMnMqDjqpEU64r/77i+Ctsn/auS4qU7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754407796; c=relaxed/simple;
	bh=dYl9XzwCyX3XZ5MCBWoUGGZekymNuiOdIS8VISBRPXg=;
	h=To:Subject:From:Message-Id:Date; b=TOggfEY/ArNZtfRKYK6vppG/NZaYkgNVY5l7hve81nnWJdzUCpTtSm8vd6qrWyFFGbhsijgt/9GbMHNH8MnMDiBgxrUUnAR/B7wGY8RU8uOPKPtqjof2xkxnAs1ewBswlE82ha0aAF/re+n9kzX7lQLOuO0ceylsa73p3eqiq9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF645xLF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF645xLF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB08C4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754407793;
	bh=dYl9XzwCyX3XZ5MCBWoUGGZekymNuiOdIS8VISBRPXg=;
	h=To:Subject:From:Date:From;
	b=CF645xLF5hIDWit6UqEpetOQ7El72QO58g/uuFeZmhQMqqH581FGZNFWi5KJ85Zx6
	 9sC382QrO03n629ZOWCvINsR2PR4cHoXgtlF8dqBFRYBrJatSiwjPMlyolucexa4w2
	 Imha34qq77FuR/rztynmNvnHDY1MKlANN/iQuN0lAZGmW79nqWGBnaQ2nf0FVHsJTA
	 RtJWEuDJqd1KndWvyuxqll3C0ji+LtzPwkcXLmfNB+gQFasJ/A4YEQER57Pej7dCd3
	 hVLfek3SSXqDRdnonBVHZsVQ2xz9tT4VCtNp+iwAf80qrr3yE4MyLdfz5iyzOloXts
	 vTrhYj1KCu9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BE7C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440779358.6075.3100356296468185784.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 04f01f6b8f670287296ddf09bd026fecae05be151e0c114a3b619f5decae685c
Date: Tue, 05 Aug 2025 15:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754407793
