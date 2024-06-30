Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 735EF10E6
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719723263; cv=none; b=J5WZ57eR0zVkh+xezABdL+glJ9UOeVwk4ZY59KdgP7t+UqlsBxrbI0AeF3ZDvKWwpxRWTrdDllhR7KabtpMQ+evSAlFed2j8dWuhBcuoUGr+oU2w7iyQoMgpr7Mp18Z5oKc8QrTgNVR7zuiEKLVA+ZfoQMeFZZ3ahm99YYrLE88=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719723263; c=relaxed/simple;
	bh=7jIfkq9YMh7NHuGTALlcdFUeSnG79n5yV2oMGMxEMTM=;
	h=To:Subject:From:Message-Id:Date; b=uTpGIYYl4CKo2FAztpQqobmq8LGDVdAEA+P8wiYcvRMWeL9hizdU50KtE8fW+1lN28LGs3BRQoYRVY/Nd/C6m+a0rZiux0Lv9THYBpjfJ61PAUbinIpdu4Gy+EdCCyK+Hvq3WuYTvbiG+WLAUwXN+crU+yiyAZvgSDfZ7MpJA5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BbJY5dEW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BbJY5dEW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E5196C32781
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719723262;
	bh=7jIfkq9YMh7NHuGTALlcdFUeSnG79n5yV2oMGMxEMTM=;
	h=To:Subject:From:Date:From;
	b=BbJY5dEW21CFk5s5g+2r9Wq7I+nG14OdwiosE7kiQhuIyy8KGGsuDc79mvk7AHndJ
	 iS7TdQzZiR06xZsWpRbqCR1DzeR06B2GMpaVI8TA7hcL2zGbnfUaEKVUi2lJbAkTQH
	 l8GYiZ5o1zpEI6iRvl2hRT7MHhoqFvFchf2Myps+Nx+vcO0B44+NI1VPLsEW3lE3mc
	 +rOE9DDu83Vz6406DBZwFOopM/thUwe4flvNhdO0wrFUyid4VuxpopG2I9FeMauI+4
	 4hlxl34a3nVAUzj5xA8blzuU0T0mFXAi1ibx+qqJFP2WU0L6A/6qqubxPGvHiIC3yV
	 XhLqiubgLIhHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D04BBC27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 04:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171972326279.4747.11182115002039642132.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1815ef8dd7abd541d2eff50993b08dcf3c833c54f2f7fc7d925a57bc7a17c03e
Date: Sun, 30 Jun 2024 04:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719723262
