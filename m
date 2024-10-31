Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AD511BD9DC
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 03:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730346954; cv=none; b=Yyg++yOvRC+WvGN7b2a6ELwaVAKViWrikiwf1IVhQEZE9BjA6xMyvn87OpWzukb3limFzyfyZS2u3zs+Y2OPFAkLcO0wLcvvnQ4Z/JPBXcJhcOydDwQV+yk0+k+3dhKO89xmSn+hGhF9UlfRvlxg9XKbBlihFn6fPusSimoEp7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730346954; c=relaxed/simple;
	bh=UnY4GzrUc4jjl+oKB3jmKHEDS42Ft1JjU67lQPt2bxA=;
	h=To:Subject:From:Message-Id:Date; b=hxajWbhqr8wPZAgVmU4B5tO3LlqQIt2kzrphmPxuW+R/KshD4rjILxG/2PfU1S85W+Y88Tp0GFG2gL36IrNk21Z+OPPncMC5dfawcpW6xWtaYm2dNvp31RLx5bVQNXLO4YTOiP/FO0JJmQ0lVJR5cmW7c905oUVgKC6WpnBrX/I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hmIaRG3R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hmIaRG3R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3C8CC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 03:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730346953;
	bh=UnY4GzrUc4jjl+oKB3jmKHEDS42Ft1JjU67lQPt2bxA=;
	h=To:Subject:From:Date:From;
	b=hmIaRG3Rmu+LHWBFUd/F0sccKD9+2OwFU9idOw0ZQilCW8uOc99KEFESdNJPBmvfO
	 W+RfeDcQlmp5xS6GloPm645jWgiTW3ikGBbmziF46bpw5VEc3ms+TaLMtRea5VAFpI
	 QPYF6cmKrhkjpaaXvFHoZpvdhrse0Tm3JwaZEwta9IzsO/ViRLZL1aX/h1C3R2Ds/s
	 YsxD+AumaxluTFvyyQZCWJ423G+HRUdhlOStvpd3BC4i7SsiMq1XUHZEjiPK/jk8wr
	 RV/jHBK7B+gR4FOjfKKqWFqPE22kKwwG4Nj48bgRCMig909TZRXaFOiR97jGPOEAW6
	 KEAOmORBh0MLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D628E68949
	for <ddprobe@lists.linux.dev>; Thu, 31 Oct 2024 03:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173034695363.17079.5746564335450803602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f4451749926eea95dc4dcfd22d3a1574ea12adafc696447cad987f3ace2c4f4
Date: Thu, 31 Oct 2024 03:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730346953
