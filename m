Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63EEA1A270
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717786043; cv=none; b=X47LjrAujWDRFEJwDhHEXZvRvvUg4GObypU3zXj5igrlR+uri+JjAJ4ByGciaeWjbfrRv8X1ODQKGCsjo4DNBXU0+3YncFlYoaTqRomXqEo5xX9yAcw1dyTmNPSxUDHsVLgLl7Efz2XCZwzFPtXxMw04JG/An3g9+1LLKiLQZ5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717786043; c=relaxed/simple;
	bh=VufIgmFSaivnCw/KT6Fmx2PmBmcVMLAIHajOQKik1j8=;
	h=To:Subject:From:Message-Id:Date; b=j6cm8Q1N3jZM+9dVA804irDd6MouS3+rcvKF1287clZ5il7rdVsNh5UjaCzeyFNq+q4Imujn7CH/RUZ+dBYL2DIDAGfQIHwvJsWAIgTFFWq0vm12cqwMPvGRdcxb5Y5HJXKkOG3+jrh01a89uHdUCdF2G7RE2whwp+hUHQWDVic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k0qsB/wr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k0qsB/wr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9D31C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717786042;
	bh=VufIgmFSaivnCw/KT6Fmx2PmBmcVMLAIHajOQKik1j8=;
	h=To:Subject:From:Date:From;
	b=k0qsB/wr4ZiFLGDjY18byj8HBGlm71nbqoKV74ukfVhxh4HDcthcLM/KKyLB21eAi
	 J1yQpUORNw72Ys/nJ5Kf/JC9J7EoM5cD2u+dx1nMJ5bedxvIrmQmkdsM3is1onjEEi
	 J/1Ns86ntw15CtH4TGTKdus368u6NaEG52ft/bLidWns2mMtQf0EWRvaaUsFFICZuu
	 tT9aNSCegFce5j/iPh6trjbewwgoPSNz+7Uggy/F7l33IRedH49mQMtrZoCgFUBbxH
	 6db2Un7unNHNCAjnQlhmKRUgGV3NXP0x9HmhQEQ2IFjrnDMZKsi3U4Q/5rpgwYbXhY
	 6oPIyw7tgtKfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE0A7C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 18:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171778604276.25415.9494046122623296294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2164b0b0f0ef5ade10eaef163a9d53c92ae9dc0bb4e9ecf6f4920385745ee9
Date: Fri, 07 Jun 2024 18:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717786042
