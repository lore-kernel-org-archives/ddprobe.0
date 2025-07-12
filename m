Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25A3926C391
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752350394; cv=none; b=IlNTRaepFt6PLRsdGeQljH5f/66ah20ijxAhPOwaanSwhM5L3yfZ8mYb8kUyGXkXGEV0ArPS/1ILTGOn43/Y7jbepnkns8Kyr0kEMYem+HA+C+2KsGTMOa0vMItn5nP7HUI9Cbu2HeYRAQ5bsKBBQKK9imbTwvANKTrVY4NMaQI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752350394; c=relaxed/simple;
	bh=LP9I7kn02HYhtTj//5/8W00OD5oLIkxRTHhxmYk+ViI=;
	h=To:Subject:From:Message-Id:Date; b=gEFMGqhemHd+d/W4XazrTScBqyz6oxwdsXYq+5+/IxUecYKq/Rtg6EZ30kPO9i//iBqFY4pWvH+ZSdlEQ8CttMz3NXhLGrNVmSmbXh4+yxk5lqJ4wVcXjvIpEtQq8uul9RXGUZyyJSxw9zgSLLJo9nSQ8rX1i5T8yPg7itNOW8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQvV0CkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQvV0CkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B09C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752350393;
	bh=LP9I7kn02HYhtTj//5/8W00OD5oLIkxRTHhxmYk+ViI=;
	h=To:Subject:From:Date:From;
	b=RQvV0CkR7I52WUbYhBuwXkRMkx7ajPmY2PNXKIOFPj4cL2d7d7EOCBVIy7XJnoaWQ
	 zp9uERdMCHj3vOOPtS0sls7sQMt9xJ8nL0+ywhCBvZBMEr8bjFeS0iHyoO/ijvYvw0
	 CHfBqYuSw4u3UFVtYil2ID6qGb2cjtITDKQq/eIU1RY5DnnLalcnnR6IuFy8R65OUe
	 TbrTVIyz/FnTIm5GSy1Fg68YwvZRjvP/WQD6ELr3GKppr7dktw6EGNOhO0VJNd+sg8
	 5/901Z9o2O0E9LYEiTM/tuy0KqNnHgxrJrWL3jLJbwVsSCWlO1nJa5ej8Hm8TSKoz4
	 7C4x8YdXpEfCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C39C83F1D
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175235039359.9821.8029067899313372908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22c7d1e1a829db4bc829237ea14dfc3dbc431192d454a57ff33173b806049307
Date: Sat, 12 Jul 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752350393
