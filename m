Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B042125AA
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784418514; cv=none; b=rG6PGIy9lEgUY0V6j18hXnEQjhO4tESeOWb3w6oDfuG8zNpmPFKJMm0lEZxf8MoT/j2cXfaUyIbs3YmXXgGoAj2ay04v9oySgz0LFnQ5dX3+ntfMBbeKPEh+tNVkbSGv4TYPxLiUt+EYvIBm/t3fquYUukr+VP3pIrr040X34GU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784418514; c=relaxed/simple;
	bh=qAdrQ5nhOylfLjS+g9xWexpD03Gi2unxSD0BozBuOeU=;
	h=To:Subject:From:Message-Id:Date; b=WI/IioTdwxtOH6UwA4qvDxPq9mvV39Ik6pvVywA4Vj0XRL5XLdphT4Y1FxJKPMv5ftGHwmftYz9asAYKdeW5nWBWTF9etbuJr1wi6ZvTj0M2ocsPAefd7K5l69HnF+aapAPHQ2UwiijUwXYprYCXsh1fDSSFuLo0J8NJuHra2e4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AShX+Oxn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AShX+Oxn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD2E0C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784418513;
	bh=qAdrQ5nhOylfLjS+g9xWexpD03Gi2unxSD0BozBuOeU=;
	h=To:Subject:From:Date:From;
	b=AShX+OxnC+XH21l2dLxzuNKUoJJWSlNeI3oz1Cr162JAQ25TcWshTxLUBDEvF2VR6
	 ERzIjpwbhY8rRQWKdeoGSCvjnbseqBuqVXgjTHn6hs9jcwjIyrKMmeeChO5TXMALvo
	 3xAaidqTU+ZwN2PbpWcT8Bkvg+usBNudsrC5t7geniSwC6G3dgznGvPxdwOe1XRevL
	 aza9EpSgNOrQ2NlfoMM7syG0q6WXArwrgtWPKJTAJFqBqwOdkVLy/TcDfn281jwuiJ
	 BwilYGMy9hzTXEVFzeANBVcPjlxu9d3JbyrpQH/g7gJXOJ0LE2iaiyM9E6ysDbcPZZ
	 bUNtlmLWgWTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9404C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 23:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441851368.31205.2911544666241526972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca405c914c585f9d6d11163a08ace421400aeacf33f0552498a163d25dc01cb0
Date: Sat, 18 Jul 2026 23:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784418513
