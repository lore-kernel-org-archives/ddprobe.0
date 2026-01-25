Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 381C21DDF3
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769345034; cv=none; b=CNSh2uFvL92gf3H78Qwm+ZCcB7xhAtwNwOCntv3/c2bfaMRgb+WnRkJTkUMzSJenO8F4X+OqAmmWUOc6SMGInSWT0KQl480VPxc229jx3udLDc1cUe5PuNf9+IcJMjXRzygmSr1MaAtN3iHfJCg76IQMbNgLV85LM4ohmjRl1xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769345034; c=relaxed/simple;
	bh=jzFaO7A9C3MRW8wJkX8f0NJ0/r3fRbxOxgmKZqFgM+8=;
	h=To:Subject:From:Message-Id:Date; b=RybfbGbdoqaaBOH0ARPZuWL9XhvQWkOcOJe4rLF22oTohVDVD7lb6GcfQNpRUM+tZc1Ogto07ykFRxxMHTjWPmzSPFqPXvyXbGPaA9BRQ0P6IyDv/1LNWx0E1itXmXm2ajjb8cCR+Jtlf6w3VuOth8fj6gnNqJI/bJtY3W9DdMo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HRumWBkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HRumWBkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2246C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769345033;
	bh=jzFaO7A9C3MRW8wJkX8f0NJ0/r3fRbxOxgmKZqFgM+8=;
	h=To:Subject:From:Date:From;
	b=HRumWBkZg+TVtWNNOUCEWTLSN30F2KMry7WUoQTSQQIRHB4QLrHb6nT6K9QaInxwW
	 D4mGcjEMTJfL7y4AdbcBK7tVUigzguREybcKlZMMzPqwDgyh1oai9mDAcB7j1nWgxj
	 TcNykBOW5orToSynNqxOESwl2k9H4RDzKtSD5eIgMJJNkWfo8ucagwkzsZb51lHB/t
	 9Sb4BQVidoR0sYtOa45A0NRVKPOA5u+UMeCNx4wvD2Gb3J3PPS14vsP4aQKiQ5+uJ5
	 FDSWzFgrYRex1m61WU5LoKqY8vVESvkthFm/5d5wYhn63i/iHWNhrGx8Rzmbdz69b2
	 LlCN4maDB/UIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5B2E63C8E
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176934503358.14183.15628542723269330655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cbc44a222fda3b09fc48e9c4c3101c1a9987b6f5ba8b9e68e0f33de69131ed8
Date: Sun, 25 Jan 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769345033
