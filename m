Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D0123741
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770959694; cv=none; b=L2qLh/LH/bsXffSeBHixgTmPJjzFByrVf/G8+bFvZjfewiVvOMceDRj7w2oMYwhUIpMu+MWncKqTVgfCkxWxPbb/jYR+1Z2nTPEEqFiXmsaiMk3L29sgi34NoPMA9HpNk/5w81bHim7hsc58VXuPrwEYY0tkzYU39eQJuz2Kybo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770959694; c=relaxed/simple;
	bh=64jHNGvqKHRm5EMczqHfZ+qFTN3K+g40udV6hWvIii8=;
	h=To:Subject:From:Message-Id:Date; b=DHQNNmjeqlsjmzHD9fizxet1YuTvPgnl7davmd5yVaPpXu+rnvt2C3KXz+TgHgUAAGu5wwx/Dc21HN0xq1XHR3khgTQ+xYPs7rmQZ9REZ2lk088FbnjX76ixNw0vlmR+B17xfLWD9/xrDpVdGjkC5Cy7F2RK37EhvnybWAWMWLM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgH0bmgy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgH0bmgy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0C07C116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770959693;
	bh=64jHNGvqKHRm5EMczqHfZ+qFTN3K+g40udV6hWvIii8=;
	h=To:Subject:From:Date:From;
	b=LgH0bmgyY09kBqWMXia/OBrGcPvBWdp8UHwhYYTwTthz+bpVFa2OVsZU3ANjtWwcS
	 gNoW8P3ml1/wtJ87mXc5DXH/A5iwG1V0aWB27660bWVGNZ4Nw3eIYbdgSbMp6p2jSW
	 q3jRgykrj+PbhQXl0OnhOmSEHmAfKZ1zWkt+hCZR25mj1tUIZFQg816ZhCYtfibeSj
	 nxwKkPnPCeZb1QMpoLBbR8e4aEgPdSNOk4i3BR2yEi2qATUl5CA2pZlZ9isRTX4BNA
	 ZYyvyufQOzEvINeKDa6h+2hdpwzkcTEdTvcF72IdlCL9tnY8gGp8O3fA+4zt3a20lM
	 UCmeyDKxcflKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D44EF48CC
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177095969365.30991.11478614516969568533.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29cfde4b6f26001b1e7b9bcda9d8e0b1d5235a52a3695b2364054f114997e157
Date: Fri, 13 Feb 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770959693
