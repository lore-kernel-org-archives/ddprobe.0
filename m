Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F1583815F8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789511434; cv=none; b=LyOrMd4FNf4zHgzHrZYU1fC78KpGvwGjwKGhph3WPpDRAxMcbWPBa26sjLZ8jP9RQnjtEnwpMhf4S1dxEJWd7HgVf+hXH1X6XIRrFjmR+62kcGO59YHX4VVIqeoSdyrgIt1sweaVFZxZ3nAZER6t+ZexqbLUN1SBZQEkREMzo9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789511434; c=relaxed/simple;
	bh=ja12NSV8bB966OhNONRrl77Z91hNwCyMbE31y7lRi3o=;
	h=To:Subject:From:Message-Id:Date; b=N0OPeIIZCgWJEjFiLXfwVr4gyH3uMqzXycfh1uowOqCVchv5sE+XooISQz/aIyWPPrFOM+dTJiOycQP2In92mIDNa+rFthXKTfN1VGFLV1Og0X9lgLqQ0kl0bQJOREnfbpudppJmBrGvKeHSXCKZ4u5S7z+6l/QAwb43+F0/o/k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXRhtj2+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXRhtj2+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D23DDC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789511433;
	bh=ja12NSV8bB966OhNONRrl77Z91hNwCyMbE31y7lRi3o=;
	h=To:Subject:From:Date:From;
	b=KXRhtj2+Ks5wSAiNmEMB6ESDh54lr3QZo+GYelptTnKm26vNW1nSV3Qyz0TzrpBcP
	 jY+gB25SmmSexsUDZcdpeJgZBpu+QnIgYsOK5S9zjK86P19ReH731mVdCTJkhN7vjw
	 ld4mCAGd73kVY2BnOkKuKX7oOaXkUXnCW0Au/p7lr99cqwxqnw08cNpHRv6FSYnFoB
	 UF6fGN2NVPLkojResOO0G5SD70TKNnX1ALny1gDANeTebUOI9w26yF+yxTAq3tBUjO
	 1oCtzMLFhzf1av/I1PQ9hxMku0G/Z5x6lj4XmnkXN7o6SS/Kvd5IxjYzKjqSvoUPKx
	 jAHJMU7Xptf4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEF54C88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 22:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178951143368.28132.5946559850755507062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8995aabd8362b189306c834d40f4a331b8b1ee362d0ee64e63baf0dd96ed7a33
Date: Tue, 15 Sep 2026 22:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789511433
