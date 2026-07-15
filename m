Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249213B4EBF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784150314; cv=none; b=RtHdB1SHHFPY3bWw5VLEDq3gAO2dqplPHsZSRNTAwwtirwBCNSY+xlSP00QANhjtsINrjUhKwfUkj9IMapM92dhIRLbXg0L+NoFa+2Nsk2VS59dJvv6wnTy51kxsO2x12NgU34VEzYB6fDUpvUQU09ABYNq+ZTxLCFi+qDLFZ2g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784150314; c=relaxed/simple;
	bh=XM3arh8tGJX22Rodx+Qlom7UB5Z9S5sU0W51IcwQ6dQ=;
	h=To:Subject:From:Message-Id:Date; b=rp1hSJ30hpJZfZIL8CABO6JlK+CTKRj3hRcFgDLxi9NC5UYOs26gqq8vqk24lFHYUS+5XrAfB4KDyxvnY/j9/s+N+BMRRLahk8Gwoxt3MDfn6QqSX6XXHAlaKbB4jbsMOmaijL5Fip2qDJGJ6xDOpeF1Pa1PIchg0PCrjPouXh0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WhA0TC8/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WhA0TC8/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D57F4C19425
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784150313;
	bh=XM3arh8tGJX22Rodx+Qlom7UB5Z9S5sU0W51IcwQ6dQ=;
	h=To:Subject:From:Date:From;
	b=WhA0TC8/83B2dpitLp8touM0imuu0xTpE36GvL7K+4toB0tdFDQmAkqQ9lJcnl4wm
	 k5T8mzFDwYGQL44Q4F1aq9S7asDXxZeZl2aaKnrZAe5hABZYGWBrCTv6NLjiMbKl//
	 a9DHZwBPdYf9M7BID1bqeJnDU2h8lPZoHi887jRQixOW3GBvf9Qge2/O+aByyk1ARM
	 KaadvNSr/EbeBs0tfjE+uSG1nhCY0YJWq05ZxrcWsdHN+1H+7TOfNaNRvPk8QNnXpW
	 W/97uX5EqUVyo2Yu73bkS/dsLhs1uDm1/9SEXXCLcdN5EaMKTRiS6EngmVTb1l7Al6
	 RLiVMfjIN14qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9559C44501
	for <ddprobe@lists.linux.dev>; Wed, 15 Jul 2026 21:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178415031368.30226.8618719780953976333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bfbb941c9382bc5796111460ce15b344105b46142508c17e918eff1821c6c92
Date: Wed, 15 Jul 2026 21:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784150313
