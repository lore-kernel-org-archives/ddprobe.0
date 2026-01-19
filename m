Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1065F26B0B3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768859034; cv=none; b=uEFtKWp0+CjvL2B2TXOszKt4XF1pu3SRKATAC+O0euVXB28INP3+s6Kl3QnFHDi/HdkIVcCrvkCaZaAa0cfHKAYz/Y4RHTyAa7ARz6nka17/08oDf41XBfzJlXotMG+mt4xov2wLbUhI/dUvOSjt45jDW56NVSiPeLEIaKsPrBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768859034; c=relaxed/simple;
	bh=r50iImvsl82JRtNLV84N5Jxxr6TkRbhKMohMiMilOO8=;
	h=To:Subject:From:Message-Id:Date; b=EGop1MILmZHwJWJFicIS87RC3/uFuXa4Hz49wKXTcEe+hU/F/vRCLaYKFUbtAjo20QnUugYuAhk+ok0+rUUAIxgI1DWwoVWVhL0yEyzWLrxOJ1CdNE3kJ91OsSa9q8dBMECf4sLWpqu6LIKxiRDGeXLdOxWfYMDyWG3c7X8kVf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP2yxg9e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP2yxg9e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A103CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768859033;
	bh=r50iImvsl82JRtNLV84N5Jxxr6TkRbhKMohMiMilOO8=;
	h=To:Subject:From:Date:From;
	b=hP2yxg9ej7DffM16umEHLUxdcnLnpc7a1fBx5ySX1ps0jgqe5BfPjkCG+8RhiP4BK
	 TqvbnFDJK9wuz916add63oaY5pMJAbIQsOsOElteCETtIIT+o6ZJiQzCyMRVaf5hjz
	 LiLnQOKsxtmDARsR95J7keU3nFrbIxP/ZxeyGQTCkuTDW5L+g3RL+fRxx/e99MyRKJ
	 pWhIYDNfk/ylHLZOXPLwJjX6kkMyLtPUhjGYe9hZSTYu8IYATygcV42kBW253UpHds
	 sgd0Yn+68C0bGHzR4s5KHxRBMrJI+BDbmPOStIqmgKTaowljc/ef8SelfrBbR90DRi
	 vlLa+vVe2QXsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE07D2ECF3
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 21:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885903358.17184.11915383390047809133.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 295f2c790d7820fe7ce8cd6233d340573a1c5b8f51573135b1c000f8483e4f4b
Date: Mon, 19 Jan 2026 21:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768859033
