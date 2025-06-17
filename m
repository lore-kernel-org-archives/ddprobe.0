Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 295F2EACD
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750132794; cv=none; b=smRn0G49WBRyhxbGPdGagUPNDMH78PRs/Ua+ua8FFdCbSpgJmnymDmOCWwOn3aEENqtc12SyLYiwkmGnF0NR+EIKVOWo7QPvWaLwYT1bMNKmQ/5DV/h+xWVuYZwt4vc+ndf+MeMwmb0GaeCc+wn8ppCPBWlhSc993lyuOu/r4B8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750132794; c=relaxed/simple;
	bh=N/++F4oe4jJuZo555zzxQDuRBPtsGptsjStrqdlh1hU=;
	h=To:Subject:From:Message-Id:Date; b=nvDKoEs2x5t5Vb1QflChZuJ5WxhsEHXKjBGVp9KA5Shin/kYoh3PcfPZ5eX5s0e7fQBvFME/TO5LnPjFcQbekqGQx39NWkiUlxGk6q3UxVn+WDPguiHASny+AN+kzJydRuqIkh4KEyAjvx4wLXodMp1ExdJEXV2EstS1lEexfb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOL++XxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOL++XxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8624C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750132793;
	bh=N/++F4oe4jJuZo555zzxQDuRBPtsGptsjStrqdlh1hU=;
	h=To:Subject:From:Date:From;
	b=JOL++XxZvoWHWkqUrKyJTbo/L8+V/8MZwhO5fYvn03a9aQUOQnuQsgtIE9iY/cYKU
	 OUk72buc5WQaNycMK2O1LZb+H++n/dMZWPeZj2GIyd2fsK23Qku3z43TLEIvSegPb2
	 A8ZeYLcPQMsvyDayBNaLZaYxWiERTLrpoS1mSOpE4jzE6pAFOIIxoB97Ux47mLLmVj
	 kcgk5ldcbvcrcRVhB6Q0Wpg8XkHGHO3BnAZ6H2l9tquSe08AE0xMuROyu0V0G4e/om
	 GDr8b2g+uRd4WuJs/lKcY/9l/GHABRwG0ukCvLyfH230M52N4B2VNza2r0CwJ7p9xL
	 rx2zmCF5nkpaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924F0C7114A
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175013279357.24639.18146352219801108462.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 585ece8e4aa6aef3ba352c5286403c5e93d7c6ee74d74e1b645ceaa31c4b3f82
Date: Tue, 17 Jun 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750132793
