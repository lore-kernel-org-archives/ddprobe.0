Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5CD1AAE28
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781379394; cv=none; b=nVNN5TsdoXzcbdOwT0Jrl+2zqHAGIAa2YORWYa0E+EiZSFK4yM9vIpbbUyipaNtB3ornuvnGT9U2jXrhym/36KYjQ3H1zWDhJUZX8CXF+B5aFnJZhI0qJMwpJH0ZXXY6+UIcLYY7FjmIDR9pW0UNGcYGh8bl5x+fqjAhXNmc8A4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781379394; c=relaxed/simple;
	bh=C1ASQcEP+5NXFJ2leAGaJeuJ66Jf85JL9jUFHks3WwQ=;
	h=To:Subject:From:Message-Id:Date; b=QUbJD3PKEKkSG0xo0DTJ628qp+wdrP2wBvE60hetPBqCfyhxfNoG0NTrtoz6KeMkTNEVxvxyJtvtyg11zj115KzReueCWjj7o52TnXKRwxA8QBtXwxrhvEPnFl4sDBvm3ZRYt0+8VQSz+qyI4MIpgdYqGPI+VnzaMnDgeE5viHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E0ViDEiL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E0ViDEiL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B07C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781379393;
	bh=C1ASQcEP+5NXFJ2leAGaJeuJ66Jf85JL9jUFHks3WwQ=;
	h=To:Subject:From:Date:From;
	b=E0ViDEiLgvkMnx534jtsD+Un+2TlVcZVAegfVLh9YkAlSgTqg97EhHJVMvNJlAvPq
	 PBIJ5ulHpckUR3uFgR1YQrlYfJInV8A6M50CyclLkI00sEVkZJs8Kf5PhvTgeqg7IM
	 nVkSoFjW7xLt9Id6r3F4sc57Hr8BdseEUokUHi7Xmf2eGbHKGO9K7dxTHLNJZrhWrK
	 PvwMBobidlZm4IdB2X3l8zRHfeH0cq4vQB8NUZFBUidOq42U1/55V+ts1QbolXRAE9
	 PFMLvAoet5//6VBPC2rjl22cjrWFB8hPaSlHoC9Z/IKPb/H0qFxDgxRisSXqYmI7s5
	 Qt9eSy0xv8PjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6BD8CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178137939367.29952.6924496353965772036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 515d8ee2b57ab1093f0d104a8f54364b7f84d79ba264e57dec9bdf3340eba6bc
Date: Sat, 13 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781379393
