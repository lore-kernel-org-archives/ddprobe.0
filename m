Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D1E11F1513
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748173795; cv=none; b=DozjO9BZyBELJzf5tWr64arC3Alt2PxMAVffcvRpdJ8mzHJya96riLpwMtCZCssVNHLSUPosSSnPMO1KVib8kz4a9sSi3UF7N/+jQGSSACCYDexZSkCxyUtdd8KWFXqh58nRjgbkP7UQ584aVX+nS2p17ZZ9t8J6MmCYWUY2Klw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748173795; c=relaxed/simple;
	bh=/Bc7Uwnxp925umyvb6LH9lU1dLwLjh2/ZPyH5kqAIVQ=;
	h=To:Subject:From:Message-Id:Date; b=SAHZDDQyn4uoow5nCZog9IGUsyo7lAiDDtHsdoz+jMZpcR8iIpuQkhyh2252BsnwNcpRkoHaL6oLdP8Lmf4u6Tp93HIKWTXzvys5xjJK/oAr/deOmZbrp5fNgK9K150qKGL0NbZwYmrw728Ouk8gG8aAhulq+DGXVrBo5/B5abI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bp9NEQj8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bp9NEQj8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFCEC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748173793;
	bh=/Bc7Uwnxp925umyvb6LH9lU1dLwLjh2/ZPyH5kqAIVQ=;
	h=To:Subject:From:Date:From;
	b=bp9NEQj8syeVGI8bB6U923Hjs2i9YE6ALLOp8mHzXYafbFzAjYLOAmI82UkAO27B0
	 cTH0sd8QEa5fK2ymp3PpDUa9SYpXlwpeqMTUlqDo6OdTRkbWcnFTIFIh6q0kxQ2un9
	 hhK3JL6qgzg164hCaIg0P+pEb8fNYYMeQGw1KT7Bi3YBxYHXx4d4Svuj6sm56Kul6z
	 90EaoNcPZ/SXhAIrD6K2vh0Ql6oPBnBADGduHcS2DmDLvGg9BnwMknjHpzym3jJAlm
	 m1erRluvoGkKaoC5TnuiQvYipURPRo8Sfb7LSgovXKMvCUo9mhCMdTQXVRWGM+Nri2
	 4qRHUwcGgPzxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE6BC54F30
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174817379357.27629.8262080970353156560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a8fc90505c13c9209f0849a31e9757308a5b61a7f148acdcd0edd3afdd806a
Date: Sun, 25 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748173793
