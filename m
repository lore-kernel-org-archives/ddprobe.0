Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B1817996
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755551994; cv=none; b=FZLTrIk/rWg6Mlrstpr/pnSYHr9x78G1/UyThibJ7ohiH914wWp2Q/Q9K7fG88+TONqCXp/v+GioGoXHDmTOpzmFEs+AEnrSuaTE3CIwxHiRtVlIrgvzy1wyocEF8F4NPe9A/kCFONzTiVsit05DRtnuTcQL4VPlw1jOt2JSCU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755551994; c=relaxed/simple;
	bh=d+l/GxLcTWfd29SkgXC0JqZ+/0VYiita7KoQfRxZ9xw=;
	h=To:Subject:From:Message-Id:Date; b=ZO/tA/w+sBRvLiyWp2B2TEe/zJxg2zChRHu7a9U7YTipmgS17ziZ0IOojlBX9+67fYyaoLb0xFSiy0P7GuR2dsMwQzH1NYL8X0tPt7ON7B6EEHxW7l0jagWX/g9oyC9lLR2M9A9JhuBMz8QJG4e0TESfcWkgLD4CJzFm4az0WJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVe7ta4p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVe7ta4p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16D6C4CEEB
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755551993;
	bh=d+l/GxLcTWfd29SkgXC0JqZ+/0VYiita7KoQfRxZ9xw=;
	h=To:Subject:From:Date:From;
	b=OVe7ta4p/uocXWUq6n6ynsZgy4kYNydm+riE7fxNnuHS8vQ4peYRq4CiuXHs0urDA
	 sb3WGXJlDP1USQNFs2tJ4cgDwecDFv7QTeQMk+Pvag5Tq6HKsQxQO9nPW4yfZIv/3x
	 X/LyGLZCRHCXvKeGX3DR04mBEam9IzRM1GPUpDlhp+Gq+dHRNX5xI+epPKIL4BW9on
	 pNzz9GURgpeDhInZi4XjXTmiyKR86in8uo62Mwcjik2TKWwde4g3B1gjX1knePM7/n
	 m+pwPhUn71K6V3GlKg7SBGp21zmGtlMyb/TVkdAs2PWcBs68Mshq5I2pIo+ynMiBX2
	 sLwOmW5BOAMGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD15CA0ED1
	for <ddprobe@lists.linux.dev>; Mon, 18 Aug 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175555199358.7877.16563327902300754095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac93f5c58a472e21b8ce9d1de97669ea14b1001f381b92c3da03c8795bfc43c7
Date: Mon, 18 Aug 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755551993
