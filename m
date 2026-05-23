Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38C5B3438B5
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779516154; cv=none; b=fdNzDh2jKlkCZQ+5EenKrlmO9OKc5EV49TQq5sUvD4/g3X9akmng3mMxl2gog1lLDekdeiSmP5JXkyUD7lOgqYdFm6dBKginSXOyhBSqhU2gJ3lz3qhD/cX8JPALYt3uR1wdAxDSz6vTe5weVTi60TlmEeZg3U1rTf+gNEVCCA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779516154; c=relaxed/simple;
	bh=ra09tVwjSwhrMcalYVcurKNZKFjmWRSMUexIhmmAp4Y=;
	h=To:Subject:From:Message-Id:Date; b=Z28fgdr6GQwKf3GRSIsAYnKeX4JLnoPErN2CT+ZmrU/vljYOkl+OX6F4n0w/m4036UKeSSrRKZCu8DQktg/SVfePf/NqD+wh3JiK+T4Lupj0v2uhXyhsgoxI1P3WYEi5RF8s2r47o188uEiCJBMhB+moo032kKvhs1JlcNRAfTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KcNvxDk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KcNvxDk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3988C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779516153;
	bh=ra09tVwjSwhrMcalYVcurKNZKFjmWRSMUexIhmmAp4Y=;
	h=To:Subject:From:Date:From;
	b=KcNvxDk1QiaZmRQ2GmZNFgBguvAyaGMrN7nXtd4AWOn+jWcszgkvn6eU2JVxl11zH
	 vrl2IOgey49HeavYZJ6WTbYJSZHD0NrL6qevVjkX3so4lpCBhJ6+AHs9O03lKy6Jkt
	 NwQzMlUPEirzDmTcGPPrEnC2natIaWBztxiqZh5WnTT7cbgz8puXYXQunyONZdjXiq
	 WBWMp1S1Coi7+OGZsC2fo4z9HgBf3tlo9owZUiYLfhwqsbA++BBDkM+ZZ7WnrN9Lca
	 JTWfOJABbEYcYzqcHZ5/PTrQUuXhjwO7m0jrWMGMp5Gq/blQwkM4wryEpyH2sralFy
	 ZoM7Q47A4r0oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD23CD4F54
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 06:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177951615369.3191.15370752449245911727.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0906b77b5332966cc9367055af4469dbf6f78c5bbd87d1c9c853c8eece7d4150
Date: Sat, 23 May 2026 06:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779516153
