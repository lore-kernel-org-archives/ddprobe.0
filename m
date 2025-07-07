Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CC7F18027
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751855394; cv=none; b=ASZw+A13nQ4VkS0LcY9My7OczVLiRZZUD9mdIrAc1aFqLVWE9NtIyOJA/3ax8kYQnB1HsxLCkmqMjsa9grvUOhjv6o9zuPIBHjq+mF+howPuYYhSurnc2uxyXl7s2s7h+bM7PjER+EuB5Y7bzFwsxnpBLOmS9fKoJXLxVc9eqYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751855394; c=relaxed/simple;
	bh=x2lq/8zRjDdWkvcv352HjpApaJTlHVgcWwLmsa6v8Yc=;
	h=To:Subject:From:Message-Id:Date; b=QC4vvPHauEwJRH6gNe6aZhGFng2Qs2IOPAmuNK726vK8oR+HoLKaQIv8iLTVMBEqdmIbU6ThowxBbVU65xw1R98GROzNCmFf0fdaqpMxDG8myx+utjhHbEGq+0O68fWh3L9/j99cRyGQ+UlgbMixO2AxjDSLYgW5e9D99x5AmD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWbIHUaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWbIHUaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1583C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751855393;
	bh=x2lq/8zRjDdWkvcv352HjpApaJTlHVgcWwLmsa6v8Yc=;
	h=To:Subject:From:Date:From;
	b=LWbIHUaAFktR6Cfy5P7LhnPtDEvR6YNbqY5Jl0cf/AwY8jTRvvpBx4XKIp35w/RCv
	 cDUATJVgNZh5xJgBjRwktRQY3MgpxtjYsZA7ePAL8wLtFYNYDrh6l0YgQtqaGEhOpU
	 a6bnPOJoczsiD8CPxAKOxLwp+a0v/ZO9BEqAfVBqHfbByroS097iCMC6WDVAiackiZ
	 tq6m9ngVesFqqchpC9ju0r+qkF/58pnbdDk9lokEalEx5zV0XvlCQ/g5c3/nUzLgk+
	 RJwU61K1gq/coE+ekNykEYKS2NYQnZo40lsFFhc5Ob8bBZV7ReH61YBkCBiMBAAd+s
	 AVYDnlXSo2sbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB15C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175185539357.15487.500828892749630313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ed754b69808059fc50ff372c782733be5cf71f66146789679242231b441a2ac
Date: Mon, 07 Jul 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751855393
