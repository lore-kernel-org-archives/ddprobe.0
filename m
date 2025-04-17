Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4939819AA5D
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744853394; cv=none; b=jIJ+LHn53Yncq0zOfX0KPZvufmQqNc97voPM+GLa9fI/crxG0I2u3qMVT1fBf8yoidl9HdWuWq5nLH0xBufI6gc/5go2JMw7Fn+hs34mlHFGzuYfVl3deTlHliB2ybGVWrUSRZne+GMTuKQSwcispD+FFSDfsKDMBn+5v4Ue2LM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744853394; c=relaxed/simple;
	bh=SUiESVfzmLihWGWjWGHh4JfYdkrCjjkJcMuntKN1l0U=;
	h=To:Subject:From:Message-Id:Date; b=ZrUaYDvP9T0B7kZ04xGzuGZ1cEKg5r/Cz/PJJkPeVvMi1BlUL1rd+SzrY/v1urKpGJ16IF4DUGE9hIQnVIkSFhQQznjuoBjgh0Sx3mf0qbR5e/O99AKgq2J3vqxMWM66Rih/1+55GoAfo/nVLIHPcvOxdl0fzMyMXl0wOmDqVvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L2SU8A5A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L2SU8A5A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B001FC4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744853393;
	bh=SUiESVfzmLihWGWjWGHh4JfYdkrCjjkJcMuntKN1l0U=;
	h=To:Subject:From:Date:From;
	b=L2SU8A5ADINB5tiwuEFnaJwxqNuPtd7coKhoQDuQ5bpAeQrVab0+6UCqOz3DA9y+J
	 60TEzZWuI1oDiwD29HPLIU+UOzI253VvDA69J0I9SNm5JOf2+VSP9nQS7IMbMlk3e5
	 yun68PnveGm/mqLY0mt13KWtrJs4j9Zbtfv9CM6BXL1vCfYWcmAk6kUA4yFzJYOWbC
	 dWsU0wxjFoh0uXVwxnWeqQ1gzSXcEIKZ53BkSH6lUupq5BVjptDnWKLY73uda3KlK9
	 TbVHW5870G5xxjgn9Y2Rgdt5gtJnm/L1WH4BQ0IDFh6IPZ16w4BrETSlbNjHDQBbLI
	 S0NgEgNi5D6JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A023DC369C2
	for <ddprobe@lists.linux.dev>; Thu, 17 Apr 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174485339363.25959.2445139844210276446.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75cb85c2c3285f1c2992d9803f216dceb071f87bbafcb6bcf6a0af3199c5131f
Date: Thu, 17 Apr 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744853393
