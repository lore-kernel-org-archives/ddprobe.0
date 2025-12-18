Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4926081ACA
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766079234; cv=none; b=btjZ4Ou8rZILNPKNbS96+bQzxZJbl2AW/ZcYfCHjojYpDC4iyyKiFRPUtc7c5j1+AmuOch05Br0k4a4FM9eZURyVNH4yNWTe2gAcPif5Djc6EX0hGdtZfis2+gwjuk8wyfVHaunReY6NiCwxzmLv1CF6k7jcxPk3SpBv6tD3OF4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766079234; c=relaxed/simple;
	bh=x6GWlGdS9a+8hwMcdYnEkIe1EF2a2ob7bqtZXnCxXt0=;
	h=To:Subject:From:Message-Id:Date; b=e/OS1NmeCcm2UDJ/LVe5o/p5ehf7G0XwxNbdkIPSsCiKFCFmu2FrzZ7Unrv3yFpJgYJNTt7lgSaFeVE6mI5JXol/3qXJFS6OUJ//THnG0/Zk+yyOg05CUy6SsokTAevS0yxUOJ9r0Q9Sja4HYfvEk8rezIDNV7u2FiqkVGp7G0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOaTJJJc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WOaTJJJc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A918DC4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766079233;
	bh=x6GWlGdS9a+8hwMcdYnEkIe1EF2a2ob7bqtZXnCxXt0=;
	h=To:Subject:From:Date:From;
	b=WOaTJJJcblEClce4Do+ofGTb0ObDOvKDSt8Pmm7aMAwHUCk3U3Y+6yMW7mTyahi6T
	 wLSKDmCu/xTjx01uLy3aXvAJaiyCJGeOPvZlSIzPkaouPq6GQLjFaST/3UKLPfgDR8
	 xBXLlqk/gvwyJ9B7PqLd3OVgweEXfiIZMYC56fWA9zMJmsMLp5Yfi6lnNX3pf1WRti
	 6aR8YY+LznQeAXkgNwj3BAO6Vy+jZp/PAD40Yxv3P1yqmJLMsBQrApZOqkxc85kPjY
	 2sBounMf+jfhO2CWoxvNKy8Yo2PI0SefN9eZvFYO2ec061/V1NaZNNG0Z7w/1ZUfeq
	 ZJCg0PFVWktcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991BCD6E2BD
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 17:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176607923361.31650.2459916789074575876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1646b4132e6d1ef1d2633e17e1b51d831e28aa4775c289d67b7c852111b24362
Date: Thu, 18 Dec 2025 17:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766079233
