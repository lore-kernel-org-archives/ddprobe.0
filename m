Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254E1313E3B
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765455774; cv=none; b=Kaxt2cjAspATMwzFAj1Vbz5e+F1x07mShg5DcGlBAxUAdzoVfLBDyZcmpxuAOb4ieCQ7Eoy/CLRVYKJjONhQy7SD4Z5PYZQrvir9KpK3nnb2NPvgM5X0YLHZEHoybm59cETb/tLH0UVngsgqQZBhwAS+XEtHJ2DCzFriDhkXksY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765455774; c=relaxed/simple;
	bh=JfYDrDhAv0Nvc5QHMYVKriY1khkBZ/Qpq0x8DPTbUN0=;
	h=To:Subject:From:Message-Id:Date; b=gjpj1ySeteWQxcSaCCo8GSYJXYEIP4shF/OX17SYHTuuzCbTQcXgwXg3D706uHPa8zR1FEoADa1RQwVVUZvJq0f9tv1VTdcpxlY5hHdrkYvyW2Nt+KqmQQEi/Dlk5vjaUmbHUsIJxmMQJbVzWSfWkfZj6ggjOMjaTzFN+/igMZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxPCNJNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxPCNJNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EA0C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765455773;
	bh=JfYDrDhAv0Nvc5QHMYVKriY1khkBZ/Qpq0x8DPTbUN0=;
	h=To:Subject:From:Date:From;
	b=QxPCNJNvq3H/Jc1UGCHawlnZqCQWE+mUCDUr8mZTa0PJT99dIQ5YK6/StiDFUHkfK
	 pc27hOlSo+v530FSLffCuJ9rKlJsKmnb1zetN9Uw8DFAoc6ubOk+Oflaz4ohrJI2ob
	 3GB0y6+DV6CTDt1TO/BtygjlGQTBEk8rAjHn30DAAPdWaKFu+1zoErICMmPZRyNvzY
	 tzOcs9XjS6WTvpC8mEGt/oSzw9DaXBH3pfj5z8Wjr2d0O6QwXIU2YxqIIfbAuBcy9g
	 GSHnistmVuhBbJ2V5RqGIG2ewuHBG6R3M81pd/sSQlOUA5bN/GZvqXO5jgrmKt9ojD
	 MHZvmEIqv3eKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9147BD41C27
	for <ddprobe@lists.linux.dev>; Thu, 11 Dec 2025 12:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176545577358.4077.13728200085834184568.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 043d59e75c61d52f004a357a0d99bc2b38e8eff873dc2a60450ea82af1aaa152
Date: Thu, 11 Dec 2025 12:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765455773
