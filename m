Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6247618732F
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715116943; cv=none; b=A4r5QrVY1VEXPOmX6KSg4glJrzGUymXzon67UMiaSuvBE7nF2HBwf02NkesdsZ1MNoxW36Zmfs3u89MLMoCb45XgQADRoj/98qqeaCNs+tcKE77qIfVYFmpi02sQ2dgUhn+pHu+/V6tpGFcbh5mbbz0M2jtyGlyGnrrgzRcR5BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715116943; c=relaxed/simple;
	bh=FRwxI0lvtmm1NEXX98qWj/v54YoUlEqi4EC0wc1Dqqo=;
	h=To:Subject:From:Message-Id:Date; b=ENeeiuld5OfeuTQ0d7dimLMSaETnP4EhoxPFDrWLZTy1YqnFXwZ+3N8Y/vvER42UjDywJAWVifMRwenncUbIPdeszDt/kT9uFrRJOiJfFYA/gBq2OOt8MSkPNp5ol7phBLREFFG4I8Lz6BySU7VL7ZOfQa/W1ePwUU/jirvb5hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZZv2q5Nz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZZv2q5Nz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B1AC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:22:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715116942;
	bh=FRwxI0lvtmm1NEXX98qWj/v54YoUlEqi4EC0wc1Dqqo=;
	h=To:Subject:From:Date:From;
	b=ZZv2q5Nzb9JnRi+fHYcmLRK5PzGNnH5uyYNyfE1D8YzKL9jLp04WtDk26mBHsmeb4
	 u9/wfuUNcAZimK6fRsnNCLdjoewO7lhLyIptTkzqUe/b31v0Wy8BKr7ZUuDUNN9SJx
	 atcgQ34dRYtt3rapWFpbQle/z71c1zVuSycBgIEMAUyyBElfWomfxa8C4Kj2fjG7pi
	 oDvHCUChUIpjL9vfRZ/kuPNMZe3lMH7WxaFc5l1rFTko/RnEJA4qfDXkgSObYokw8X
	 QqMNTVGhvxg0UB98i7juVVxIFm9PLY5875YU+ETJy2KacMJpjfTPZp9pGR47wm6RDN
	 6b0v+8GDRnw/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD933C10F1A
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 21:22:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171511694279.10482.3616543226642152444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12b468b18d7fc966daeb484750791c31c82c73ff7bfe7b936fe58f542b39f93b
Date: Tue, 07 May 2024 21:22:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715116942
