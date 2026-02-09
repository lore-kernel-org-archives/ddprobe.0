Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242EF238C1A
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770627234; cv=none; b=t1XTLTSHlpERuIzYwRCDIvUISFC4KAKint9ZOLleBrYB6u62bEIdd5ljuTVrYpn/+rRwSSH1lUcNBpu9WPx/JPsZ8JxdDqu0GESZKTLW4Sdq6KWm1bIsEle5yrIMzi8sQ3P9P5m3yNqlXpvekFiOJ2Ru9CWOJwRe6bYuzM5B04c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770627234; c=relaxed/simple;
	bh=e1e5KxHlcK9HP48zjqUHgO7y2KDiGMzd98sp/lEyOzI=;
	h=To:Subject:From:Message-Id:Date; b=A0KMVSfGq3leGQPnCjAoQPa1MZ4VYXOWhqn45kgVoV98gUIywxhfY0uFECgwek/bky98tTypormMhsn0RUHH2GKeBOcXqCf6ljsHyGJm5pKmPijM/hwzTU+wAroXI4cLosnIxfMNLXIgAwpX0VYgR7ajPWPCZGgwfequt+/yKWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z0vUry+u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z0vUry+u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5079C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770627233;
	bh=e1e5KxHlcK9HP48zjqUHgO7y2KDiGMzd98sp/lEyOzI=;
	h=To:Subject:From:Date:From;
	b=Z0vUry+uklgZcAEZ+pQ9ESQk5MrQ9ITy7KHzW6GBfaQX09CSfk4GfbBoBSXsDR6MJ
	 EBvYiVy6z+6oYRTdCeElv3EvkRn6ptErhE56ssfoIcv6txp+rUr/ElciL9WSbINac+
	 3I9hhCT6Bx61XluP4oDr4PRRsyRNJ1td67ZdswDEmOnCDrMTXQPjobFhjWd+IhYGHV
	 y1sOSYuubGuNJVI6nMvrPkcs8jWN14X89c7Dfz8biFjzQVWYyHnu1v4tMqASlCdr5N
	 PdRPV/drE/gISMBp0tAub01VaK/hMOr1kgtw4Zez603kR8VWJnecwlYt04P204FYQA
	 1I5fd9D26rVOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA03E78D44
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062723363.16000.7249678131458134352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1fb8f7f17d1cd1f34d0cd802d3848638490b867659491844f763800e8612f2ed
Date: Mon, 09 Feb 2026 08:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770627233
