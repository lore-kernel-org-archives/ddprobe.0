Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBB0317146
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778080054; cv=none; b=XUZfeepsb9IdhxMtUeI2N59VIU3zgnClmjccPwkU8clD0FARPKt8YL2EC6DTTUhDLUcdjGU7cCiZ9DUHjDNVGB9WAzY4qK+mOx0Hsmpep4KRshODEsTlQECNpF9Fu4vlGio7m2PAD0P3D2xZswJanwVXjDHYqz9hPQopwmlACD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778080054; c=relaxed/simple;
	bh=HFh8Ec6SXuGdYQE/tcIjzG38viptmevWC/2wmNXlMpE=;
	h=To:Subject:From:Message-Id:Date; b=kaNZuslxaVfsvyATG3skzc7lwon43PX0DOnkHVfLYshkt9xlnvbhmlO0tngP298HDhfCjgTJJrgMeOMBP/zYWjp59qarqiLM5qfjdOuwG4elN2fWi40Pye9syraZzUyPWiEbxrKEAMDDjsVMJdj/tF9bZ4ICLq2dVMKFwIsMqEE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GmbjRP6a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GmbjRP6a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA43BC2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778080053;
	bh=HFh8Ec6SXuGdYQE/tcIjzG38viptmevWC/2wmNXlMpE=;
	h=To:Subject:From:Date:From;
	b=GmbjRP6a7Mn9YcsSiS0kK9AmSguznqhvioMJZnhy+8P5+3APPmd65qLOE1hVr7IoG
	 SQBDAzJxPwGJJhRHMNU559+D3LntcClR8y8LZX5D0RR10xh4+Lmy8Av6M7y4PTJlBs
	 X/Ygg6QtvoHEmPze8vGtNh7JOJHdvHQH0NYSk4jKBLl9nym5eFLW9UH28qW+9d05GV
	 IW7rDkMNqUO4UN5/8WEV384UtYUXqAIfox4NcBi9EicDNF7U+yT9T4+PZsETPxvBDz
	 I0EdRchUfsAdKAjyHbSfDzrULtcUaRcMutU0qUagWoFkMwZYScoia9l6B7x68HRdsA
	 GVWteDVZ9lpdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7AFCD342C
	for <ddprobe@lists.linux.dev>; Wed,  6 May 2026 15:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177808005369.17362.7744627874073462189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77fb5243f66bd0ec4bba1f718fa12be7bd223f9a664e2b13683821c54d8fb5f4
Date: Wed, 06 May 2026 15:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778080053
