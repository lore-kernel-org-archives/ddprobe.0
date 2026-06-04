Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549103E9F60
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780563874; cv=none; b=V3NzUKteaMoOMLkdURhsnzP8r7kc6+u837ga6gvL0ZWeVf/+6MDW7bHYBSy0AH2uZOsU7VGglKAy34YqJvojbbVW9DFe9XFZKh7E91/K0JebgpxwBH+lvsSE+wbIo8U2b+lfDDa9JgE4Yi7xr3T+AdF5RQxr6RsxKikL0rF79PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780563874; c=relaxed/simple;
	bh=UTpleBWvHwgb0rEXgSwKwH/h3rUq+rn5ZJHNfTGRPT4=;
	h=To:Subject:From:Message-Id:Date; b=tIqb9BY/2a77rHjmFLtrl11DS+oj6ae09XCHu5i4TRUtbEshFfJ/3uTNS053tLMT9uiknUNkhE+KDDdMKX+FvmyMeTrfn/QWUNKz59Ky40lZLB/+CJ+XkFGBZLKfvdw8qfUxCL3ZqyXz9kqctAl/D+yos2sTdv2C3vDGF3j6GNA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S/30qrLX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S/30qrLX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC8FFC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780563874;
	bh=UTpleBWvHwgb0rEXgSwKwH/h3rUq+rn5ZJHNfTGRPT4=;
	h=To:Subject:From:Date:From;
	b=S/30qrLXW9Dv06v8/ta2RPUdmlni+CN+cPlu+NpnM7PFpdXk3sEv9Fn694iJl6pvN
	 wOXWOkgPL0W4gAZLHXid01TTjJaYwo3T6ewaPAdbs7vEalW2sSDPnyMcvns6z23Q5F
	 //x6UHG72Zcj5NIWBGP5T0qF5yYpQq0GbjKFArsMCiFQ6CeoLdC3vXqfAUA8E7VeEy
	 F2ZsRluICGJwexqkdG+rYxeUfCbZuy8xl7V4NeyvvxfHiordW8Euc/j4BUcq46JkwW
	 QEA9Un+TAYbVt2a8dT/i2cxACk4icnoOE0nS7SZUt0IBNtFnzzzbjGW6nJPgYeWXVb
	 +rq0pltfhnudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C11CD6E4A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178056387379.19173.9269023785751884955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e116ca4f5db8005439baf0fb8bbf8dcf9d7694b4ca1ae801338b7ce85a521a78
Date: Thu, 04 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780563873
