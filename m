Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCDCF28DF50
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750440593; cv=none; b=Mkf5ZpWubpppl+uSNSmIE+O0C0+PamAiEt+qTHSOquVwica0tiDyBtoPsUOjhPHYb0rrbHfXZEbMXrzo4UFjlQ0d+FNmJtk0dBCQ3Pt3wjHWQ8wEfEMJdcL+RyQpnLZXSlASVxQnOFphxbiuDJPNsui/FwHZwiSYhC/WxMBg+ds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750440593; c=relaxed/simple;
	bh=VfJMohQNCO7yxTt7Ahmii+BFSCTpg6wDvNIkd/7ZKMk=;
	h=To:Subject:From:Message-Id:Date; b=cgBFqq9vQpJ/ThqoK1p65bmnE3D1JM0WGn/l5Pgcp+ysSJRc6KvPzBWdX/yZ4/MVl83JcdxivpvebrkOJahfbSpaR4hcWn711+jzOjZdDZjb25WWj8kNGFANGgmsvUZOSdL9XkkjcKvVo7IHHQ1+S5kOguXcSuVec/PPLnnS83s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omo3qj8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omo3qj8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED87C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750440593;
	bh=VfJMohQNCO7yxTt7Ahmii+BFSCTpg6wDvNIkd/7ZKMk=;
	h=To:Subject:From:Date:From;
	b=omo3qj8PzteufiIujMGkLoeFtJvjrWHeP4WNluCK2O91DJL+WHZCsitrzzfExEgIn
	 Z+8E2z3kykf5O75dRGtX4JvUubczI7uCgPbyxB+xvrMbYlifOT6+vZu4CBMRX8D+X+
	 LY61WChM/hHDvPSZ+WNCzacA/FqN0nQAkoIbYL2fldplR841uAwOTQk9FluGeiCP+y
	 DNJ0kU9+PtipdSKf5wj5Xak0Zzfwo1G2UOm4L2Bsc5oljDKQyOoZQ2shyfTmsEPgMY
	 daRePoEQZ99PM/TcHsql75pCl4SFVgqFJgIMgr4XSumJIkVsxrwdpXetJNvqmnZd/x
	 rZQ8GSD2WqauQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FFBDC7115B
	for <ddprobe@lists.linux.dev>; Fri, 20 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175044059358.22686.15651558702425583344.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7d55f8779705eb53538a2362719a7b0d6373ae42cb43c6a82be42ffa419e2a9
Date: Fri, 20 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750440593
