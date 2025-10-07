Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222D5C8E6
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759856394; cv=none; b=in0fb5YMMTlMlsyeAYjoFDWg00yqrtkHshg13gy5TVY0tfWmm+LBZVy8Kwh/spdDKNMlCtwDcXDD9rqZlRGr1P106mf9wCOPlML53kKg3+Jog0zS0/iDMkX5Olng06K71KlTCsXqlVNqfVQTp3DZnzkW30D8d9dWAIzl5SpbTy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759856394; c=relaxed/simple;
	bh=rrJLPRutlLHlJGNEbEfV4klQfaGIEE/fhjN61r2ygIE=;
	h=To:Subject:From:Message-Id:Date; b=Cv9TIQMLJnFMFV2p5aHzyEWYUa/Rd6+qdR9NPX6JMikLnAkvXRhpu7PyEXe8PSVo1z5XVyEN/677Ep1G6KIGgdQLIuiquJ5sy5EXH7WAxfcI+BmWvnUujjjdHjlvBd7EZup3pGK8trO7zqQpQn31l6SwWcp/IGf06S5wFYOQK3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flQxaRFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flQxaRFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9922C4CEF7
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759856393;
	bh=rrJLPRutlLHlJGNEbEfV4klQfaGIEE/fhjN61r2ygIE=;
	h=To:Subject:From:Date:From;
	b=flQxaRFAAWqNqEjvbVLUdSN+a0aNKKBEE79NsicTz0NpXxP/wRPonuw97fp2jgHQl
	 2B92Gt24U2z6bE9h4q0Sh8LdGzJPajbkZ10lHXy8Ijh7iDHGo3Ml+yDv77sgbxjOlL
	 /gnKuQ8lijG0W9eZ4pDYWiX/mhxpMH4PDYo3ZjH+M1P/lCxIrUzLc4fCf8XUBO9+m8
	 ew3Jc90N/gA0BYKLdbRrTGHhif61LXhPCsrbsuOqlU9NMQgaU0G2lGK47ZBcTMn/YT
	 pJ8KSrIQD7lrmZCn2GUZkqewzYHMdUUhpwouwWJnXU4SpD3nPG+afa+zRfmoFxmSKt
	 TE+/jQc7Qt/nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9712ECCA470
	for <ddprobe@lists.linux.dev>; Tue,  7 Oct 2025 16:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175985639360.16252.5513216759799442449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e394834d7783b3ca6f746d78e96c9fa79a472e2a94ae2eb1a30346d89efb5cc
Date: Tue, 07 Oct 2025 16:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759856393
