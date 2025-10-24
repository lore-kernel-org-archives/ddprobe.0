Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DDFE3101A8
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761302394; cv=none; b=Z5kRw/xU+zoBgYuEiiC24zKnQHNpyLK0fmUCD8vbXK0rGhbfpgHEJzVzLU8aSuzbNKwY/l1LpRgrhi2ZVI3Inlkbz0EubaERIsE38/mz/WtnVVpsTAsq9YNJwvATXJZevRMXjxlWZ1+NT2HIklc4sNz5+WqpjmeJLr9N7AgVaaA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761302394; c=relaxed/simple;
	bh=94rx/CjVbb8oMrxACw1KN/iC3D4RkbTeTaBK2GMZZoY=;
	h=To:Subject:From:Message-Id:Date; b=HxBRbc+V204Gw/Cp0R4OoAJ56XElbRVHQ6NVBFcQ2DM6O5ulhwq1uPWLUkBaT1y/de3B3q9O9LIkPjKHRiDZm/3a3uxDjvKL9JuRnFFg7aufVnSE2TUQsY+9S6JjVB2lUwqq0MkcQWO5yOaT/W9AfyoGu6ouNWyLxVKNBeyo2H0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W8yXgiQt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W8yXgiQt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A30C0C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761302393;
	bh=94rx/CjVbb8oMrxACw1KN/iC3D4RkbTeTaBK2GMZZoY=;
	h=To:Subject:From:Date:From;
	b=W8yXgiQt/eNGY8ve8+Kc/Hr6bQsLL7RcD6H8fsFedjm/r4+upkAnvlNZUFifiFf1O
	 YAlj7ZsA+/AZKc92RJJFZJ/dYkRN/S2iWe7oftvwAGpqFTcOmIu1mjIHVyt9HFQYKH
	 PRI4mih8tZld8vczHkv2JYLkFatV6BnvREBU5NobPr0lpFd3R3kXZJB0kWhBtdOfgh
	 zrWrGSRhIb4dHhnyxLFTQErHlcgpwagiOr4aI4BBPnoGSNzCdcyBebynWh73kRwc3T
	 LyKj2p/vy4DBrsMdWTSJfKmKAgPls8O9I+Aj8jNSAEGg0eOrIjCiTY7lr+5kmZDTrC
	 Uhi7tvkOjD3lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CCFCCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130239358.1113.8638628371400923705.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4da2cee86422c1c7a9fa2449e3432559c88f59323110cef8957ad8f7ae1b7f47
Date: Fri, 24 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761302393
