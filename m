Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FF523264C7
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772580294; cv=none; b=nVPCRjlC1jakPRF0RvwVEO3hMj88Ni1UD9gV542ZOoS+hg79JRuZJxel+mLtiRbW8+r/tiY4Kx19TjbvFbBi1NqLDDOryN2UjbcPFJBz0KD2P8TYQ59IS73p7r5EPeCuXG4K7J+5rJi1H6uQ8zCFuVA4vTtRSd15VInFxzRddRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772580294; c=relaxed/simple;
	bh=FETeRLpTF+2yqeMs9jYLdMthl5fFEzILt56f3v9oa14=;
	h=To:Subject:From:Message-Id:Date; b=M514pRq+uLjpQZ+CzQ2Ljzy1vjWpa1B8raLONNgoFMuPmk5XlubFisGSqIra3RhwBw5NmxRwjg7IRxHTBtKd1TCfYO8L4qXaXfTYV6HGHc/NVf5rShq+xzOUbrJfHlWJU+lKP52OFe4aNKV68jg1c1/CAms37J6IasWQTDbpgGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxwXvyb+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxwXvyb+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C9FC19422
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772580293;
	bh=FETeRLpTF+2yqeMs9jYLdMthl5fFEzILt56f3v9oa14=;
	h=To:Subject:From:Date:From;
	b=rxwXvyb+S24nKodTgYsnvmYvv+STr3FBOjG9Xj1MRE3ZiGRoa9sVG17DbpeBh3/w5
	 UJPudKFEsDueSsfsFZ/KesYv2fUrbRPf3X/blLaFnUbzCU1n12783TH4Z2ZmuILVFn
	 xohgccSLtqFDcNAyb62skgmTWSXtRY+Q6odQBH/Uu0HBu5ztvnwSqjJgZw/JqYh9II
	 lxNiOyhF4GNIFae7t6vxPmgyHjR0ZpeVet9GmpqoEN9iJjEYm88Kym9RaFy6kQ4J+d
	 Kn3Y9imR7PrXy/EXqq3yQ70ziHuxoto40LShL5aa+ldJbb4ngE3QpjmG8AlbF0jEIi
	 wT5xxUBGgBXOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91E00EDEBF5
	for <ddprobe@lists.linux.dev>; Tue,  3 Mar 2026 23:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177258029358.23001.7319475729289358945.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63569e91d7d5a4e991787f7dae910fcdbf6a376b440c2627989096d1d30e4953
Date: Tue, 03 Mar 2026 23:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772580293
