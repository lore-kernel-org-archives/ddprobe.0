Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 304702ECE9B
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758064195; cv=none; b=pYN/0LMs/Mrl+iZsdls8GorA9B7Gwl5BfwENt5stwlYXK+3soLg7cTK+WAs0Q/Xf93bg9qOTWGVI58xRHcu5+k0DPOWCCPfcmciiFZ/l1tGWT6cAMvFL/RVuNXaPDUj/0ayVM6EM52G+J5d2s+vDjacThUaPNpwtKkT2pVFFwms=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758064195; c=relaxed/simple;
	bh=7A3lISYmF7QrAfvpLfrLZTtfZs6/G/yNluENU9aoXeE=;
	h=To:Subject:From:Message-Id:Date; b=atxivhqd9FCyksYTqgEvLmsOMeb+HEMkLAXUc1vuJMz8WUcPOthF81McQMDvyKoYesTFICAL7IgkcjH6yQ+mItIt2fxSwOWwJxXplSUl3h/Pla7TQSlO3V99+jBjZYPa7ZY2XEMZ+xjkzew+TthGRhvNwjPgE4I9nNUKp0CNHgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AgEpZbv6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AgEpZbv6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A68D5C4CEEB
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758064193;
	bh=7A3lISYmF7QrAfvpLfrLZTtfZs6/G/yNluENU9aoXeE=;
	h=To:Subject:From:Date:From;
	b=AgEpZbv6O1LB5XuqLHs4FJsTwfAMZn9uAgC52SlXXIBlsSBWmfaT8UdicwQX7kzqC
	 xTpKab12Kv1T01cxXdvFlo2MMK8474LNEst7G/c8UI/cJGdfd99tH/tf0+Afiz1Gml
	 xM2qz+d2dqsWdI/Ki/fGgA66tpcIsl6yu9nbrNw9hEMPrDfBq1GBhfctNFhE3RHbsW
	 GvX772MG08WU6Ry001fT0huGO0369Fi5/2GdHeiNic6CXjX7yWdZx2mp2Q8aCYXx2q
	 8yViNJfVpiqT2lg51fsUUjxllryf5YTh2DaBO92vqSD3LLTsB/rXR4YwGEansD8+XA
	 KJl2qTASVImYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E86CAC592
	for <ddprobe@lists.linux.dev>; Tue, 16 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175806419358.22732.13990507593875583779.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2ce0d235c79c0bd18e57946b9f53e4b6f6bdd9bc00d13d588fb58ed1ddf1b18
Date: Tue, 16 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758064193
