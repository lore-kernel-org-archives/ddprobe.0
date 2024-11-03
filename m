Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B94D15C13E
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 08:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730622954; cv=none; b=ln3Y1iS8g+i6e/8K4FGlriKzVcEAMXuU30uc2nFBspQkmZuMuvS9BsuVZ+ZpBQiLXrsRl0hYypYNAwyyWA5tu5/z2q8g1LX2siwlfeX79KcKqsQVn0IHb7YyuBNv0B5jVqKnHPwn8v5az+K59Bk4y/TXQNNDTw6wCyjdXxt2S1Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730622954; c=relaxed/simple;
	bh=nLvzg9pUOajGBOsv6ign04iyWQjFWEl+dWbzoIay+oM=;
	h=To:Subject:From:Message-Id:Date; b=DsJ/rSJbNMTzchgIV/E0MIQIRvyO8dNV+p7r/PNVqEauRyACeKNU4tvFR3mHWi7xb56T78ZfIxJHm3rgsmL2z3TQ+Y2KWT5q1xUg5foh8rNCHUUzvMmXrlBDOS5Rpz3cy5FKvGRl3NPrlo34+siFaTEAgt/H5Be4q1fM+GTqWK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KgiFMSiQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KgiFMSiQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADDB3C4CECD
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 08:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730622953;
	bh=nLvzg9pUOajGBOsv6ign04iyWQjFWEl+dWbzoIay+oM=;
	h=To:Subject:From:Date:From;
	b=KgiFMSiQuGGvvyNXzGdn7mcmcoLw8EbV7aYw2humf8oFmuDF5VndgExHThUyiieUH
	 Et5MvrH5wqWYz/uNYpEKogvkhUV6u+GBEbdmoeYP1Fh6c8Zi8g+bkgoD6/dFRd8z8t
	 26N8W8TpT7I2LrQSESLtQxvxoFwYMLSKCBIxPhF5RWCgTVO0HPD3xQu7AsaQYO94iL
	 qbJhUzNaDi6nGC/6w6TvenNkPP2TlxZqbbp0kpFjpYSav113Y8LkHgGGa1HDvUrWkr
	 CDOlBSHJFPgFNF6d4z2v2Sn7uy/hUY3TEEtkryHTjSpg4mZ/Io2FCxasoLxqDp68xd
	 8JHXERMyzF/pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AEF2E67807
	for <ddprobe@lists.linux.dev>; Sun,  3 Nov 2024 08:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173062295359.10572.15831755250431775646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da7c8afc84981d12c2a0a4bafd1e72891952ef5883aa9fc7853aec4fdfb7abc6
Date: Sun, 03 Nov 2024 08:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730622953
