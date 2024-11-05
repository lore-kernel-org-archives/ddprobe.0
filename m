Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 291671F8EF2
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730838954; cv=none; b=T2rH5Ee9Kovi3H7X6ehsKV2D7ZrzIxDN2G39ZnKS8hsZAbK4ekGV8L947shDKaNoehtX0vSYwMLn7FUfri9K2hqL7V+sbofl8g4sKj0EFvzCwsvC2tClZ8++GSq2gfPddY0ig1oIMnx9x+DU9Uh+FvGFk5wTu3Q43leY2kWwSjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730838954; c=relaxed/simple;
	bh=Hs84l3yXE9rED/YVBnFzHK40ssxZaLlW9vg8TT+WLYE=;
	h=To:Subject:From:Message-Id:Date; b=fmgyVNmYG0j+6dwafHgmAIrZUP6c61s/y+tt7lYsvaxnCFk4Rvz4ZdUSow+u93zpgK8wD1W40/pBZpBGnbogqLwUV9Yjosczbqdl/dex4RoyOmPfiDEJcNUBWUab4ny5m1CPdilMa5ewXin8eZCFu6E+9THUPNgeBKY4MKpgVFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmb2u8HA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmb2u8HA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA751C4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730838953;
	bh=Hs84l3yXE9rED/YVBnFzHK40ssxZaLlW9vg8TT+WLYE=;
	h=To:Subject:From:Date:From;
	b=kmb2u8HAtAqiZBAlI7352vRL8gM1WlxWwKUr20HK11Pdgp5NSZrm8YsR5fgKwFTBT
	 JC4AuNjLyOz8jbonjnOX66PtCyD19x7DxLP2OFO39kU6jtRiKzkvka3IR/iPiRHEtg
	 FP/epZoR1zfMS+3eoPjIW8IkN/+kFLr8oC4xNOHtrZZb8DwuMRx92zcZzkg9lm3D6V
	 F7n3I+wWaiMC/RR1KQ5I+w0iXva+/ZVLeDdRz69JJ8eOi4yDTC0mG42ikoEmCB2KwU
	 XkAs/vqSG1SRJQTJ9kidTQzFz21Z8gJu/+x5o71oPHKf2mVxNiQ0yVnGuWOeEqEQUI
	 JgFxljR5c5mQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9987DD33A5E
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173083895360.15248.9093366734182201148.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 742434596748620838545ec1ca35e88bbc56eae607a4260fed204ee86dc8f3c4
Date: Tue, 05 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730838953
