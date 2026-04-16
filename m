Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC0740DFCF
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776303454; cv=none; b=cUUignWXbjUzlj1H796FMCS38IJkHylnuwwmbLXmeFlkZ1DDxSx1VDWb4xOUUdDRE2sUdv3nxSK388bKkxZ/s7j5VUkRZ66rHd8W7FhpyKzltj4VkWHzC/fXaUrBgVNxnuGRBMWeOiGAy6acyX3laYt1eJJF9Kd7EQ3Ap8qgG9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776303454; c=relaxed/simple;
	bh=zuOVtkL010Gv56lE4BAdnwLjhqYlSa5LwmfCGeLu0tc=;
	h=To:Subject:From:Message-Id:Date; b=tUkT5AIiqPhCdtPLuCT8F052TWasZF6QFSyGjwbaY6gFRb7BkeLdDqbRpvuUQaWwj7wst9SLHS7VrkKEkx6Cfjth3KFfrSIWh2pffhhFYkHlbXliUpZBMuDg/bsYL7lGaZPw1E7mv58yvA6LvAtGeXtZRLUApnNckmyCOJmXu0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Klm4Ff8M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Klm4Ff8M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA85AC2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776303453;
	bh=zuOVtkL010Gv56lE4BAdnwLjhqYlSa5LwmfCGeLu0tc=;
	h=To:Subject:From:Date:From;
	b=Klm4Ff8MoJhtTTxaDumMOjGd5rflhu0sAbwR6FsaOSgw62n0gWtdHM+cnLr03VBmo
	 ul87vNPctRy8RbNU/KPmiQbiA+tqTAbbQo3ZhsySQCDbARk3bccfIrPppXIBFcscfw
	 BQMjkCcDEWushlDnkR3lRM6BOtiZqBKrXFproLDN2x5Ms8yndv84K+1jMhbcIScEYZ
	 f0ivrEp6NVRyPIR+45F+G0HslBNfEO1fX+Qcsm0hDnPhyL/alFXHbMFwEbwDwZMUI1
	 SqD+Gb10q1+92hiSvd2doZed0JgcCI0YupZ5ddQzk/t3JkdkKqqlDjvMEgP6ryjIja
	 lW3nniYttX/tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA917F433D0
	for <ddprobe@lists.linux.dev>; Thu, 16 Apr 2026 01:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177630345368.18973.13999813659933692158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86be6a7fd6999df5b3d268eb725db0f3f3272703e08bcd780907072a9a1ce926
Date: Thu, 16 Apr 2026 01:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776303453
