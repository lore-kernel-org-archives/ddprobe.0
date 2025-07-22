Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25FD72737F6
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753152594; cv=none; b=c6ZAwVrglOektZuSikS325fJy4/WLv9AXBHLifSahSSstS6EMJDu+Adh2k0NP4ISof+ZvfmrKQEkrb9m9ALdCSOwbGjFf9jNbV0oXJbFRdwyvCerpASmhDl8rJhKXMrF0TY+lFxxhN4+iPNsT1/f5xC16T4K1qLWPYFKnmmOGGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753152594; c=relaxed/simple;
	bh=gnPGxv1PWzGUBovyIkFh7ZbQDqxu4nIRLY3ONWqw170=;
	h=To:Subject:From:Message-Id:Date; b=L7yuFoVhmjeQePaqkolMtMuZOK3LzICxZEDQP6LM+0Vlnm+peNBhOil+8SHMToZ0JD5BplbSBKtUM4IjrNCZnu1ZirrUWCFstNxY7crWzQQO5bN7j4497ZBm0gUxi37jd6T/3bfLVcty1P9Pk5KKyHgQMxmsf03jH4LL2NlKGq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UFbF9nrD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UFbF9nrD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFE7FC4CEED
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753152593;
	bh=gnPGxv1PWzGUBovyIkFh7ZbQDqxu4nIRLY3ONWqw170=;
	h=To:Subject:From:Date:From;
	b=UFbF9nrD6yzWSsD/ulU8eOj3Pnc//UIRRrSGyaQxK7QAPTlYv55oxItNWrMSjZzyY
	 6dMHycB/Epy7ztDctD2zl2hjWTBZvZLg8X06N32F7I6X4vLd+HDo5X5jNTFfPQkcsE
	 bcY4UiWjF1c1gwHb5cJ2kT5/kDZuFcWXCITroqMK8PHw4umodU2Q28/OS4NyjWj158
	 u0zHefD5+8z4qEPqLSjw8leXx7h8TvqQIzBw88F4Hpfpxugr7KSD55N2fyWFgeDGuI
	 qV11/NMA17Toii+qWpTMggxy91qHt8QmlA/CGWgwuOMfewxH0Y9TMZdkl4+wqj1YdI
	 KozhZ7RDcfKuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAE7C83F25
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175315259363.23877.16522725312028483791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 093e93c780cd6aeb2dc56819f467be9f24dab6342a124c289d31cdcdb3163a36
Date: Tue, 22 Jul 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753152593
