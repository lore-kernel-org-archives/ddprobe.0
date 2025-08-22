Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C602C4A2D
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755827393; cv=none; b=qk2Ah5KI0AQ3jGOmXoL3ZhqTVOUpoc9O6YMZ5kUOmsldyeLdBLkM13IO3mpvPMinkxfeCXKFTpdE1979Vf2QvW493IR416MQj+yaYyCInkhD82/p2ODynlZDyliX00oIx4seVlXbmBTB4wyG3YkAQ9raGXkejMQmr08y4Ig7Upg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755827393; c=relaxed/simple;
	bh=LtDtrSAOhuR9G62Lr3uwpSCt0d69Km3mpy+bmXVmzvc=;
	h=To:Subject:From:Message-Id:Date; b=jPuYCpGGX+jmwX10aiYWqB2PrHOymTuHzHOM9Yp3pMr34EZOOXj7b+WOmjU44rZ0NvkjQoX5ZMHOFADEm73CKJaksB/cCjjncGbQK8ggJehR6p3GB9tNLnDkv9/MWFGLKBFvhdv8NADNVXZUNESJ3cqI4PDTuVvhARVDe6gsDws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BTbQrdVx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BTbQrdVx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47EBC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755827393;
	bh=LtDtrSAOhuR9G62Lr3uwpSCt0d69Km3mpy+bmXVmzvc=;
	h=To:Subject:From:Date:From;
	b=BTbQrdVxxPd1omTVg8E3C76sQYZup4BeRlhxODUCOhNa16IdbRYt9mqjIR/hkDc8Z
	 cQ0ZqSSErwv0NGtQOw1GB5qKA1jAk+qAiz1HwC4kdglg/qxR7uWp22mTT0rglT5GV/
	 Xjyinxq9kluhJ8iLv7HipG37zDysehKSGy+f1zLYlPyQVA18NOB3yGqQcheBdoSqar
	 iZnfQvWfpkBd/N3ERO54oM1aiuSnmS5Q8CWIDu3cHXxhx19lF3T+x6uFyQQyDAmTTK
	 VnRyDinnpilf7Ji1uLZt/9WmpOfBIJ9Z3JliVkf+u4jFtvQtiOnEqx56T2wdVN1V7T
	 cdQiOGSCHUhlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C75CA0EEB
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175582739357.2500.14599518518344929639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb538db2c7f479c4ff072839df1578f36f56ef65158051fe803050c8342c5c14
Date: Fri, 22 Aug 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755827393
