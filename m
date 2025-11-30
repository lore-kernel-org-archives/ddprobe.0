Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FFA7E105
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764506574; cv=none; b=ieNgZpKZmN2yEgI+zBB+WwNUOdNBJaNR1wArTVKpSWGVDCtVVQNE5aLxTVbIPtEfWTe/CuMYhxuLk+/JmRthvjgOW/JFloMc/uP7griJOXt9983Ag95GaXZst4dZIpMqGR+3jVsEJDpIxElCiTmlbBVTwPW80lLrKaNHuMcisXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764506574; c=relaxed/simple;
	bh=GOB4Vp7RyldE6noXquXR37zdozcAW9M2wXmLTYmoF5I=;
	h=To:Subject:From:Message-Id:Date; b=I/WxRnQyguAmFRFDv59Oc1XqCj642LUXy0T9k3U8wfGnigYKg+M3HG6dTpdexPA7r3ns4et75fgOuWakJc6wCYZL/Ee6basSmSvcAG/KMri8C2pqZ4obyddJwuOxnkhiVVC8Ofzb5TYOAdp2/p0ighqQGVdy6Pe2UHCdte6DEqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HD4DAS5H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HD4DAS5H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6118C113D0
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764506573;
	bh=GOB4Vp7RyldE6noXquXR37zdozcAW9M2wXmLTYmoF5I=;
	h=To:Subject:From:Date:From;
	b=HD4DAS5Hnbe8Dd1AwxhebF4XUx/BzQMzZgMf8yGZ1UkCikEuzDHiS8XQ81z325zhJ
	 1x73mYbJL1JUSjWRzK5QZ6VCgxTjOHMFQQ4l4GU31i5sBUlmwiCj1iRW7c7cE7JFVM
	 aGgE/BXQO3TBwCv+JFISAzrYeR8I48PS7iqyGqULN50x69K2Xf2YQJE+drJB3aDs/j
	 lUI4ZGMoeGvaBmnnAwo6ynnksHYQmrRTbEiPOnvAKeoe84HLnwMCfB0yIzxQJJCRzJ
	 Q4I5q/5Uc8HVuWurMIotqluJh62sBcAQWjSuBNF7WoxVqMO8aHQ7FPRmvYTVMeDkHk
	 HqIkvG0waVeQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94184CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176450657358.2788.9389148853665619438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4382f5d74fefed24b6da43f645abc95aaa03a50014184ac23b311f06c99e2d69
Date: Sun, 30 Nov 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764506573
