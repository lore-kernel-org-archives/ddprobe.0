Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 531634B3C90
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792177834; cv=none; b=KJmRekr9jgmR/0e4HgTpplr2TfqNqktjPZRXh5mNn5fbVXEZmDodVuLCX5EGt/wpyzpNVGU0SjEc2YXTiTTLw1LHUYxTJo3reZNN5004lZuyhEvfJc88oinpnOVcMck/LDr7Ed2Cx5/E1t7dVuiHbPMz+Zr6ViC1eR6L3v1eGUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792177834; c=relaxed/simple;
	bh=8aQ6i3rPOXAe9wRFRclC06tHYEd/iF7FO7t/OJKJAos=;
	h=To:Subject:From:Message-Id:Date; b=eMAw5PtOkmj1cIZxWwkVK/gRpBynlol++g7vbwTLPGLAYcbBk/fvaUC+G+AYUeWaz7TBNZZcD+7tS6MVVk1n4Wv+sK/LJvx00dGNhPPdPpORl+RkZwXqoSwLaCSuOIjU3Wpi+ve/zOgfE7X/oMXY4wGdSrJ13/SfV2cqsIfmkYY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GMkUdITP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GMkUdITP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB0C8C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792177833;
	bh=8aQ6i3rPOXAe9wRFRclC06tHYEd/iF7FO7t/OJKJAos=;
	h=To:Subject:From:Date:From;
	b=GMkUdITPp4UkjTqB57NjrW5E/0BGMw2r4s8Z1YEn24tQgOqXzAjd11b3xgkqDcXmc
	 3WjDk9tMJ4/4swzw0KyGGl0ry10YRY5NTo8T6jFxyPNma8F+oUv19gPIicVfbeFOk4
	 FvyXJzwwuHyfwQsAAJcKuAOy6KYJut+swVCwQhi2YFvc5R807xwHugCe+HcAG4WUhR
	 WNjUbYxndU3zLLt5ua1U/c8yUkew+OAyFZNkwgmSn8WgpjvPGgA6Oxlmz/BL546bbB
	 y9TO5VINTMC3wB+NBxZ6Av0ipoctt0OsBy/sPUNGEaFPROrPeQTrqwmhqB4w3u9qTF
	 rXu6oaE2VqhXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41D9CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217783370.22270.17891170586778337326.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffc38ca6be14c351a568d4d3a67f654f7d4c858a6f0314e42bae41197a008430
Date: Fri, 16 Oct 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792177833
