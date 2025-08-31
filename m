Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ED2C1DF738
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756619994; cv=none; b=hPzFdYW7paTV5DJ9uCVeoZAARjqjwwPfxX5mMtNeI1QAxLv+YG//GaHvClkt7d/dnf2Nf+6v2nscbELqP0rHYN8c9d2pdr3FegR11u4FcHczMBMO+Tr/149jLIJMHitf6bkhDfOzYsctjrfegkDgp5Z4KEVgf+KUCmh/xUm40ns=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756619994; c=relaxed/simple;
	bh=WaGF5kq0q++Jcy/VES+zEhJdRcnI0zy5h9cMOnaTwHc=;
	h=To:Subject:From:Message-Id:Date; b=BMcRJVtfrdXpfFlxt+MShBhvofRol6/m8JxIVHZ/HQM4Lq5Pd0kxOYC7xw+DzqOlSmV7q9hqvhm5tpN287nglcsNRE1RNVQuHwYx/lf+msNczxtzW7Iw1oMATkK4DvrU/WmtvOsTum7d61SWKSsn+QaWml1DfXrHF+HJDzQlA4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxMUYaeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxMUYaeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22A8C4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756619993;
	bh=WaGF5kq0q++Jcy/VES+zEhJdRcnI0zy5h9cMOnaTwHc=;
	h=To:Subject:From:Date:From;
	b=rxMUYaeEhD2q7DsLALI9Yc/LxkDfOWARrPMSp+JCiaNBUcUOGPgar+vdU24iLMwX6
	 N2zHGpYFJAYy8RwfhBfWpZT4qEcYFQMCVRiQ0gqIWoaPWi/5+jsqj7ewbLjGXp8t9U
	 iShbAjBMMdyfuT0j5xvS5GGbGZezMTAthHo1qPXUSn8NPF0u6trgEgb/XPW4jwlTTw
	 KouGfcbjZsCxH2a3NFmPpCjyUPsnk6wqoOBYkxYAvDXF//V16EyOGqN7ZBzIdKPr3O
	 Ql9HjUa4zimVWUuzpVZNSQ22xPp2f4NrvEkHQL952UhsQBJgQ/eJCNe4sOdwuUs2xj
	 lPHnwrl5xakOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91555CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175661999357.31028.6863900412059595574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcf069cdbb88b6ce6260361161cf88992e3facfed43343882612576e38369fb
Date: Sun, 31 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756619993
