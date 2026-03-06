Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0246369964
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772805893; cv=none; b=n/U1euZ//EUX9JoK7NkGPIKO5lfx2JIGUhCLwq4k630m6JV58tu6wnGVhlEn2P9sh8oLZnpYgpQlJqex5/02ZG6xm7GvlxO6Alsu5/jG+/BXbel/Q2SIbp18Ac4d4jeB9F1z8lsnb78w4ZtWbTYJ7Q2Diwoq3FQNQVf9r06j5r4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772805893; c=relaxed/simple;
	bh=v+wJp6nk2K/NlZXAuutMV7mxbc/04ckNOGTbjKmZI7Y=;
	h=To:Subject:From:Message-Id:Date; b=tkFof+JQ0Vc+ZuCCySzW5O5JX/9Pl55LS6T4cuPJu0Hl+QBqrMRWVS2oiPgHZimFdtZD+Nev/YdXZ50Dj78KbbJG7azaT66N7zmYqZ0YbaUfwMUKXWN0MJkhpoe31QPM+1F5Aex2RQtQXHKtY46trFVgLUhy7Xi7jrwxDPVp1LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ChliUN8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ChliUN8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A060AC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772805893;
	bh=v+wJp6nk2K/NlZXAuutMV7mxbc/04ckNOGTbjKmZI7Y=;
	h=To:Subject:From:Date:From;
	b=ChliUN8iFOYeS1JOVgXLOB8mqHgVnwBQULqe5LoS1+2WPtdcl2uYHa+/6GBr7qHMH
	 wm+P+qzYf3KtNyQx2yTiMp84XkQBLUPLRKDHIKwsWpA2oXrGScEz0azRDfaaMeMzFj
	 +FPka8n93XY+2Zrmh+NsUXZ3WXp6Yceji8v9pYQ1OlfcMdkbaEJTPD73DgEBM/VgiH
	 7PifnDPQzTL+4X3hAHhf4F9uw6iayhrle7NRjP6qOeAG1ZBG4nwletOQvwE3K9RvV0
	 uA8gMfZAXLOV9wJ2P7Tu4Wrm5OhYjQbKGJVzXfWC6W5cOpUbGOk9HT3KLcD362Aaf9
	 Ny3eLtvP5l0Zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909B9F0183A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280589358.12970.6412914321562739712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1e2e986beb4b0f6ee5820def06269713ec3d46ac3c45c57ae8ecb4a505e6c3
Date: Fri, 06 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772805893
