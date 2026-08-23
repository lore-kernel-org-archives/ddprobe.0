Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 481642FFF9D
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787500234; cv=none; b=IifWF3apRCFtit8eUK8QJpT2IzrXWeAYOU//7EgPgN2ogdq69zec+JgXhRsuPSRtLGGEDAJmbcwP1CP2NmfgS8LBzrWpC3HRdRAV2JxGOGq+KUQCSACKxr3SBEikaNURm9I7AiwplXme63W0sHAQVCFs0hTxlLE+M1nYrAe5Xxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787500234; c=relaxed/simple;
	bh=RViKoja3uwML6k/XMv4TpBQvorn/lmOdFU4+30vRChw=;
	h=To:Subject:From:Message-Id:Date; b=PMSrhHdCR7tso10/33C8krzGRt+vsYz0EFSD2uGX3miVeZckwZvx6nXG1kEgYB8H6DgBCyafzpjIczzUvoj/3Xy8CJsP9a/0z6+WK/RXiiw7djE1G/lmSjpjm3CWFGFRxCo9wc9xplaB2qSc/XfjHlBgpDa5O/lZ4geFxrKzcVw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tsw8U1D1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tsw8U1D1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE757C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787500233;
	bh=RViKoja3uwML6k/XMv4TpBQvorn/lmOdFU4+30vRChw=;
	h=To:Subject:From:Date:From;
	b=Tsw8U1D1T3lGYGb27S3h4Brvyvv2s+6RaB2fASiPlb3xL/TRtX1BeswYLtYJg8euG
	 xZ+ZKJm+A9YZwqQpkgPcW2p/6+3gN0XsXcFW00v6jIUjr2pP0U6Yn7hErbvNmBAXxQ
	 DxCLO8el4EW4RiNlzmknwq561ApLpxNh4QrhSgMuuE/BVSCoypb3Bf2e6nT7vEr67h
	 5JzfQiH8xXIUS9E5AUzs+P5oBn2dHTVNVKeK4VsAuSUeClR2wfZhdodenP8xz31nFS
	 5PI5XRsuLbIHE4b6IdCxr+HTCVB7YUbS8cNcO+g/2EQWDK7CtXur7yJLple0IFug1O
	 DQKKv7PsWA9kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAF23C5DF97
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 15:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178750023369.5615.7578476452884194921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91601713df9e0299c8c71c5ba8b28ee5949cc6181f12ae08c70da935a17cc378
Date: Sun, 23 Aug 2026 15:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787500233
