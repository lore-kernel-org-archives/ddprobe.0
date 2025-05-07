Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 270DB2AE6F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746637794; cv=none; b=T5dq1C1ArO2dViZowzdh/46DZnq3LKGnNvDcI8hWR4XLSzF0SKtf+FSTU9vNtMUcjErFWyIudNFEQessaikMAeZ+aAytbYRxLo3L5vk0bV9DJ85Lt8ZYJXrZ7FWrKzAB08XON57JGeqAl+ZH7l4b+jr+HOp4LdaXjkpAag3QJq4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746637794; c=relaxed/simple;
	bh=xMrgqDBQ0dRJRR2xroTAk4L+hc51qZFBPFNDBD6NMfI=;
	h=To:Subject:From:Message-Id:Date; b=UN/wfGPevZ2G28z2k6ngieSiYAB5pdHN2G3jwJcdP7kqpgoO3ZEsRgLd6IldQaMcm+N8wbl+4I7ymal9imnTL/V8SfERhNkLJbz4hwESB5R96zTq/4Izyd6FXIEHIP+BAC1slqR7+x1MGNA5OtSAel6lIH2iiE7coa+gYP3WCpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lj5kntTi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lj5kntTi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9BBC4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746637793;
	bh=xMrgqDBQ0dRJRR2xroTAk4L+hc51qZFBPFNDBD6NMfI=;
	h=To:Subject:From:Date:From;
	b=Lj5kntTivfhZ8GoOfWmTl2aBwCcemsI+BaEKnI5UW85v5A93Hw91m5rfPya5EkkiI
	 V6o1yYly+He8u8qcZOL7ggQAISr4eD2FU6sN/SSsXuoByqfvOVOGhjkQPfRMzVdgS4
	 FZDQC2yhaCpBVWU9Meh0g+0jetqiYH+JJmiz/1Z1Ea2HhPSNl8iDbTBfjOOYZgPeWU
	 j6yuAbyLjB4ZDcb9Cen9X/R8lunRVhw5zA/WkY95tncxdD+ktZEfx3vGSGBPF5wA0Z
	 QIPES5e45FlOuMFA9ahWCggmSHTecrN/aeOaToKGYUJp7gmjoUxsyr1RSc+mohc7MM
	 xh/bLNMIkmEUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E51BC3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174663779357.12687.12680665963960873622.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5510183dfb33e1400ef481bf6a407d2fc642bbb68ff819b5394f54f96a5400e6
Date: Wed, 07 May 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746637793
