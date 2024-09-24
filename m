Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D471DDAB
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727142954; cv=none; b=ca0bflh+4tslCK7g3TzYPbZsbf/8TwJqx32jmYbskeDWfUiMMFWU4pSaLswVZ3JaRMC8v8XDjZhX+UJpNDpnCNbiZacf99Wplu9+2nbeUyVyGefn06MWD10eRK7aA003m6mi7GkkA4udttCOlqQ5bk9nFm6ABrLO0DcjORqrUHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727142954; c=relaxed/simple;
	bh=AvjA17hwpN8KXPtALhlXkozGtvfzo4rXz4zCjeK74VU=;
	h=To:Subject:From:Message-Id:Date; b=MwLTcCZtjwo+TD8mOKXd2IhlNovkAaVJnhyPcRfgDLlb/XCzhqUIR1xSulUKQyavWCGYFW8DMpdqbwp0Ig68k3KskTBjQNEeiWf5l5LY2TuihKFNE1scXNjw/dYkYpnRMmiqrTohTkIxdcVhvpHhhVddao2Z9265T11xEiY2ZAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckB/mB9G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckB/mB9G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A881CC4CECD
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727142953;
	bh=AvjA17hwpN8KXPtALhlXkozGtvfzo4rXz4zCjeK74VU=;
	h=To:Subject:From:Date:From;
	b=ckB/mB9GPe3z9ult+q8VHnT3Hb3M5U+FQfvFbS/fEFMVfsqsz1TPcSlGGiLrc3etW
	 wP/VuGzCz5udutXihmb/A9slwgKGr9AZOE8rTliNHhPbCCdZ6ikpjPSTxtYqNFXMgK
	 WTpXsVhIV8ujbzRbXgn/Q+aOagDwho/RtmmL2fTahL7Fe95kz6poGyI2EhYHaAB1xc
	 QljzLp9BpcbncvwxBCeUBVTJioDd4bzsT5vD+j/gkZIYtDchvhOYGCZe/9y8GAI4J9
	 SABZAe7HA/blCWMZI0Q9CCt/71iMkMFjn4t50qMg3+G7VxCnKozsjAVYSKwBDim1JB
	 V1yeSYQDGZPHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C9DCF9C5B
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172714295358.29169.7767248357803812.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74bcce5de95700780825885ddb6d1a5cc53668ab5012979d3c35fe130843b14a
Date: Tue, 24 Sep 2024 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727142953
