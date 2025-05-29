Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4439F21C9F6
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748510994; cv=none; b=T9ixvAVihUy8nk12IaxHfHDJsunYSKxH9OYfwMxtqcHouki5Nnr6skWPE/qMcgq7LIwJeGcwxTHvObKRorASIGSd8BBGoQaToNeQYdI+/+AQSMXZkPm67jDDhXTlX2E8veJoU9u2oph5nJooFJ7umSd4w3DBvPZVu0Kj4TC9lSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748510994; c=relaxed/simple;
	bh=DyVs386kWDEnv2WumIiZ2sjWAGs/TR39Z1pnsl6dugQ=;
	h=To:Subject:From:Message-Id:Date; b=uhQuK6IclFNmxzfFPC+wpeQLFwrkv08tNnTDr2KHm0fqzLbgkusk2f8uS6ExQR0uMCyVIDuDLEpEL18fs/G0LCKPnHECtwYxPEl2o1e4obBMJenJqzVsCC+O7FXx8JaCo1vC+pLdtZYccTIXYUokNswxlRMpiG+2EDPO1S9DoNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qwe+/nlB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qwe+/nlB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC97C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748510993;
	bh=DyVs386kWDEnv2WumIiZ2sjWAGs/TR39Z1pnsl6dugQ=;
	h=To:Subject:From:Date:From;
	b=qwe+/nlB52CRugE2OSLzJKZVHhYDRA9LW/1iLxEBIO65MzRJ4XQ9aWOXZVR6NRLDw
	 Da7IJ0RinkNK7NU4tuXI6Jc70uwTsvEqboRFN+p8yUwHoG11ZKCfZHiQd1WZmOmyj7
	 HoRzFPaS5U/HGThJ4gR/+oiwervGqpOW23zLiTyfC3Oh5K6WA5lXIp/TgLAeo4viwr
	 S4aBweyDWyW2Q+SnaE4w3oaMzaLsRgx8+r1z+VlUOx++1XBoTFLRbwq+nCxHCn75ln
	 nQ4pyX4lH1vT8hxbkr6Fu0tftQYGMzfIbucjR50k5j22EqXJ3dBPCLZjo1zezmDwZB
	 blJJK1o/Tgpyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7D7C54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851099364.20647.2208608585857721076.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 388ed9e3d74d970e315c9336cab48066173f8d5e534ef37ac82156484e635f77
Date: Thu, 29 May 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748510993
