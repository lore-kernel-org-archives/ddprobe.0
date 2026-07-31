Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F86E3D413C
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:20:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785493236; cv=none; b=XdKbuvLdRZxl4Zn/U/J4NN7GnUdWaHDmJOWF4Y3x6NhGhCqjpWqBw4VeIbdKpbUFHZDSaJXKmWsmDSl0jMN235VAkqFe0pJqOicG8OHGbzoarbiSJd0TuDgAxtdnWw2+devKReG88YMruYT+6BpBdBfcvqr3unaYIVfeeJ2OAec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785493236; c=relaxed/simple;
	bh=LI7Tk2mHSTriD3QbhHINNqJ319wpRcBk9JpLvYU4Ep0=;
	h=To:Subject:From:Message-Id:Date; b=pi11jO5eJLdqpfVym5Z95kvqo2qtHUyf85ZmV+78LOenCNDx72AIFPHt63dg3XPB9851qkL5M9Kt3IkHe4KTXCtsWKwkc2goo8lHVUl68YyLJl4zMcpKysiQrBB7RaQuUOwZa8mOj9EAq9goFm1uS/qZbibBGJt3kjmZlvfZxhc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tiuJe2X9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tiuJe2X9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB176C2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785493233;
	bh=LI7Tk2mHSTriD3QbhHINNqJ319wpRcBk9JpLvYU4Ep0=;
	h=To:Subject:From:Date:From;
	b=tiuJe2X9quvkNgm0wurKcMV9Q6IOYIz94zAP09WBSmTCUkfPtOjkGFO62MJc/yurS
	 B8cdtQYm31U9uV18FFpY1o7gbw2CacXCti41rPZ6K8v8mvla6del6oDSeVF6jGKSKc
	 /fQ8a5OK8rbMgmg0EbIerUHICVNXIwHfXJ9H7cTqPyxjjMr7fGcwszFNcidRlcYHgh
	 Z3bE6WN45NpVOfU5Ia8k53P9ZH/9XdSIMVVCvkdAF+UNJ+w6mKkRuFSQkG1PwqjlAv
	 j2pOsHO8btK9ZjGCt/tODU/0ehFnAExWq+zbcdetuI1aUPBB3N5Ue+gCJ597Z4mYxS
	 JRL+NdqCQSKgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA60EC54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549323368.446.11420406877837739499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b62e5992388aeeafdf8e55693d161eee5d89e343bd8ba295d256ddd1bfb2247a
Date: Fri, 31 Jul 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785493233
