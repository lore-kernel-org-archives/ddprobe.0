Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67F9B383A9
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720260323; cv=none; b=ldKrD54mVuiEOAfCRvRMKD9aWi7Z1PAtYqgIFpkg82Ds+LeSO78oyKzAmamPBpRurYd57QaAVpUZNAKVxNexr2QU6xtp3YcQuRoE2d2P9v0D9Fufoh0GeXJ5U6XpA5foKHCbdlguWO+tdVrOpWusKh8LmJY7TS9NyZMRxpVsLRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720260323; c=relaxed/simple;
	bh=2MjwTkuFjIKJjJwNq62AQlynzP6MPV8j+W52KeesR/o=;
	h=To:Subject:From:Message-Id:Date; b=Seju/KQUUtZUb3cvjLL7t1EzR4mZXl1aLMTfzlnzz0gc53iDWFRo2OgogpqNlN+CWVlvazkHxhv6xw1mAJ2W8nzS8j55XMgAprasy31i0JeumXWXT9SCe1auwUKYoSUlVrqWNwW6HKOlQepPIiwf3e/KhBJvArjd1H5ePkqA+ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxXY+pP7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxXY+pP7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB8E3C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720260322;
	bh=2MjwTkuFjIKJjJwNq62AQlynzP6MPV8j+W52KeesR/o=;
	h=To:Subject:From:Date:From;
	b=OxXY+pP7krESXtVQOXSmB2DL25nlMaIJv7sq6AxYHLyXV+x+H5lbFoECGQGN8QecK
	 PKdPxKmwevsvMtvpRi4zhCk62YA6X5SUkTa7jFGelkEIrLubTtGSItGdQxzVp35TKH
	 SorKjQv+fTQO9cFtfI6mx8tEoR1hoqVJjzkWW/qWjqCIKWxJoBEI0enxabaNSkIQw2
	 xcTribME7BgwfWbmnC8BvOGv31BythDutKPEEfRIDslCWxBlbX9nuzrQQOPziFeVCB
	 uZnwExW4k9jVIz3t0MUateUftwq6SEfgZf4PQT9+ZPp9kjMDxtj0m1Ec3QEgSyw7P6
	 D03U0lyA/zCdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4278C2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172026032276.26603.15173915628435801731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e6ce9743d92c4b4ac49218c961e36ef39ac321ca3b7e3386989f46b1ca7cf1c
Date: Sat, 06 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720260322
