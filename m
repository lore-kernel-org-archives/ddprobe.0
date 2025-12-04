Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08EF42DF701
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764880374; cv=none; b=TVWcbPfECw989bv9joOQsN1DXpx/NUx6iwB8KuLHl3obif1t2X3WGRU4uYcz3Ce5NFmWT7D3qTSbFZcgR6mmQe8eLrJmhrTIPj1UDwFR7yOodp5PiqEr5mPZQ6V5MMJHa3H3tJaoODXzN4EXDH4MzJZV1MpR6GzVzSbUfQYtFmw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764880374; c=relaxed/simple;
	bh=mk1nDukY0+/t8V4EKb0YTC2KDQSV6b1gC/HfZWFsLK0=;
	h=To:Subject:From:Message-Id:Date; b=ChILf6U14RtvqZ8h8h64M+qI2lu3yRgwF8MUSZxQU2DlAGcRlsyvDpJnuFYLwVoXdxE9keD3hxxIe40QOYlz8l1xiucJ1pFDA2WNyS2arhlFwZdiAEPEHVknEKRovOUd4GpzgSm2VB5acUuCT0CZyKKql2mP9W8OaZ5Pw7iJ/gg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jxEKp0R7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jxEKp0R7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3151C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764880373;
	bh=mk1nDukY0+/t8V4EKb0YTC2KDQSV6b1gC/HfZWFsLK0=;
	h=To:Subject:From:Date:From;
	b=jxEKp0R76n7oeH4IgT2vSoQoPWKynL3rupflkIl6uIUoRb/T5wiRtUI1J1HUFlHDB
	 R/MBPCwrzuSBT3Rj5RVACbWUY1beSBVeSdjorScQqs7Y6/5EFgwBtZsBONqVeLH1XB
	 zZuPS+uRTYUk0nbw+WpjLkivB/CcTXL35takCeUFWtzjXtLRxh1DVx7Se/MDITLDz5
	 87gXJb+hsHLx07K4+sGqgyn3qiowShApkF8dpqx3aYTRDwdKtiJAcvFbET4Wooi9KZ
	 buWy0mQhdRvWuMb7joWJFCEtX3MlZ5Ks9GlvbxUBpjHxMHDiECxM1d3Kixps9mDb7t
	 XZiHQ+sihybug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9177BD2A537
	for <ddprobe@lists.linux.dev>; Thu,  4 Dec 2025 20:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176488037358.9346.473254107303127521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cd50ff8ae05a5009f662d9d2ff3700ceca13939a11dcbe7d09ac14b4d821adb
Date: Thu, 04 Dec 2025 20:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764880373
