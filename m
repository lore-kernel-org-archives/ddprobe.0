Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E153054723
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761971994; cv=none; b=LPEcKHEuO+ZQ4qETQYj2o937JMk/N535zaZ0gg2Q/OTyiLfiPOseYWIb/khGYg1XeJqvx1i4A4WMNVj4pGeLaF7041LPT73OzEh5a8x3c6h9DpxFx9XtkXQWgfCvZrGeB9PfDgUc7LU1gmiHk2IhMBuPcun2nxLORx2XXtarlg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761971994; c=relaxed/simple;
	bh=MeBrBe4vRncc+bvUe/v1PukmEePD0ooCTSFNp2Pikfw=;
	h=To:Subject:From:Message-Id:Date; b=ivMvZFvQd8BvMkxAFwdETW2YWMCWzIK/YP65VqePMCfR5tV/liDV30em8zL+9ffcJq+5lw7Wf9v3HLnHfpll7H2PgX8eeUYm8glQeDgPSukPinccUeCNjRtFyOveJlEicuomRqMPcAMwPOSGp9qaBjnyfy8XPQqmRq02x2622V0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nyojZ04t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nyojZ04t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF525C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761971993;
	bh=MeBrBe4vRncc+bvUe/v1PukmEePD0ooCTSFNp2Pikfw=;
	h=To:Subject:From:Date:From;
	b=nyojZ04tGpBSCMOtD0nJcHzWuJPOVOTxdooHqLyepLT8KRuWE/bQjRbl1gt1VRSnw
	 lgQkXYSonxl/CWZVD+R92YASno58dzHQz57KqVR80TWr3SCTZHIW2gC3hK9M3Ccyp7
	 Z317YMFLuk4PgHJG3t53a8TF5aLHcPKRvulsWeGwRg4DTv0tQp+ZP6j2Hsewqwg/8y
	 +uZJ30Zx+UN1pViN7LoRz7a/jyTqHSYZHcfwtMeX6Peer6y3e6KOSeeAFBQiyYf/Vd
	 kaXmhYWqB5dsjxlBByBy/YRaxM6fnDctVoLDfSObYasJy0escMbF7EVK8vghz8mJow
	 gKCIDRJToCyIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99E6ACCF9F0
	for <ddprobe@lists.linux.dev>; Sat,  1 Nov 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176197199360.16004.2221291406625280086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f4b431049cb4a3427221b0efaff27b2e910f2ff2d36fba045b51b245fa09e98
Date: Sat, 01 Nov 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761971993
