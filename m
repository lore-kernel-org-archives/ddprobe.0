Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85EEF4AD7EB
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788384634; cv=none; b=ivYse0hQo6ITrC3mquYwMH7QZvmTVD64oIfYya7uMK7RDinfiAR4PdzlBaiUUi84kl3sxLp94226X6CYQTCdG6/+UiVmP3dGFFnPJPIFe7gmNvzKdFjD9tIQITn+9CcN2iOPTX5UAak5CN5aVgWhvej63ANIo0t/kjj6nGOLig4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788384634; c=relaxed/simple;
	bh=llHG3R1wCAlVYnpbRQAiZ2VkQ0dFAgr8xsPLu5gS39Y=;
	h=To:Subject:From:Message-Id:Date; b=KZzLBV2PWAzxdHSt4d94LSp5odd6/2Et9hCxhjFldEfJM2O5DNlkFEmxE4DaMTJ2j71t1qLebrdFduinuiftdsnvDpx3q5GdIglcs7/h7+zLIiKIqh6UkkIjBuFvW29XixgNY1NLnSCGADLHouv7T2xJDJDrrO21IFP9STP8rY4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GFuihtKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GFuihtKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC44C2BCB3
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788384633;
	bh=llHG3R1wCAlVYnpbRQAiZ2VkQ0dFAgr8xsPLu5gS39Y=;
	h=To:Subject:From:Date:From;
	b=GFuihtKJzbplgwX64jmTR5GRgRtDU5tXR86fnfypT/aEzk3nqCUmpO35yRgYPotx1
	 bbh5H/5iHeV0wf+AKYlunpHPF57M2DUccie2KYzDtcUihyGk4qS/RneKZsUxqIjNdG
	 OLZMWBJiT1srOLoLP0Y4gkUD6tU7ZduKzjEVn+pZ8y7rZl+iyCKqis+chEMIgEbXcB
	 epv1NWzidfk+BkxSNuFxez3mZdz/7JIZBfjIVg6y9XwMeUzvAuHFbN5aULA1nKBZPG
	 lEr8u0d4nnkP975rLJkaOX3iXdVXoHl6KEFd5CYdX7slDyLumJo5mxHtpfNb/KeyrS
	 bfL77VlnGiEXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC60CC624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 21:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838463369.30724.16002846143792626128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77cbf831e012b7baca99e5fafff2c5938b2338502fdb46b1e838ae579df4381b
Date: Wed, 02 Sep 2026 21:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788384633
