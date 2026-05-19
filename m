Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B1FD2EFDA6
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779155434; cv=none; b=YUR8vVjXmRn7PN3zSD8tkQOcup5SVk/Q8Dgukbmolz9lFAEi1nb1yTrV6tevsPq6824Z76f8NopdEySxcQBmuUEbdqERd3TjUAv2P6CcdHKUQAXfJNsw/wTVrs47BdHv/dLHaVSgyDfSbzJd8ZlHRYOmhBrDFtuGrOO+DVqccCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779155434; c=relaxed/simple;
	bh=UL+MZK6mxD3LD0VS8nYuz4Pq+bLR/OZHHy419OlTGM4=;
	h=To:Subject:From:Message-Id:Date; b=B9AWwJK4qnH25sToq3bLBc8lmMqDvQvYrt3W9rlc8WS9XdBGARsX9Fqe+gpF3eGxeYEWvRAqTrFEgj+L2C20A1D9dW/1Rl5xgsDHyBB9GGSvLjjLmAkIfvxHvs6zM/a4Su0ESFyea8kYwMMrgtciyRxfo+aadO/k1IgkwleZrW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HCekXopy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HCekXopy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B778BC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779155433;
	bh=UL+MZK6mxD3LD0VS8nYuz4Pq+bLR/OZHHy419OlTGM4=;
	h=To:Subject:From:Date:From;
	b=HCekXopy0SgPyNC6qiTILUVvNN8wYY3tpOArevHV1zI7eK6Mjg1oQsy92Wr1YfN2n
	 AD2U4DK1azDlN9g1N9uqzzjsUQsr7kg3qQgmjcDD6HYVroDEW8HMcIiMQGfSctG66o
	 u2yxR/mgbW+ZMFleUM8ioNqDtyJbDNJTCpvmrPKIBG8PcEPB3B+KmNUWeqxrgwXAQh
	 SdyXZDsRFtYbUXNegyUX8RdgJHWtDa+JmMN76u86Gy0oO9Kw0WrLxWGDZknAdmiTYo
	 kzmk0eL9S6iQ29S12aUkMquMNbUhZmoE0Zrg81In7ltAO5856DcZhA9hDyzWcC5CHk
	 Cou3pyfBCL30Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9588CD343F
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177915543368.23573.15579630705318733497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8b78276d8153cb783b50c704930047dbdd8f8bec692241c7874cdbd13b3f6ed
Date: Tue, 19 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779155433
