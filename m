Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 82D973FCB3A
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792411234; cv=none; b=mUNr2DkxalVTBmCB8emb5wl/SlQ5f8Jwj7sw4vmgWXTa3ersRSG7eTfrm6tSSJHfy9i84u67OVBdxT7MNU8ve1NEO62d4q/ve2krvQqXqJHUQbLfS/Kw91lszjwKZSP0eBojRHAZ+jwaFDwrMUchZK0BhcljspTg4W43+Z8+yZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792411234; c=relaxed/simple;
	bh=Il62RW0s+Py61846HMQjLGaJknsgFL3igdKU8oJKr9o=;
	h=To:Subject:From:Message-Id:Date; b=S+c60o/NnowLYFBV/SL+r2fx5S2TA2Qy1U6Nx/AD5rZx0E2yp0JlE48PSQ3StbBmmeGtj44saamHfSO4pNo3gbQVzVW8SpSYGd6KfrHQwxF+Zr98/R0TrHcfUjkgdNGIccw/ByGJ4psPT14/d07789HpPTJP1+rE9HF6SnR0V4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o155+eT0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o155+eT0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 1549AC2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:00:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792411234;
	bh=Il62RW0s+Py61846HMQjLGaJknsgFL3igdKU8oJKr9o=;
	h=To:Subject:From:Date:From;
	b=o155+eT0mY4HtOR5nyh1XQSM5nu7huzaanRSwnVA4WW2XkEzdKlLOZNito5tK5wYL
	 9ycDmpjXWzQfRSuLCbFJrN41PBRTgN0e6Dl+0kNrlmTjeeaeQzrKepbdPgFNfPwtwR
	 6xMTLvN/ji2B+XdvsHEgRMA/HEPViNuf/JyAGPYxr9VU2JXAOhsLGUg5Bnd4IvbrpM
	 UVA5KyM5KPBXjwkYHJsWmkoNJU2pDW1v1hVGKVfSIvYJrMZfupde6wp26btdzTUAxp
	 HpFDCBAg0aALK/vegtw0xAhnthuhC0cT1UOrFhdEsT2im1VW3geRyNC/51+E7vFBqw
	 V/wQwasWjVlMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCC52CCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241123382.32225.10555693123610304697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5961bab4c4256fcd2b524d36f661c542af8ea0d5addff118e5312a99b17d94c0
Date: Mon, 19 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792411233
