Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6515D19F103
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742447994; cv=none; b=j/fsq75ALlarIvbn82BPcOZPdnVAHRMgeCrN1TSvsveCn1PHFmBvjsU/9YHC04donz3E3HovTOgIVPMyVP5u2+3Q4KvzGBdakKyI3bd3kSxuu3C/yGsl2xdA5eqm7LLUTnL1r5OtnFd7LqCeOqJQPP4Uhsr5ZLeo8Q2Qh9I2Zhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742447994; c=relaxed/simple;
	bh=0J3IBBD29n/2QqmIPk+W/sjoNHo2NdUpkBF5MHLjNCc=;
	h=To:Subject:From:Message-Id:Date; b=TSyw+WpwA0Ud2F/JKG5JhAbxO9Z3GMjToosVwEdCU7tw9g/Fl5DhX2EXb1yjJmbXY29wp3JeS5WgVdAlCbCsHTgeoDSqsciVy6Q5bR8Jl3zcZeycRlrdSS6UBC87qiLEj2Jv5lb2bbK3b25dHkDqGSgMvRL9GvPjJucIvT6vOSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iXBHty0H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iXBHty0H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DAE2CC4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742447993;
	bh=0J3IBBD29n/2QqmIPk+W/sjoNHo2NdUpkBF5MHLjNCc=;
	h=To:Subject:From:Date:From;
	b=iXBHty0H14R7tdIci6mcppx5ndgN3nfiHWVW74s7ponJ3KnScKD5o+WHxJMbYG9jP
	 iyK9ebzqv9A0YIORM9NH+ruaoB4hvcYOlZmv0aAhLhu0nxtHVNPMvE2UDcoeGCl+Cw
	 v2dd2qnUUEoBo+60bTZRPzI9ph+Cp/GZ0U+Ap2p52AJYfUlrNY7agvK6ADtTe43YOv
	 fJF/D0IYq84I7gdrC1nGbEtMl/b42v1KFVcFVs4RLhE81AGQ0eYXv6O+2DdAN3wNtc
	 G63OwiPdq7kvc4+JI7mn6Oafq5AxbIPuXoQorAWc54ORlYptwE0WuedVBsZ7Sy4xZC
	 v+BzwtidO+AJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3A0C28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174244799371.16871.16372523827245055548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ce910a6ac000a0fa5850c404d992ecf3f86e22f27951d5489f3bf190ded8e1a
Date: Thu, 20 Mar 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742447993
