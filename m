Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 778A33148BF
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787414434; cv=none; b=frlo7eOztANEQaxRcvcMiHvD92WohOBD67Q96xWzod71OWvV6gOJGENIB5hNcHNlfu2i6SD/FrNfG1W5NJPswTiyiHaZkz0Gly7+66mBgRMFdLybdeZNvRwJf+djwpNi57/SHKnF8rmGywvcprok61H+PlK+eo8s3wBxADiwU+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787414434; c=relaxed/simple;
	bh=YL9onlgvNSND7UdzvhvpGJv1aBrFUCYlYptXhT+3u3w=;
	h=To:Subject:From:Message-Id:Date; b=f4i0uOlysQ21fcCS8F32sgPoD0mGOX32r7SWMNWqIgo07TWxfjTfOZdoP8mKNuY4fDp/5z0rpymcmrQ4oQEpGmwCzLQA1LVTaD3Gf3OARz/aZi3ts7gqzCjVxhT1aHfBY2q8pueJ8/KFB6SMXsvYmMAfLXFPBKwKXQuUbQkPoL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQzebgLd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQzebgLd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6EC1C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787414433;
	bh=YL9onlgvNSND7UdzvhvpGJv1aBrFUCYlYptXhT+3u3w=;
	h=To:Subject:From:Date:From;
	b=sQzebgLdw5GYLSeBZXMlbptZy6EMo28ekNQzrOdiWWPn4NXSCVFDabB7thhtevph/
	 gHThRA8fZRegn1Q2PTyyCH5G0/G6BrsjK1kcyxnPXrR4Kztwrld8AcDk9WaQer6VPI
	 AeRkUMY84seHjTlkZ5jYIoKxR2/DyjO0m3KDyQs2vhQYn3hLnzeJyMPaOemwblbGse
	 P9D9s5aC7qSmLUFC3CUgiF0O8O9LVkDw0EYIDRAprHxnvEV/mzDITFOwqb67mqMUKX
	 9WJFICkB5QPb8teP+1TNQqJMjZE2KzlHsdoOTr+OquotXgZS5ilR58eyl8ZD8FcL7q
	 L3HSQ9rFtSNug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA6CCC5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 16:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178741443368.27714.8134147023441835411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 398d33cb3ed0e274954d60138f617ce40527dd00160e3e7a0b82dd6834dc9c7c
Date: Sat, 22 Aug 2026 16:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787414433
