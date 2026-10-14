Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7461F4ACC62
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791979234; cv=none; b=TcN9RdFwHpGWKYNDnI/RFnp3gWERNf95M8xzQ+tk5+tOV1Y3dvsdad5WH4vJa3zcph4ElVTh+Va0p/oj7DUWjSDRRcEb2P98/flSIvMq1/qiGCNP4q7bRyCM9+q90om1hrBnS60bY1/DrdIcbTkuqbTqFqGPRmKGuDjyQYpFUeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791979234; c=relaxed/simple;
	bh=qa0G370g6s6ELn/VnQKaywuAZmMGvoEwsbrYjDKMxDM=;
	h=To:Subject:From:Message-Id:Date; b=fbO6jcifwf7g9OtLHvtX9vR5GPMnfd/ySBLtmzuPcJZhxMyjqo4eyGGxaJ56R+LnTsxFzWNe3vEmUKmwIfnmJ/cj2GJVDM9ZOhYkz3T1VUTFly89HePqURDh+BEsAf30e9UhAGjwDWaf4ItD9tCD0iIDl2Mu+vUZOHk4sYCqMiE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KvOjaA8P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KvOjaA8P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE118C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791979233;
	bh=qa0G370g6s6ELn/VnQKaywuAZmMGvoEwsbrYjDKMxDM=;
	h=To:Subject:From:Date:From;
	b=KvOjaA8PMSJhBg0JGXe7SWDHSbSA6X91y2eWnWIAdvDDJ/ip3stuMip8G5Sj3K8cM
	 mulqh14WulVL6IWRp+n0fX+JKKVEHuj3Ooo9q2Wcj23Z9Sm2miygxzEDLBOxmtf0aj
	 CuiQuQc9IeUhzigJeGtG37oUNyypazSrJjWpZQ4ltp2PP+qpR6UmfsvSJHhpnLlHmR
	 EvjPyeVQR55hX1wuih/O5V930y6BSpxDWjsnACEJP8xkThbudnCuYm6VSziWvtFb04
	 myOrxiSWY+LKzJA7A6NUihsrsZKWx9aXAGxqefJnuEUfNS+EIajZyspKAj+G5dZXmT
	 isw/VnjnFWFlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB90FCC6B1A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179197923369.13302.3858961472407028408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5af300492ecf7e151406a876d64512c34ea8db9b78c43127f62f7909cda817f5
Date: Wed, 14 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791979233
