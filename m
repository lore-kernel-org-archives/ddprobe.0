Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 068EE1A23A4
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773639294; cv=none; b=sfhj9CjrK0OBCbzvP6derNQ5aGCbOddNpXNFr2JZUJ54aYpf+kLvSt395dYa9Vaxom8x4QtMSK5F7KnyzCwxVoJSziDyLmz6w/EYGd+loDzxbCOXRHogMcU7vZiGTT76umMqiMCItcULdLvx1bycYAvx6Pq9Kypt5yGdldyKRiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773639294; c=relaxed/simple;
	bh=XEkDTPsxINJ0aAas/DCyl8Q+Jf3Kr690axVHAaiDV6Q=;
	h=To:Subject:From:Message-Id:Date; b=MDCOFbHcMdMhqs1F0lHaDj8bSxAx1ee6sBI0DBGm+//8khI+fiF2xRw7k57ir/31OEgI5i78Lc+6LKM5/iPbguVzkfLBodtYyGXvbvzqC+1DhbH3770ELzdKQ/Ym3XGTsfyzRSpfzH7Cb1sASjW+LigQbpwrUroCtGPnT1SfWBo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iTQDhmcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iTQDhmcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00AEC19425
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773639293;
	bh=XEkDTPsxINJ0aAas/DCyl8Q+Jf3Kr690axVHAaiDV6Q=;
	h=To:Subject:From:Date:From;
	b=iTQDhmcAbCSa4parJVJujxZv91OObwEw4pB92XSgNO5rs0Tr++G9gY3bU+0X6QoI8
	 x12JGZ8uHjB9hnOdTHp6zQy3EUuCOLshIujLfSTtqUAZ7oSHqhyO1MAHJAp+b51HIH
	 aYt5ltQXTy94h9F1MhzpC0iz+bgVY4d1LeO2VtfXECljokIqk0wFktPHKJDmSAktca
	 sfPEtTHfCE/yqVIumj1DAygSoRSJkiQD/ZNjGdrs7J2br4KazEdkiguB+zwEefKR/5
	 ETKgaK4bDi6egoMOFYbYSwS3knJoFxo/TsvjMRkJv9rU8xCtVhaJ2LZtVEfYNLWv99
	 ks9PQEEYH9Zcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F41AD58B36
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 05:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177363929357.24380.10060077811632172901.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e84c5c9c07361efd07547fe4e118aa264ee3d642d14722185426bf04691a8ba5
Date: Mon, 16 Mar 2026 05:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773639293
