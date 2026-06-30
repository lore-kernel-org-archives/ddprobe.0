Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C28929B8D3
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782782314; cv=none; b=evOOTOWp5xAY5WSKzaQK5MXaxWibWvGCtR6SmH5BYUNcr4O23DdhuzqLIA/W0tIjrmLBLTguBLRYso2d8QvtupBrWhgQ1F2uacVX4rbtBPjoFIvEaIT0Sa3XQ2wf6xB4rTR0ao0ukB/ALHvi9VSpw2oepBJBQcOk3tHEYfmLYyg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782782314; c=relaxed/simple;
	bh=V26KfWsyjjodZrZdCufGih2Ka/G5KV6uTYr5kPwnKZk=;
	h=To:Subject:From:Message-Id:Date; b=ATWsE1ApgHMt8a4KlNMc154tgFmDEBypZLkcM8atFQlKkeYG2ClaQ2K+d4oj0T96QpIHFFbDUy2tb/R//dL+U4WdNdDVgNocxy4/kG0gWttSm2fOASjUB8X5p1C43/VXeyUXgLlttsP8AHNf0aC1O1Ed4mEtkif48WvPXEvu9O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tdn/p3oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tdn/p3oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C28F8C19425
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782782313;
	bh=V26KfWsyjjodZrZdCufGih2Ka/G5KV6uTYr5kPwnKZk=;
	h=To:Subject:From:Date:From;
	b=tdn/p3ooEOvHICQssgOR6cnIdrngHYj+Jakf25OcJnaE7sMy/jfxAc3p1HyNmF1Uz
	 qmKIVWFzv0A5W4DNSFXNTykPFFJd3aAANBRMy7Agk6Kxk2XSDPIt/96KD3MrL6WDR6
	 zJX8EMjuFSKgRqqjK3BeRzjCus5Txy/76QkQyNIykT7iCtLtT78ssqF9YXbpSRWDIq
	 RLZ6MAnC07IsGxZTd4dl5gkdtCz3aRSDfex52B3FoSb9THNJyo+TO4IoAw14Or6697
	 TArX4VNV4lIYGV+W/w54KEZIOFp1CrBPbi4BkIeFGigpsu+m9chFYvXdi9YzSHkru5
	 OXmfxlNR4PKpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA237C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 01:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178278231368.21760.16071172868160247346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918947534052dbc12a9736fe638e237ec61ac07227c9d7fceaea233cc491b14e
Date: Tue, 30 Jun 2026 01:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782782313
