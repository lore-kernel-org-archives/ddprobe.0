Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29C9B17B506
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752925194; cv=none; b=RuefdcRkLMHpxVTmGPDee37Q1SoMLgDCAOYQ1gB2WuZfTPrF8kCkF5TmIBiMfkEz/kG8A5Ep1jjdZRaNspqX1BelQWwXi8qx97sCb14qU+GNPZpGr2eqBooK6qB7UHI4QT3c08UE+sczgAvD7Msl/xUjk+9HigR3RAIJWuxS5Zo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752925194; c=relaxed/simple;
	bh=fwh2YHsJhLFqXz9x/rlNyVMAlPTrIXLxUe+jF8r/ZQc=;
	h=To:Subject:From:Message-Id:Date; b=S5UjIb0I6F4vQNsmBMtQU219eqCQLGWvSAC/iFVUfw/doVaXweJvQbMq34lsjPpl2G4dDkRS1reaFSOVMCM9N0Hnc+9lRtWrbmrcRZGWGfDOQCe5OScGSKQ8+0S7ThlVC50n2bo0j/AY24mVqgCnSJueeT01JpLLFYFteGC9K+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E383fuka; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E383fuka"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7357C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752925193;
	bh=fwh2YHsJhLFqXz9x/rlNyVMAlPTrIXLxUe+jF8r/ZQc=;
	h=To:Subject:From:Date:From;
	b=E383fuka3utj0Ht8dOg6WOW/821Oceh1RXbWMTDypgyFX1wRDbfcvtRQzp73J/Ncu
	 d9jcjQUYlQDuP9/1/yDj5mQ+AAhDHtIdLFAR6McU++hgZCVRUhJeAQNraS4NpPtWAJ
	 mkkud/Fo8LH8rUNfHaGH1BTe6/YZ9L0IVqp2JFUxFXTn+k8i8LVqLKbt5D4/vQtKtI
	 ngYq+BYx0BiCLakyxJfR/hg7u8D6D0qvv8pf4qV1tgoO/btQ0Dcl6Je34A4k63kGlx
	 jqMyqd8078xBK5zvwroRo5pt6coyR2EjS/n0UviwdyL+bqidiI057HtbZQ+FqGDbz7
	 4fVI+568hN9/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92630C83F27
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175292519358.22753.2165850715914519411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 751d89bf80158996a5457d9f6680fe2925cbb6013514ee2731b49e2ad25307c8
Date: Sat, 19 Jul 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752925193
