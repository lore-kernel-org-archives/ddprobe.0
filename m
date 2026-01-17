Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2297F264A65
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768687434; cv=none; b=ViRbis4q9Wc9QU1JwC39GPvq62mmzCfjE8wPSi34uwrmsiw+dKdfNt2IPkJFtnRxsBDjXcDCo2x+L04Sfqq/rjvUA6+pFosT/wjZvQfjktXOXN/OqTgj7nlPhVce2vaZ4bmOtdoyKkMqoe77MUz3kxU2rsbacQ/EfggG5/Bf4r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768687434; c=relaxed/simple;
	bh=HJYTeSp5O/rteFDj84oRU7AxUa4custoI6Yv02AQ0s8=;
	h=To:Subject:From:Message-Id:Date; b=kxfzW+PLcu6GGQ42UIrPpwdtlXGonIsTlY6cEXo5+cnaAsYxsTXVAIBCGVGckW7Pe8mVfZCQzS/Q6w+minPEhk7NX2yq3wt9Qn00Yhjcn/5+AR+baYlp8k50BLJXPCzTLrB3s2FJAeekgFNDMVvK461wv0BM8gqLS0VIfQgM/64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UP2w1qV4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UP2w1qV4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89D5C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768687433;
	bh=HJYTeSp5O/rteFDj84oRU7AxUa4custoI6Yv02AQ0s8=;
	h=To:Subject:From:Date:From;
	b=UP2w1qV4nF0PBs1+eyFXsNcUuX9/8MZ0f66PkFSubBaGcvPVhwAWU8ozxc04EYrWl
	 8VQdSXnvqfEz71kgmfjaTX3lggs1uKiXB9vHmXTeTi1v1mKbNFeLLr2jDOu2mf3YVa
	 e59+h6cSOV13Hg19YAXQG+j1ZADwHKVBL4dgRGMTLt7dDx8ovTaGMjMDqcVydaAD2I
	 xh9084RYCHTeax3SjrLAjcCd64hmPNJrZghzsm5AZXp66yaMVfqsNkYIzE3cgySH8H
	 eopLfEe7xI1HsVAo+k0b8yOOQQnMe0IVnkLjlS9Lcx5mkbzzbo3af2o66aWO7U+8wu
	 2g4oQOAHm0xsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 965C8CA5FE0
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176868743358.16898.5212648984627744162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d2039a38aebbaeb18ae07834601ec20bbe711ee24a07ef3ec8c9cdc8aa1ecf7
Date: Sat, 17 Jan 2026 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768687433
