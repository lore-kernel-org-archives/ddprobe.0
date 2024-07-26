Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 345AF13CA99
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721983554; cv=none; b=i90Uxu0CP4aSphc3Z7M1BrEWgXLtgGLO6p83n/g8C2/m5x1ugWqRczO7FHmcNyTQnsCth5o47k4vlR/S1WzQ+zV3XF/ozqfCzh5m6uazMsX22zlj30yqfq1Hl5090K9QrLWVofElkoEO6ErNuJBW1rAw2JpesFtSnImFiTYTZVo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721983554; c=relaxed/simple;
	bh=I8Rd/ut+fbqa4lykIfublETKAybfp8mjxJr3C9QrHF8=;
	h=To:Subject:From:Message-Id:Date; b=k+bTS7DkxEkTH0K4vtiQu1P57HO/BkR2eSrJcaI+O/Sj6pGAfNdN19Tjz8AcRtYmcdZLPfQuOql3EIGOAjpDVXhDrPnxrNC7HgfQ7OgmUG5QF/gnasq75/ecb+4vSBwU9jy73ub7o9iKvdWbfhV9AeCUQh5rCFPUVhYF4wwdxQo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sgXH9lmx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sgXH9lmx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA838C32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721983553;
	bh=I8Rd/ut+fbqa4lykIfublETKAybfp8mjxJr3C9QrHF8=;
	h=To:Subject:From:Date:From;
	b=sgXH9lmxK45lszHiBpkXLTNYve1OLopCqd5yzAGyj1VWnM3v4J4oVM0du2Kbh30YE
	 x7lRh9ye/VjX7o0H64A0JSv8eAoqiOoA7iotryHGe9PNqGEWWLGV5GwLifaRdaqBPo
	 /A3zaJbfN8LDDBp+H/952ARIUDS9lMMS04x0YSCEuHdqQB1YS9kD2FosUWazNntUo9
	 W7Zwzl4s1btnUFg0CBdt3OO25mSvMrEsVoUV9U1tVxZMIMFw/ObIJUkc84/BfpJ5/N
	 EOkhdWu3R+eGApgXYrdagN9MSkaKohaoIiCLK+4NlpfGNgHKsHVBs6RvFIZZn4Zdte
	 sDBmgbIif05tw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E72C3DA7F
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 08:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172198355360.17225.6868695814317631473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d47796d5c373ceacab8fbe98bef2a051af43d56eceff0bc119e3225ce411903
Date: Fri, 26 Jul 2024 08:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721983553
