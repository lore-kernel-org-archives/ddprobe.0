Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 234772264D3
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767541434; cv=none; b=M0afxdnjJWbOe9MzyoOYxlrO482p5yXO71yDl65fz0SdSIwPkJVc7HbOhWKDZ/bgjNw4MbUp3EKBFrorbwoBCWFR6wZ+K/CODUdWd5zH+7Q0MYLXufulRAgoF8w0mL0TzUCKRpma5RTf4RGHHGKPi3j9awdq5sdRR9EokZXn3t8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767541434; c=relaxed/simple;
	bh=oli1VGdUEre+Al2c0MrpnLpIDWX6dXYyjLMPExjg5z8=;
	h=To:Subject:From:Message-Id:Date; b=Uxk1WV3uIg70CRm54hRPlZFotKYHHqDFYx5MH6/xZRKcPi1+BruemToh3HTK9Z8sWwfn2O88wJI+lf2xwL6jspnzLVaEPf1N1i4g0bKUduNWlmsgUPiHpXh5EVQXsyd0DX29l/Ddxbd6XZxqWA7Do+7lZZbIFuX/hAHUGAgav2U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hARyqN3g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hARyqN3g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CC3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767541433;
	bh=oli1VGdUEre+Al2c0MrpnLpIDWX6dXYyjLMPExjg5z8=;
	h=To:Subject:From:Date:From;
	b=hARyqN3gyeNMWHQe/HHdx4AFT73O7Ce6OTeGALQIEFCuZsc4/2cpah8Fb0syYk/H0
	 AJ+AmDO0Vp4dBIWPP4jlhcnd9iJ2SJBkzX2fOHqTmwDk839r20Z2dVEVN3T5Oz7+oI
	 QDd7cUjc6miQJhTSnV5684dZ5twwvVnq5tM6o2PCysndpoIrsPCGv/DkSsWkGb6fvM
	 uSmC4LhwVzFaNDFC33gPJmIeXVkhnksRI7h6P6jM3QYi0ZUOmckvWX0DXChvIBGED4
	 s9rfPzpbxr0xVMcAAoZrxf5YKrGCYFGZ1KbIZccN0d6Kg+f9B2ytXDL7jtn12eJpRx
	 iCAdOHFKdYubQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D16C2A062
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176754143357.13351.11541378663862282323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87f90d5dcfa308e194e2f89f32c9af5d3009f240a33df6f1e863ef493edca093
Date: Sun, 04 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767541433
