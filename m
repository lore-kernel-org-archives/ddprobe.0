Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7BB37E
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721979954; cv=none; b=JXsBDw/fZpKI6ZZ8E4MqZjdTztNccakSrooHPG+UFFoYw+suxK8oHwyVsYmyhP+fn+rFlaOSUWpyVqo51KWMkogIi3ci9U7j+1LXitsiaBwcSeea6oWozO4YRytzsnqzSxfkNHe7M3M+dYNxmQ8mqURwCVJg2DISzvmQ8jScc4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721979954; c=relaxed/simple;
	bh=bO0uVEJXUYOHRVkZg1dDwzw8JLHtF0tLtPGUr6vhsGE=;
	h=To:Subject:From:Message-Id:Date; b=mgtQ9L/41J0datQMDROI8bZ+UurOewkLVMoBqjobrjompUbq/sZ82VdLPxCpUgt6/D+UMtdLG/jLZPwniTtxY3Vl+vN0GIO04I5T3q2p2JTji+YXybvccrSJiL4T1sP9t5ZFPQvOkgGmx4n7FOu2pJ3SADRpdaxFK5uhv2ie8N8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ol/aw5Pm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ol/aw5Pm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A61ADC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721979953;
	bh=bO0uVEJXUYOHRVkZg1dDwzw8JLHtF0tLtPGUr6vhsGE=;
	h=To:Subject:From:Date:From;
	b=Ol/aw5Pm0ccU7I8p7WtYHLq4+a8zi5Y8PzC82jemi+Wy2V2sKqlowX6Jp01UC+fiM
	 OseNa+LLbMuJq3ObV9t6ynK23cZbq5nB31/p9V4UH4boQtqi8IDn5BlYhcUZViugBb
	 1bZ/Kd6XaMqozZCgfPFiZzWuwOmhbJgK4Bw+esAEqo5RRaxYC99+fGB5MItNpPDQSJ
	 pW+RZ8i6/0Sq7zt1VOarR1n+vuISEMxpaacyen00GHLdBPFiFOlV2vCjJpc3PgBcjP
	 tAoSd68cFnQ9/7nBoPhmKU/EuUf3Gp6hUB7ENngcarqxT/snY/gJBFH9kZOT3tY5J0
	 c/XUJ3hZNHNpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A35C3DA49
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172197995358.26844.3527198038707895514.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 002c967b2347a8620e2cb9259d7bb3f25e9b1c50ceed94481543e0a127470eb7
Date: Fri, 26 Jul 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721979953
