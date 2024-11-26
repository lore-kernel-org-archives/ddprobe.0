Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7BF2561D
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732632354; cv=none; b=M260gWLgYc45TAF1htmTFZzKsKglBM+ERXongIz2UPhV3/6L/K+XSpJf3/RLooQIBZi6rw8TRkLLy31duZMfeZR1ytiZvSfQoIUlZ7hZxfoCyQkUy0klwGGp43fmTIH8Fpq8rKxzTtA0DVkDs8vgA50JOGzHTxRRGBMX6RGky1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732632354; c=relaxed/simple;
	bh=kurImWBn0rnGeSQzd+/JjYxbLDIVzN0iHe6PFDulOLg=;
	h=To:Subject:From:Message-Id:Date; b=bvJCa+c/dJTDI7lRagTuOHrQ5d2lER+ogFZS4LAf2Xp5QFnKagQ7k9xSusPS9l115R22WbbYW9wOw5LKF09iHsHCHvEfaCY+YwoxKeg9w73Cuii7Odw+r21mwMsHM836vEnxVYEvd5UshzF0JkXMGG4Ylo32eKlXXLtgmuwq+Ys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epS5xzKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epS5xzKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC861C4CED0
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732632353;
	bh=kurImWBn0rnGeSQzd+/JjYxbLDIVzN0iHe6PFDulOLg=;
	h=To:Subject:From:Date:From;
	b=epS5xzKoWGg+ArG2CTn9XYWmxsbWWwaEu1XJZbcfOkJ4A/miuUgzR96/4KICPSNnL
	 b9ekD7/mD9XERSzyvlKZOkf2pnJqadys3jpIz2pHHrnAvVPBZJitzy775VlVPzvA/V
	 wU9MeUm5snOg1iTRxP9XyghmK6nTHoCMN4m/cihq57HzYpUH2E2jB+/5SK7I6opojO
	 I/PzyLoNjCOxcKIBvCP+YkOlg5QNaUuXeWiJ3vtRz5O4pJvaP04Tbh+vCy5ocBZFST
	 R5vVjD9LLF0ioosBR4fLVg9+Qwods5s0u1NR/GQN5sTbSWEEcKXlezOraJe9Z1H0gK
	 Q/BTIH3dBlgTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99808D3B998
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263235360.18106.6692996641459610577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47a81ed268c60319ee703416f8a9476ab3c72110dcb91112804bdc9d8ed60ce9
Date: Tue, 26 Nov 2024 14:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732632353
