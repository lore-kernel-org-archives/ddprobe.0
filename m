Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3911DF75A
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769371434; cv=none; b=jdzEKP8CfVL6QuzJjrYtQzeqqzRMcExL0G7D5I7QRO3Gg1ZwNyfoJVEoeIJyBRlEUASU9RKKtV5V0+DRsbl94ViOl4pozfjDivzT4SS1jqmpWX38i4iZ6Ucatyu50YcbmQWWVQaLrxZDO8IYaM1MQfwXRIEqW653nJ2W68RPirE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769371434; c=relaxed/simple;
	bh=52Kh2ig3GrKbCbZmRAt6gOOFUyQWlxYDgWCCELdiP7M=;
	h=To:Subject:From:Message-Id:Date; b=A/677kCOWoc4mX7sNg5LtoR6af0pkUoitdBoQ45QQD21wbSJIdYkTuZlYwJYv/zhVy8ZVDoZ1JV/COhwIOJaiDdaZRvDNGT1WL0n1eBM1jEBqCapQ92stXyckDxuA+uLRkemNVSvHixYbfGW+rzCyhs4rip+ZWkBAejkuwKK/m4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tbSVBb2M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tbSVBb2M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9912C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769371433;
	bh=52Kh2ig3GrKbCbZmRAt6gOOFUyQWlxYDgWCCELdiP7M=;
	h=To:Subject:From:Date:From;
	b=tbSVBb2Mppedr8/bBWxFvTTvqOxNafjJL1TUrf6/XRTxSFWgXNH5adPvKptI84Kx8
	 oMJ/BFO1RLG2n308/ATvOANrQGlBMwcxBmSRzNEgRvn+NwzIsNpOasHhjkMPuzw/QE
	 Wsm6y9lmW4p+P1uOZy+Lc5JAhoYEq/YdCYe5TrNMrKcAWtfYZydBQaQ4SIB2Bd2jvW
	 zDaNQQGQduBatSQ01z8ygxlTtX2fdFBvhg0tQGePPZkCmBR4gK36Y/Xh1mgaSIDSjA
	 ktrqyFVCq+pw+XD3iEV1d/p/E6OAcQuxmf+Wlkr+WQhwCCKCTljpOodR45izMAv/4c
	 uogTtBYDiT4kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9584FE63CA4
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 20:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176937143357.13781.4685539003469170299.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e077897042fbae4ac65b66618c58cae0d433f1677f29b3a51e2375bb9703e2ba
Date: Sun, 25 Jan 2026 20:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769371433
