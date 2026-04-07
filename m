Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A5E19E819
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775525734; cv=none; b=BgOs/FyjTJmVMHbIHu/yRLoJKklnZGzIxM1GofWSQrTs7laMybV1OEJQkkDWrIxbKmJdf59wjjrwUnpsgPRMkAUzfmgPvsDAvstDYJ44tHQRfq999mTnbYpLtlM5vo/vW1Dx7CjyAC84vbGxfkaCHpeex8DOJi37jpl+0b+VKKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775525734; c=relaxed/simple;
	bh=EZvyk0TG7zkcltRqH+/WAoRUIRNhr5yDweGvMS15pPk=;
	h=To:Subject:From:Message-Id:Date; b=oRxJjANlDc7jdXmOtFgT+LqBxdFdn3LdoMCrHrP/gq3Q9Hcsp7EmUa7jGTGUEqlFuUx64UOQenIWfnMEVvHJvZ6xjXwG92pV2j2AE71diCdFFkIqnp9284cStfM/7H/29wWveU51t9LRBaMp6UznfnTZLjiX8qORJIo+k0yq+60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Blb3x3nl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Blb3x3nl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C566EC4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775525733;
	bh=EZvyk0TG7zkcltRqH+/WAoRUIRNhr5yDweGvMS15pPk=;
	h=To:Subject:From:Date:From;
	b=Blb3x3nlT+5wmGm70IAdcyo4gREiSufwbHP1RWRYnWvnxupZ3u4JGJKzM4y8UL5ai
	 Mu0xbYekIXkdN4ZQS7IPGXc4pcd/ZUccWDhznzlaDXm8XNYowS5oiU3eu/at0fWsfO
	 kgXOLM0gQgMbzYDQhZxOisjylWgjMnLCuD7k9H/1tq1p44wVV/B6jHxAhm1OraWUc+
	 WHAozcpGiqYGuuiYfRcXiORsdip50w4lM16UvFFMVBIa0VxvE3mcticTUVNOXtDUiO
	 r7idbEp1eF7YNg2S+DhBJwmr1r8CmPIJI+PRL3RB91af0nU+5EOODtoc2fY2Vbe5fy
	 RJXEijJXS8yRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1E3FB5173
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 01:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177552573369.29311.15603493671768567993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 141f5c4e7764cb677725e38b546d5352fda512a5a34d7808319a9996b54284c0
Date: Tue, 07 Apr 2026 01:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775525733
