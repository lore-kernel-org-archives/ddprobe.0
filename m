Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5E435CBC3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786741834; cv=none; b=AiEKRrODbMLH90FFYd3qLz+ccd9L5rEstfDRTRRXTlVg0eZ3guO8nMp9d+sfDQIFn9fWctdV3w4g0peaxqegpU358a7KldSro/DnSFM8v8a2w+nKGLbsfmAUNlYmiNDtI2L4GbcNcz6OLlNCHDBH9ngzR25Mi/eH1eonUQVK32Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786741834; c=relaxed/simple;
	bh=B6L+01tryyycNpFnsIkJNGEdUhQOMMlg6BQgW1ZRN7g=;
	h=To:Subject:From:Message-Id:Date; b=ghNGc0P273nGGv6HZH0EGjn7pb5ZQRF0EmywV2GWUs9soSOhCD9UPhHbghf4onj20yxCEYw4bG/HMzEkvmIiMRYGVWEx2YVPzL9yMlR9JDi2ZjmEdPtk15nLAsk0rMEFzlbQAZt+QP/strPiCs/k04C43URCo01OmnMRygteQ3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LAwH31bt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LAwH31bt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3974C2BCC7
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786741833;
	bh=B6L+01tryyycNpFnsIkJNGEdUhQOMMlg6BQgW1ZRN7g=;
	h=To:Subject:From:Date:From;
	b=LAwH31btcqHQhqLHb+9NWM78nFEl88P38UwhSZeuD+NwR7IEKDuZTjiWdjH/ly0jl
	 beWiWr8y3sLEJKmBrxX2AqILQGMd7IJpFHj0S7ouovgg+2jYUkgGZCp6pj+f74usTp
	 v9bX3hNPUefI3SPWKB6SCiJjM1YK0W94zQovBK9ntfHNFdYcFm2fJhcur6ZX3b20ng
	 P0r4iv8WZ1frcxwz97vCoAPsiRApxbmlJ0oy5C2tVnQKAm2mkCw/j8FhvGbf/+fh6j
	 wJ6fxCWR+Ag3/59JQ2Eg+ZkWRnHTgQRRXT2jdb7G5QxSC/yzfLCN2o5dOdX1mZwkY6
	 6ipiLffvMW2Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA3BC5CFC1
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 21:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178674183368.1778.8736953566078646518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f9b1568a52243e5843aafba525a656cf23e7dbd358f05162148799393667360
Date: Fri, 14 Aug 2026 21:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786741833
