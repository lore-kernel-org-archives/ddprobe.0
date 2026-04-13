Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A7D3D9DCD
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776089854; cv=none; b=N/0ZDuIds58+LZiayEPfsKQHXSz1wllfoe1fwarfmcotRaqenZk6x3gKOwMKBeXHuSSyEqx/rLXQkyGXuFt5E1yIVMvQ8e1oX/R3GTASk3+XxEVh09jq7Cz0LQ3YnbTxko6fn/SNXFBWliEWkH+hKQBtlO7y8XXn2GAbQlJxNJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776089854; c=relaxed/simple;
	bh=T46PapqtEVwTzRqmGGOJm7dqKXwYq+pyvBPWenG8rdI=;
	h=To:Subject:From:Message-Id:Date; b=aC8KdaXwLKhHP0Edk1T7yw3TNDSnYqgMJuyhZelKaqZ5XiYvUdUQp/OqCIUDj629tRKHLBXinfZ0BDP1omDmYPQKRb/FAIkkU61hpAdjgTSn/gARCupL2lMS7lKtSkD4SOy8GQyxIGRe9m5cyIZPr+D9DNypelfuIWhZwG6gjNs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BtozlLyY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BtozlLyY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBD2C2BCAF
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776089853;
	bh=T46PapqtEVwTzRqmGGOJm7dqKXwYq+pyvBPWenG8rdI=;
	h=To:Subject:From:Date:From;
	b=BtozlLyYaBaDubbw4+BP3FksLGpDkqluYpDkZiaeIjrPwxNIpeGENSmDyQ7gHO7N7
	 8YDVH1XEnErkLm8ko8wIlD50FqWu4gm27tlUJnaHJIPxSQoDJmh52koTxW6xHCqLnH
	 Y2M503/s+PFK9X/lZdyE3MGexjuHnqxhmdfi4eIUC12zmhhuZdwrggC1O7D8jciBEA
	 t7AbBwPCER97J3fiiXyUJJvtxa6XF24Rn0VSovvvUqSpOd3uJIHBpAVF4rB2UXeIml
	 dPvzCzd/nAn0a4FrPS4GREWZmbI8uDYjKWSFbpcb8m0YW/ACvITHzs4DW8VnNvWFy3
	 Re8D/0eCf39SQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB80F34C56
	for <ddprobe@lists.linux.dev>; Mon, 13 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177608985369.9570.5308473346971446324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c008aa1e7163b26c5dea8d5ab558c841083d7f1b4a0f72b432e8fe216d9d50
Date: Mon, 13 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776089853
