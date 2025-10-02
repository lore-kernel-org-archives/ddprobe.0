Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC122EA48F
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759394394; cv=none; b=fWjGU4MLWikHLHLLsdsvVt/fGS+F/anP7w05o/KRAxLwlGaPnaE0SJTLwq2+a27/NX7T1NOf0fMaOIR2RqW8tjXA0I7BWMqVyMLJec2hLnA4CAe0fcAeyvVYLiui32t922f9xPyBGDCAzenZmBGbewEIv13/p849wyZIu2Z5ghU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759394394; c=relaxed/simple;
	bh=xZ2a5xAoz4DUrTGTywv1a/KBlS0OD0rrSCLHmzFEqg0=;
	h=To:Subject:From:Message-Id:Date; b=t85+WZojukzsP1d51GNw7oVBr97OyF6ICGVpc+JZNZDsKBxZfTZtgsX6SyKS8mbi3GPI4b3PaKGVU5OwFGKx9AWBzUlbDfDxY7DLJss6e76GK48HYahpvgWzkIK/DGU1q9Qs4oncinHez2Clu43FjKTrle1gtesn7cRvQBmhKHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeGx796Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeGx796Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0357C4CEF4
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759394393;
	bh=xZ2a5xAoz4DUrTGTywv1a/KBlS0OD0rrSCLHmzFEqg0=;
	h=To:Subject:From:Date:From;
	b=ZeGx796Z0H5VQo8xuh7QwM/RvQuShKUPWTrVawJerZ9uRIncq/4KnfDRsEUVzBzD+
	 d+G56rsbPE91PuG0JimOWMfPMLeQ4aKK3CbPf0vISOS/hDSbtihnhuNBWnuVWCZJTc
	 2bIWjxgDqP6JbEvTAaBYobKm3og26b6pZ0f4OXankk67H+45ngclMVMx2V3nl8HZdh
	 g/oaIbk9vl4qlEyLcnaaqVdfGt3U+VJY6ifxiJ7/2LNMTJ4Wkvrr1c1kL8n72SaIEN
	 KoZYhR2yPzraJRkxfipBaTCQb40d7Yx6RoRdoWuxK/D4pLip55WaTRyPxAzFZOfo1L
	 71V8/zpW7zGag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9132ACAC5B0
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175939439358.9515.15393985047891084989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 935bdb63d82b7cee26b42b7031db05884802fff2029ed066b9d1d09441719186
Date: Thu, 02 Oct 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759394393
