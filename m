Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 073FB37AA88
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773599694; cv=none; b=PzRtmMdIIhtFU9gnokUnLaETyiqQ6azVYWvS7mrQx1j6N0s5d2HxK6aiXgJ1+lreDgCwENww4kZqIqO+Ote6x3q0FSCJmJ6hRHUOnx8X0gUvAECEqFgzeuP6mH1M1YKw7niPqpmJriRFcXC4pRFX5ze7D5A6ojrXx1bhJ3dm85Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773599694; c=relaxed/simple;
	bh=90Wt9acDdzl9Sq2rjEJIha1LXGAjwYQUM4Sq14JtqOA=;
	h=To:Subject:From:Message-Id:Date; b=Y/M/ZJ0o1JQgNogjfmZ6O2SU2E357d3eITWLfCSB024f3/p278yHYhfBz6zpAn6jrKSK34jmIo7ecyQZ/1Y6qa8H4YQq/rMpZv32RWgYnjf/duyvkANfXo8O7VvTe6vtjOz+4eLCyUbm8D4AwPEwTPVd7cSCE02jPucNgPIsp7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cwN+6DhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cwN+6DhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AACD3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773599693;
	bh=90Wt9acDdzl9Sq2rjEJIha1LXGAjwYQUM4Sq14JtqOA=;
	h=To:Subject:From:Date:From;
	b=cwN+6DhDiw8+dEn0/V/bWVJ+uM5GngBU3B6DE9ejlGWmBiC/N1sBiw6e6/Frf6QXF
	 ra3L/EkGRDx13KOoa1VO+uFS7w4y2nxshM6w+xTKAqSTc36nq18TvFM6LsqgOUQZwn
	 PiWR6pqOSf3QRLKg5lHfe4Ct8Fvbt14BTwttm2V2BJfUdTujQYJ6f5bmsv7WeZTswI
	 w+aZWJ57Wqt3Ib7br7wJmBJ5Iz/GkLvpoOV/aFP2k18gloA01S/XN2BKr5K/RbSDb+
	 58sWv3WUQy01PhF3qpmJiiV61lnco68rv1eoSM1K57jsHnV0X7m/4ni4ytm6WcN9Q5
	 WLw2OnmxPOVpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 954EBF3026D
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 18:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177359969359.18358.14837248733274541678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90a614e2968c01dc6d5020a4fd2043449809cdb0fc0e26b967d8a8265143af80
Date: Sun, 15 Mar 2026 18:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773599693
