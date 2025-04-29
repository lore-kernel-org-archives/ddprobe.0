Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265BF13A3F7
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745968195; cv=none; b=cOwjjf11ZkQkmPSiHrBS3NgfR/JVzqN7MWsbiZQ/Y/FVLP/7HVfSStXatT7JI9f0mjhRGKisdMOAajJD6mIo8HnsH1tjporUmuNZiKU2d4mBTg2ZOkHn+zSCTrBcqKk/y6/9/kCBawd9FFYajrFvy/2XInUpSBLIQWIqTGX4QDQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745968195; c=relaxed/simple;
	bh=baOQaPRwmoPgbpaJqVmQYGK2wjOP78N9hLNjZUxMXyw=;
	h=To:Subject:From:Message-Id:Date; b=PBtL5JULZ3gdktTIsMWDrzn0K5Wgbr/LmgMWoq63imIxKejnC3OiU9hXESlx9/WrBDxs6+QbOuisnFBVfLSgnwAAIGcRvHXc3hX3+qMkDu7vaT43mL3IJNTYmvNZmUORceavqXoHy4mnigDKzcqguW3nViUScVAW/9ed6vUq28Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q7muyHwX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q7muyHwX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E0DC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745968193;
	bh=baOQaPRwmoPgbpaJqVmQYGK2wjOP78N9hLNjZUxMXyw=;
	h=To:Subject:From:Date:From;
	b=Q7muyHwXBDs71y9K7LM9OMYml1PJAng4Jpor7ubFI/KB3G/5tqDJ2m9CYxCa7Xwqz
	 nRHR8aMzL37vAfzTHrzqQo2mvpQgiIeaUHl/9AOnOTy1pXWcmE5ht5zudCHxla3WH3
	 EWviMSAi58qc8vfDkJbN0iYSLy1P94xPkR7WsThH2+1x4bZwAX/9pABDNBwn/EsLzX
	 rJNf4zPfexWcstjxG4RcDpPxuTLYqfdzKDClsiAUs/Ayyg6dDIlcgD6oZarDKRRcNQ
	 4LkXSlV7m5CPnWWLH/Z/xMjuQ84g8TiU2pUG3W6UzmMoSTlJtp7dzj77PJDLloHSkl
	 f/Jl6sfg5vmqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20CC369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174596819357.26200.15419747883880938370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40dc850d175de8741b9f13babe8fe5c90ea2e4ef1064997ffea9e0b5367b530f
Date: Tue, 29 Apr 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745968193
