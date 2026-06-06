Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46E0F31A567
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780742674; cv=none; b=T/qvKZLaJdxbhv1T/mZbmhDkpuQdoslCyvJMcysj9TzRwX2N59g+wfdYUAbfT55YBQaPvPeqdX93c2oOBJlnmzSGTs8AgBBlW3v3MJmFUTvWT6F72zWJZS0trljHEO9lluvWZ2P0wr9bI8JIZ/eE+w1LdKEnHYF8ZVw9W+Uz4YI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780742674; c=relaxed/simple;
	bh=Cv79LUBa+Q/e0CLubaphD8eFk2OxRHcz9qmIB2L4QO4=;
	h=To:Subject:From:Message-Id:Date; b=qBV7tbjObWzdIvFSoylTSrYge7cMgVNBqHIT/Lywcglsp1Gsxlhr6FprqjS0iNhqA5gVYaNNktR7PyfeEXTkySY5N3sxZM5Nia5+gT02Wsriyqmm0CIP0A3c8hoEWWLCN1niebYeDT3T7bIrz0ohSqd6Z1KoqKc0wnLuaVc/A8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jBEoSb0D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jBEoSb0D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CADB2C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780742673;
	bh=Cv79LUBa+Q/e0CLubaphD8eFk2OxRHcz9qmIB2L4QO4=;
	h=To:Subject:From:Date:From;
	b=jBEoSb0DaTKEG2F+mLJs+7iCWQm81DqkAuHJdQGpY4C2Krvcu+sDmKfjlxtZh/QWJ
	 xVyfEgQ7cXOLw2pMwa4reozVduMQhGd4sGh+O8MoyMdYCBFf+mQJCbe+gFbhRIzIpv
	 5DiPqH/gO4NDNLxUsWuoYJ6UVoAamPH7izYNuvwWZQqmj2aE6i9JILCOC97aSdN1gF
	 M2sRMEwx5CEbITsOob1dyQnsvO7jJtLZ7LwA47hICQlzCDYKsNA3YhzNvKDz5SRV5s
	 vrlEUbq2gUKEfbrfil2zgdIEpLNslMD1Eh8OeRQh4QETBOkdh+2TcgKlg9nG5sHR9m
	 SX0FL/vLzXGVQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0933CD8C8E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 10:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074267368.5252.14538925177210207776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d77373cfa6c49b4749850d456e4ebd204478fd8a3d2812ca3173229bb3a9db3
Date: Sat, 06 Jun 2026 10:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780742673
