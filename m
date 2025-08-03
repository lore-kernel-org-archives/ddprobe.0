Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55315367
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754188795; cv=none; b=OSQ0Guu76T6KLY5m69KNRTHHcmhnwG8Mb4rm+pSFtrC21BIEz+VRT3Vxgt1/QD++UJjGcLz20dVYPnUBUF2AsAX1OYRqebvKygon396YbjY+ERfRH86SjNPy3MnYZvvhmWNLO4tuST6WUi+u6B4gsKjc5OPGfWhqgNPsCgAaJVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754188795; c=relaxed/simple;
	bh=M0pzs1ecqQ39Rnvgn4vksQQlVZYYPSOwUVoV96iGSzI=;
	h=To:Subject:From:Message-Id:Date; b=C1k+Knl+DDhHmAChToFzzF10Scfr7qz+2AImL/437DjhmalgOrSsuBu8np7uBsBDc7XWFd/hA5N3niMAePJSUliwI/yymlUsAjs+E0izF9iG0K/dJ4P6JViRCBH9CMXwj9r6J59ts8BhlG9zNq0Vj5CMyf42g1Pg87euezi2vP4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JngAnqA3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JngAnqA3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4EAFC4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754188793;
	bh=M0pzs1ecqQ39Rnvgn4vksQQlVZYYPSOwUVoV96iGSzI=;
	h=To:Subject:From:Date:From;
	b=JngAnqA3dTGUcVYrKwg2hd6tphi63wCf5aP6OKauo7hzrBgNxwHPTJHQC/1LvhaPV
	 K4ft76enFKUJkzv7JnNGR28JExnJY1e7afFYAogBqAmXin0rSoytmUprIml+wj42mM
	 jYYLLGUWQLDuuWyCNIgzpxQ3eHg4k2VZue40V5FTvsgC0IWcXHipgE4JIj+v4r3aAg
	 8nlnjiPFWQ1+o6f2aTKijOYLMpA1o04NA4jG/iDrlV3BZk4RF29bB3OwEOFwhjfmNX
	 JY6K2y6ExKGonVGfUyfm2BM7+19fNeSyxMP/toLaKCT03IoieV7thHv5Kc42jFPM71
	 WXtBroMYRbw4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92370C87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175418879357.15453.2683369577136832498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 825e2e6397c75f6cca1ac43a4a68e79b42c75eea6722b0403f92d0f43b0b20c6
Date: Sun, 03 Aug 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754188793
