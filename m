Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BA0D42B31F
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782981514; cv=none; b=tYyvPttwNhpFudOpNEhObDFC3dP/w1qUXrfdHgsubQ87bnUuqCTaY3JmEtju/xXOzFIK2mkwPswVAZgdt1bMUhVFa3lIjzSZfQckoGHxAQECheYdwC2Hbi9MQqCioD1ADcOHJP+Tewgz8HsjMxOsfuIkp5Gs56vZYJdK//qU2dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782981514; c=relaxed/simple;
	bh=M+wrDfdbVmSlsyBNhwW+C6++qBZ+ccm5p2ZorFEHB9o=;
	h=To:Subject:From:Message-Id:Date; b=qjKCpukw4jEXDjmgneQZHPGjKj3H96A9z6D77YWsLqCAv0V/rRq+3YTZMu6VaQ/e12QtHHlIUOhQFApc0iI0AfC3jQ4jeV2HiApRRylUynVn0xqEfzk9VFXasNctphNfM1N1KatAP5taKTEX8lW9PxwW6diZlmbdNHuR/rk0DnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGpSsAYd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGpSsAYd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA1B1C19425
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782981513;
	bh=M+wrDfdbVmSlsyBNhwW+C6++qBZ+ccm5p2ZorFEHB9o=;
	h=To:Subject:From:Date:From;
	b=bGpSsAYdJjYlA7fkiKpN4o7iDSJ7rIAiAVoYT4bs+daTsFtIG+vsdZJEWsok+gg7t
	 8/4AhlmrCbGRS4MvRfPEhLhoofOD0cpPJYK3rTJ1YjsEsZ2wf2ewRyOXdfSO8Wjwy3
	 0TY1Ap5cnwW71J/dGuf0iv5uQkmRHX0V2ceEtEpwwg2zLeN9LRqdKBHiVlmYaQqa6x
	 JaqfuBdqGVSFIIpGjZnQfZX5mzX46Zqn9C5Hu3bQ4UH8mSLqoC/0dmr10Qs5ieoAPF
	 yKwojkMDikk+mrSelXvZn65hHJd0fVYVRx/sNK8OPvYato2EReRnwU4Qln2XmMkUS7
	 1+omWIkkq1akQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87FEC43458
	for <ddprobe@lists.linux.dev>; Thu,  2 Jul 2026 08:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178298151368.30287.77333804470759427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e750c5ccc6fd0334c8cfa402aac8ecb3a75d1797fb5b80eb82487880acda0ba4
Date: Thu, 02 Jul 2026 08:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782981513
