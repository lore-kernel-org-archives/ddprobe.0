Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C89C32E8893
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752586193; cv=none; b=HqDsYJ4lirM5JqTe/AHBlacjKh7go5WUL+vdBq8C8Xe/xXjWGThaZjD9fYLUw6KrkrDqnaTcyKMID3RI+Ihyxne1tvG+H3AxE4xUaGjlBOwGk3tYKD5eoRtmDxPeSGub+ry1oXWwBBiJBztTRrvLv3dUCNOjHbvOgMxpwvMg8Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752586193; c=relaxed/simple;
	bh=d1OlXZRpW9Le3x+Y6lTfwSitmBkVlKL0b9MQUApC2xs=;
	h=To:Subject:From:Message-Id:Date; b=RgoEMAdIcBwQo7372GWfSB6FTbvmTlaRDUwlOsSrpvjCMs146U39UmGmk3OvOnzQhCz8J15LChIseJoBeYGNbYkt+P2lS0AosgSIl75S7wAxMVTV4cwuO4fPRMb/IFKIjmMrujBfOKrvSdkDHvUJpCMAnnlpMJzwJhFaJpRt1pY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b69WQ7VG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b69WQ7VG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B86C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752586193;
	bh=d1OlXZRpW9Le3x+Y6lTfwSitmBkVlKL0b9MQUApC2xs=;
	h=To:Subject:From:Date:From;
	b=b69WQ7VG0oU2UBO7pWlRVQZ5Hw9HcD87H2gse/aGjTvhGQSbyF2DLsazMKcAesbOx
	 gr1u1R6UMmK81hQvQxFWjofwOXQYCX1XR20wfUEra8pH1yTkKJR4ofKPDRm/XYxxwU
	 cG7EX1LjyCd/QepAFLR/6gzQ5jALEXrimwESfmD58aG9xSDIdDes2zEKPWRZClF3MJ
	 QlKuUw2ilm7zdKkBPRTefATVrYgfV+9coftEUD9LGp7+R/ARCDVxcoCDNvidll8iEk
	 ac/6yb+qmLmV7zeqFBe2wLajkP2zNoLbpyVByjsUpg4h1UCr3mMqy0VY6m9EikbaXS
	 ICvhxTrxNncYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9577DC83F21
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175258619360.5240.14387362225082225884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1dab13e2a1b3ad6c03bac307892da55e4dee17f932bf96002226fafc8569a64c
Date: Tue, 15 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752586193
