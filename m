Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E3F11D6193
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770678234; cv=none; b=MZwoM4Qk03rum3xpei+3AGwt7nuGCU35Mt7sbvYW0scEvClPezw8+7sTX+KZG+chr5K6cGoYnz/VSHwhvGui3v2JUNL59e64m31NktqdHcOkuWflh9rRBY/HEmOe79S3hHSBBMX7Cv3hm0lxvlEyY1zi9S+S0cXD1/WwbU6ApCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770678234; c=relaxed/simple;
	bh=GQHTQkzmCDBkwFPNvhE3BLu/CIXlCmbGXFLp+Bn26xA=;
	h=To:Subject:From:Message-Id:Date; b=C5OSFc52YOIosqRWM2b8k2SbAxCqakCUOgkolqCqjeyGClDYEjZSpYITCA58vy6irbYxMU4h9b9i6WJwd1kNJgbGeD1ONrFYH1vqAwD5SbHDAMTLBHnVtEONKls1yTqHxLmptMJhat3gcKBIPM6onxV2LcQsC0R07P2ch3vQn0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cx3uunBf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cx3uunBf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA6A1C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770678233;
	bh=GQHTQkzmCDBkwFPNvhE3BLu/CIXlCmbGXFLp+Bn26xA=;
	h=To:Subject:From:Date:From;
	b=cx3uunBfu5ASp2vU1gRJNmgabKJ+2Lk4iJ2txpCmgzx5FktleF4C9cPHzqJMJiU5K
	 xGq1R6M7WSHA/WXPXAxrD8lJhEZv9a8qoC2SdZTSqfGr5hvZ495NpIXGzXyh6i1VtG
	 W4FSsU5H4X3zsqLmm98QxzI+eijqRxXIw4Vs+knXuyn8AewT/wW7m1e0RGO9yq1FMv
	 StCmvWFoxLM2m6wgG4j/oTPDv40TqnWhn1yelBmpKNfubNM2r2OSgcjLi214ZdixlZ
	 JSQF4OKXUzrOsfTGIaQRwnDnNPQR+11xFe8jduLftQoL8wm8YHBBFNAbLUzcI4wRH1
	 9t9/5g6OaKjsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97DC4E94617
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177067823358.15440.2152463367673995492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d29ac120ad22b3f7b365f6d91e1a2bddebbabeb9fbd92751e9d342089e9a1b1a
Date: Mon, 09 Feb 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770678233
