Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BD0E54723
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783855114; cv=none; b=DLMJzpyjWFfGIY4jdnOdmF8cf/bNRhpIyrm7uu5dKwXdlCKf2ibKL17aY2dultnl+tWpnz245ZCwX7Xc11H8/CnCrUD/SiG6USGHxkwVLUHyNCf2uAYKqqqO9bjDQGON4+DumE8YYJT0IdvIGzw/RffcOaMj35/iwZQP9aURXig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783855114; c=relaxed/simple;
	bh=FqneNp6PbJsOmyAFcm2Ln6uSMuws/d0nHgiGOWEqph4=;
	h=To:Subject:From:Message-Id:Date; b=gnA8gYKG3/P1DVr2GDye3XFIbtWE90XXS8+Nj3swTwVwJ5C2JKlkE0TRwLTp1LbQ+jXnTevMbwBDjeCge7dSgKuegaUxk3b9yL8ByZvxMKZJev+cRkPcLzTQ9vn/sN55bjF38ziVWXcxmAZPKga5h3gi3S7wfz8iqr1oDCDcmOA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKAiTg9f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKAiTg9f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCF8AC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783855113;
	bh=FqneNp6PbJsOmyAFcm2Ln6uSMuws/d0nHgiGOWEqph4=;
	h=To:Subject:From:Date:From;
	b=WKAiTg9fyPB/v6vT8MEtFs7zatTdolRoZbXDm2EZ/xjKvf1M49bQ8QmWHD5WWwIth
	 Vcvh0Vl+MEIVvnLhr/+Txbob2klmIdhl8o39Ub3mNGXraZWeUWEwaooxYSh6CR/kHS
	 j+QE5QtfurHJuselCqWP0fC0ye06sDxGFbZmnFgHNGLZZZIoKiNUT8MstViJg+GnmC
	 cvj/yUEjyDNQdjLrUZ4E/u/CJHC6k9oiQUWfw322fKYLIAPu1t44CuOi+zB2GjX6ek
	 F2DiYFa6w3yzuGDEppvFkN1aYj0nMhghXHpkyApVtsROwVrGxah3mYjOJYhUIA2WDa
	 9WiQAflkvrwNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9519C43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385511368.11955.5140809302104739517.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0c5de7670ca939895b34e2d8feb943ead22432e4d19f637fe1cfaa76f97c741
Date: Sun, 12 Jul 2026 11:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783855113
