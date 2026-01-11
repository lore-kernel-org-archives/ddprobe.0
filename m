Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A6DC1F3BA4
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768165434; cv=none; b=sI9VYr/wtFEdglmxmBi/v4QtMKkR1/ZvdeZi/Vurve0XA/8EmhBwXN2cMb0yvaf3jSuBBVqdNFX8fcjc8e13i/vF/OoJbfjJ1ZkOFzdS0W4UKr5/zq5+3rYNCE3Tl30UE+nOktKOydTdWmfBSldNSpoYJ/hxZF6f1TVGbk/Pf7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768165434; c=relaxed/simple;
	bh=caP6b/CAlxh0tAlh6ngNZfo+j44OaQS54pvjdn4XwmI=;
	h=To:Subject:From:Message-Id:Date; b=KCCEQwFKVxFgWCpfvLmaxJucHNq/zVzcyfVjsMRqGJJi+MP/fVjzBpIZFVLAkLkCMf9xcFrkL3AZbiCNqDxBgeVo6UG/VQ+CO9O19wRMLL8eSJcpqQZngr+0Gw/MlZO2oFkyVHg2eem4367m+yi3vPhowJEuuhBqO0eQPvAqcmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPo3RqzX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPo3RqzX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AF06C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768165433;
	bh=caP6b/CAlxh0tAlh6ngNZfo+j44OaQS54pvjdn4XwmI=;
	h=To:Subject:From:Date:From;
	b=gPo3RqzXg+BhVsXp+j7fCmVVBySmjIchOqEASTfidekwvCk7vMotFm2lpFV5B0+IJ
	 rkcsHozNnIDQfwrup1s3Br7YIqaZSUyEPkX6vZa2aO5ueZ8ln3ayOP0rC4LLyil9wT
	 hQUZHMffmpugJgUKCh020PUtEwPOinyU3n99Ab1sxyj7rC+tj0VZlRDEqzsSqjF/mC
	 vokjh6OwxR+rfslpz+5TTyxIdECeFxdq5yV3yLPdbg2zdXAK+Vhkqd6PX6dULU5tm7
	 1pQJs6/qp5Zs/3HKhO61J81JdURCsLarI2YzQcyAe6w9wLXSwAKt8Q8gIwYM8w4p/r
	 rd/ggFFlnuFAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB7DD2502D
	for <ddprobe@lists.linux.dev>; Sun, 11 Jan 2026 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176816543358.5959.13318510210086202996.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e620c1e359f282a105b346f3b15b9da9189afd0b406feec4adce659d0ef6150
Date: Sun, 11 Jan 2026 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768165433
