Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43F9B3594F
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743536994; cv=none; b=hy0j3XrnNh3B7CoNuTb7liMdpgmG8SlXm7r6dHwm/XCVxilRrjvnYVNCJIy1ws+3wSeyDbu9eZfp183nmBE3+E3Zvun0AfWiKYrZ952FzDxf6reismWs5SG6o0ZQU+88KvUcpkf8MSHlgtFBgZe4+lT7vTpjjQZUg6+0nfi+ZHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743536994; c=relaxed/simple;
	bh=nRC1Y4afkHBWdsFLQu2BSDV9wTgO715M2LCzRlMnYTY=;
	h=To:Subject:From:Message-Id:Date; b=Sx9x4I5qIokLM8NvTWdILQpQDMYkxn76u0bKa5RNQmF9OXrordEJSPGfQFKGyF7pTmNYu1qOPCj9Xqc1ZINjU3iQUkcobuD8mLE+W5fqO+D0WE1PYU6om0P444WdKWbPj6/8g4tja0ya/aHcTL6vDifGZvLLb8YaE9SBZMBUEmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nC4uuvvC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nC4uuvvC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE315C4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743536993;
	bh=nRC1Y4afkHBWdsFLQu2BSDV9wTgO715M2LCzRlMnYTY=;
	h=To:Subject:From:Date:From;
	b=nC4uuvvCGGaEClanCPgT3ReqYv1ha3P7h9cJIIUtyfNipxQRKdQpaHOAvzc3KWXQx
	 2uM3AK6t1h+SZI8O3wk1DNLoNUtt4wBR7bwyWNcbTD05Pw5jEtUrwvcTXfPlBQO3ew
	 2RPER6S0AvuvmSB4d5yXP9qAAUDZvDNmzDOsdKR4coMRQvDo/3IWHSt545Z26G9Qqr
	 0o8cLnduCQZmJmtLJo6e1niTswLDaasC15M3BYJuSQNMyyyHIhqeW2o4MPJlMpoewt
	 q4BRy2pTa/54Xg/49pBgjTRUqnG4wXRU9pwS6HjikpEYb1kLS6zlVZJaVdC4bpeeq8
	 0a0BPGAnb/dUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9722AC36010
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174353699359.7316.16977184797475518578.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3de854a340bb8c4f5b142da7e2edd1b8d0e190f345b7b73c4687a9e8bb920dcb
Date: Tue, 01 Apr 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743536993
