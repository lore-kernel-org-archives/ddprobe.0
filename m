Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BACA830F946
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768305833; cv=none; b=NAXPox7ogRqHjvGhlYiNPZEgTuP6WmvoLtHFwH5Mr7qvXuC2cbCDLihDewterW9tx1JiZDz1F0qE400oXVgL8e5td1XIlk4Is6aFa4rCAXeJv0IWmsGB8La38dU7hs/qIkeEXPo1Xb0BhvgvtMb8f4gs5rdVi3RtPsKb7q33z7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768305833; c=relaxed/simple;
	bh=8+pkFyeiyN5HVybkc+yGoKUcN5ppJrisLX0jAbmdERc=;
	h=To:Subject:From:Message-Id:Date; b=jSV3BRFV/oEE2tmFwvEIrk/MohFLnwFJVcHuvKJQezyerjEonIO69b9mK0Sh4nh2hcEWJRq/0MzIC76x29Z4YOHnwuVq3rnaOG5RHmP25whcGH4G090ZavjSKiPYCqY5wl/w2MuXxWuHJO4RVgLgAsnaPeguFon4D31TAZmksOs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NLO6+jFt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NLO6+jFt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF27C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768305833;
	bh=8+pkFyeiyN5HVybkc+yGoKUcN5ppJrisLX0jAbmdERc=;
	h=To:Subject:From:Date:From;
	b=NLO6+jFtn3RHYE+tEH2imO6reCUpuHW7SpP3e/nD0mkuxBN5HJgVvOJI8C/8lKt7J
	 Cr5NTpL3rAFYsfVzcSYGWqXnSMCFGJeyuen62wQM1JGjWkd+GsgGEZRMsgLd8H6L5c
	 jTvLJOC8xdGcoiBE92pHlFrxHhL7D+AQqMOCiC0el0lfuhxvF+Hkjm+IdcpK4FaMJz
	 pAxvtug9HJy47wW4M5UKFQX3HJ3ijaKPRdH5TWAsrg1GB8NkSAXJwedb/xsR3FEFYM
	 Aqdq7rhI2vLSQ7YLYqnjBZQA+kgLDlNBZdFV/gDIpqgnBDFy8myO1UcULBipMeqAGz
	 irycyG50dWpEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCBD2D0E3
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 12:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176830583358.23071.15036984213204260787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d1af196371e67082a108571dd3169fb49477de8f5034c082df4d87c5e4549c2
Date: Tue, 13 Jan 2026 12:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768305833
