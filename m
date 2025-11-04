Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C704260583
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762225194; cv=none; b=qf09bqc+CENnTqipWXEgnAP67ZFzC1OzmPPoTMpAV6hwF8M0WEqBdtK9p7F9CzEDeaMmAX/bQq0fP8b7Q4F3PC20nd9XGLhK4AXVNWbQuV/5m4Dtf2wISxYL8aOq1QgmXOkx6zy9pFBg/NTO3XbhBAhQyYTIzP1dMNyD1Wmacok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762225194; c=relaxed/simple;
	bh=u8RTO+bgBW8dSKz/o9anjoEkHBiDtbf5bE05OG80ohY=;
	h=To:Subject:From:Message-Id:Date; b=RAR5P3mFT9aW2LC5VffVpS5wPQO/nZpbvC1Hwa/a72I9wvVOTXNyWvG9OLUqaGLD8DmAOG7xl+XvIlhcpF+u+7a0VnCm24Yg/SHQvcIKNIViI3JtZ3TPQJqtBhoWsm46GUgwLacm0XkKkaZi1FOi+A2krN455WGNXjjZ/oNca18=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s5GvotyK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s5GvotyK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD0E2C4CEE7
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762225193;
	bh=u8RTO+bgBW8dSKz/o9anjoEkHBiDtbf5bE05OG80ohY=;
	h=To:Subject:From:Date:From;
	b=s5GvotyKRjspiBhpnl2LHKWjonFT3UcEFWm1h8TG6nO4ExwAo9fV5cLLqjRJVbi5P
	 SJUpdHhENsSBCuTLbJFvnEKEdUNtG72UeBOkbPqP5HeFy0L2pzD/i+StPTDflEv2p8
	 BZ27cFGWJvY0bGfe53F4+iuOTfMBoDdpeSqsgGdxD8X+58gL3m4jaqJPkqLVm06Wc5
	 gks8tZGRorZdmIXwPeWsJDL7BHLffjhm8YF0L0wFR8XrQuTc7u1mP+knCdpKGd697+
	 AKFVT2QGJtDMkI41xbXQwSET4p1V9xJ+7PHJseR6I85U/xv9/JUL9aU0OrIVnFsy2J
	 NruHJ4AmtEAOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A026ECCFA03
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176222519364.32241.4759390295533306079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c2dfd39d551d7eabb75cdb606c91403dcc5615451b75b5bb724ec2d24697f07
Date: Tue, 04 Nov 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762225193
