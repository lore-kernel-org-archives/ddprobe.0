Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5FBD839E9B4
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778590234; cv=none; b=ist6mDhM0tTyI66vGbx0znQ+REPIPFJ0S6iG+KpipstowRrU3sMfbJFS9DKlbc0RLXT2MHBjVaNmGyEJMnGYXnGdKHOviLCL5EeIScUr29qPnNFyDc/sMsk4cihcl29VkD0PewYYQWB4NqK4XeGRU8t2qpLSbefGUcko59Y3hmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778590234; c=relaxed/simple;
	bh=W5TVlbHSd/FhhaUASiVvhH8eKFxmVAQktuqzYy58Uxw=;
	h=To:Subject:From:Message-Id:Date; b=pJob9S37D16FT4jdoVmBuXNsm1FZDTvoEx99c8rB/4RLbTiYZsbQeRN4BJmcuLLdgZW5wd7LTZc1+Aj58NESHXk2W+QEUtnAAkI1WySaSkebQqXZqTSV2Di2BNp+sUgG7wBxdTZjmo95U8vgayHmqLlYJlfvs0YzN0iVNegcNwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nHi4OvE3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nHi4OvE3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA5ABC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778590233;
	bh=W5TVlbHSd/FhhaUASiVvhH8eKFxmVAQktuqzYy58Uxw=;
	h=To:Subject:From:Date:From;
	b=nHi4OvE3Y+rWZqHmqzlha9pVK4bBW5ZXWAIQPz1s0pCS2CgILwSwHOy7bu8diZRhh
	 ipkuEn4f4EnnPZCBKeSVEVV03qhV9iBvQBcDmFqA6fTv7Z0961UUTB+PEiDQJNzb9A
	 kkoeRPB+O/2C9kQp4dh1M+J43b/d9BVSl8Ag8HcqDNtZSMofv1OAkYkHi8M+up3Tbv
	 F0fsLhRHtDhSK8OOx4RotS1wmBCKN2zWsaa0dO2EAaMApJUmeKFLBs+rQT/XCSGOxC
	 rMNeyvI84K+6x/tpE2IIaYs+GB1p7rxI7KzVbS73GdTtA5vwjiDU5dw4swlxYwB/NW
	 MIrrVAnJ7heFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5DDCD4F24
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 12:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177859023368.30110.2447222316014097361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d948072114a9166d2af724e278d947e4ea224163d0e3169f365b40136f85597
Date: Tue, 12 May 2026 12:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778590233
