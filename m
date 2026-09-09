Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DB004B4887
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788948634; cv=none; b=MsBtBL50xZM0qVwntQglpPV2LNCT5VoQuKHuYVe0BizR7B3kzmVpcMobVr89P8l5m+m+LcEFOH3Y3QMZDHVYu93juELv+ssVv1lVYTaAXIy8/+zZdbWBoSr4/v1zHPiGCRZEPt9m6Mvzbn3MNfnNhGNiIOQOFA26ykCVy2/Rsp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788948634; c=relaxed/simple;
	bh=XIFE1I5XM9T/w2+7mOLySSX27dzPeTXJCu8YmqmcTts=;
	h=To:Subject:From:Message-Id:Date; b=Zk3XA79vgSjadB+yOPrvSPUVIJDhBPTf/aHKvALfP1+jaCEbKaZdae4u8HyaRnjweQX9/DXghaZnbKle/ftNwD6Z4d7AyC2aZAwTXP44RrQEDF6cA1XZgHHSB2aUKg6UGjvwBGlWFxkdm6AM9jUH5kxr4QjRTg2JSG20OXKP5wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bSNFObFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bSNFObFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB953C2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788948633;
	bh=XIFE1I5XM9T/w2+7mOLySSX27dzPeTXJCu8YmqmcTts=;
	h=To:Subject:From:Date:From;
	b=bSNFObFyy6Ckdxk2Hg7bwN1r03pkMlmpVOhgI/MyL1PPn3YW+4HPWs47tt7380EVl
	 3mQeS+y3jvgeBqzUA3+yiUuPvJmysmUO1ox2TLY+9WWSKLPWWRBYQsH0r3DBtb69hZ
	 5PRG/BrD28ZTs92sscLBAM7ZhvGE/NI9VUgzy508PQ1qlWPKj0JmhpP4f2ALeWD63W
	 eMxodG3FbtdgvxxfdXm+m5dTUvPEgMzaD5sXW4xzfgWkDIffie/I+Xy9l07QGex+nQ
	 qF8kBDqPgduBxFTmyEkQOhNSe7Kj6WeMKDgc70UM5qe09q3Y47QgyXIeN5rhBWKeHX
	 FQW0tu9aqmsOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0ACCC79F8C
	for <ddprobe@lists.linux.dev>; Wed,  9 Sep 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178894863371.28471.4466575785053302800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9305afb50bc4d4b487e198374d42ff7fb602edf0d905e8a1f402f43d871af33
Date: Wed, 09 Sep 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788948633
