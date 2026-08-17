Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5540C422522
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786983034; cv=none; b=o7X1FHPv2SJZztIJV1kTQsTqC51in+3rOBgG+lwS8/obc59IFfdQLrKSCA2LODxbdIXIVOS8+FwGAlERHwZDlbUouwMRjPFSjSZ81N2HSMFn3vpRuGfbkGbN1Tyl3h6AiO1eARCKztY+k7GGmhqomW+gF3ewVZVBmEpY7hKF338=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786983034; c=relaxed/simple;
	bh=OH04cUaJVoSgcq3PjMBnbIkqZIVyJ9jrLvho3qrRzRc=;
	h=To:Subject:From:Message-Id:Date; b=SkdoK5tUQYppJCGa/RZWpioAQKfCSS476Imqx2PypgmWIyhkJYZIutUTLQxPV2VAE278wzLNGyHVf6qFNoLlRTfPlk8g/kZUshfzVtKfUXo817CksWFiH+euufUg+ADeiGAKIxgRh+WACQJN687dsmpvN25ng49tBMkCJBHbxAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ijhZ/7+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ijhZ/7+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D34F2C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786983033;
	bh=OH04cUaJVoSgcq3PjMBnbIkqZIVyJ9jrLvho3qrRzRc=;
	h=To:Subject:From:Date:From;
	b=ijhZ/7+mTlo0y95uieRee4Y/Wmy6H0tAsgj/gbE3OqfYFH2TWaXtp/HRe0YGdd3PA
	 epDeKeqZYnVhvfnOgy+HltYwwlfoTAhoC1VArPx0rKMNxHbIKJV0NzJFqMrbkgZV/r
	 F2XapOuw6Y+USeaNOzgVktU8hWKwDyJb17TPzMk0y+J5pULhp9cYTb9yLYlY/d9Q+0
	 4UhbsfeNXMOiQaY+uhaRb8KUXGrg0KVmGcLFMKIB8EmYAiiZzWNgPni1vVHWB1vu3V
	 W9B51VSLpNvSztuefJgBF9Tt4ffm0QFNaJZci3UQuzomxwDgzQ7XrgXVn1sgt1lZJu
	 51+MibwW+b2nw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF604C5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178698303370.20455.13565373306513076864.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9e296315bc0302249165b6c900568368d7abbbb7bd21581fcdff7f5a3984b7
Date: Mon, 17 Aug 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786983033
