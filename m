Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 013341E47B7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754320194; cv=none; b=p6eH8trvTlIWj3/EYdSQ5uttxdMODxo2XHLa4jFo3NvUg9uBYr0YLzdGWSqMVYTww46N7HpZvZAdCxidbSjX5pBpuJ+3R11udife+nj2aKzIwxx538LsLtmYU7hWRK9AODqr/F9H2ymWtgTgq/hGrY/GQmse19pjz0QLxGUEIRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754320194; c=relaxed/simple;
	bh=7Xf/PDIeyP4PP5+SApGGn765zkE0gHBEQNyuoP537Uw=;
	h=To:Subject:From:Message-Id:Date; b=MKmTefBte/NViLg3TFpV+kaYqdMTuK1fGjj/NTs21eN8IRVbz5VFVSYtn8Sm9ytNw1g+jIokhAF9Yk0bH2UXx5ug3ZRFIynmJ05P8Awt8FeRgj7qu8jg6dlR0b9cDDggSdVKR3tFpgNcjvKd7z3d6c1ua0GhsduSHMjPezFJqlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGmHiim0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGmHiim0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E46C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754320193;
	bh=7Xf/PDIeyP4PP5+SApGGn765zkE0gHBEQNyuoP537Uw=;
	h=To:Subject:From:Date:From;
	b=jGmHiim0hAyNYyI83AMOsioGUN5tcM29hTZ8aKEX4dIQxfhFUbXW4PStatIwJWuu+
	 WfGBtNV6BE82RLUO2RLI9kmC+/jgICyNKiunvnZD2RqB0JXveRJk26dbK6sAusveV9
	 IMYvZpwb6WuKhAgfquIfLZzZW5dWwAUlsHvctTJ2ZBqrsVpKdWlHNM7q70UZMwSb8Z
	 zLPiEuX1Cxdc42yXrgzBRPeU0+W+pf07Pne8+Dee8+yRmOcyuPLNFWV2MmIBaK/qaS
	 CrmDr1TtoiMLmZ5C6Tf0GmuztndriPrcR+WFsy8LApzlJRonutKGcwgaZAYFPpeI/b
	 p9n3MIAxFREAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91398C87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 15:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175432019358.17966.7932568249038843785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88283d9419b0a80509fcfc782f4443c41e4b961a6ff8246f9d266072c8ae8625
Date: Mon, 04 Aug 2025 15:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754320193
