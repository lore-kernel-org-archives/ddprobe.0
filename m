Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F56320B818
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731096354; cv=none; b=LP5kALRGrCLtj8CGVNiK6slduAveGKmQvvGcSiVu+uf3WFwrpwo0/mMaxydgGd4vVaW5q2uj/OEVZJscXn7t/Zk79mUKIvZ+auWpw5pXDRJjMWku3SPWpNxTw1f8AyFi1X4szNly+xvPzX1DqlOO+89QOXrszYpDwsDvrm+SGmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731096354; c=relaxed/simple;
	bh=zGECzeixWDBWoHXyFf07rmgmavrIb9Y6mzqBaMmzLM0=;
	h=To:Subject:From:Message-Id:Date; b=d9Ti/oC80pW2oJXzkqzWCB1Lp53NIyVaJMEfg4p96SCuUrDhxuF65P3flH9thUsS4cDCi1IsgeNfgXUM0cdiTdHDAKMyG2GuKrV0akrr3m6WEcA+jFfAE57+I/BF+1OhMSr1ae82IcytErhlacNOAYynCPHTGUXxJ5lGa0nAIxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUuX+pD9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUuX+pD9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4243C4CED0
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731096353;
	bh=zGECzeixWDBWoHXyFf07rmgmavrIb9Y6mzqBaMmzLM0=;
	h=To:Subject:From:Date:From;
	b=gUuX+pD9QxEr96++Gs5UGAUylOaU9HDDUG1uUrnkiFgx9ffLpoB5utyrulvpVNzFr
	 qOUE5+1qt2CTrc13Q4U/165/FkhyPMcX4M6jQbJFLhblCgW3fkAukf3JQBZTfIIcdT
	 ccG6C0FfOecJkvVdjgxvWzwIduw22Vw8MHHlrke9ZmRigx0MHcFn4MsENZUf8b/y6j
	 0RAwBtAnZuDJXgEYvcSFx6mZ/BWxh5pICmhvKl/zNB0n3w42cIDbqobRtlZ8+Ga2EM
	 yS2LObsq33sKJwBJE4yNQa0oUppepzVaP5Rr02h5juCOprJVJkf98UJKD6eSaY5X+M
	 5HMzmYILaX5yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E68D64085
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 20:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173109635358.24772.2827716422532969844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eac0206ef3c70d528df980efb5532510998e134cb7a8c5c3961174e8d4e41ff2
Date: Fri, 08 Nov 2024 20:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731096353
