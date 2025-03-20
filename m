Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F728190072
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742507394; cv=none; b=HyGecRfG3o3e9CkZBRgmXLxKGE4juBqtxJpdHvPPndp3IoPHujLhJhKRTMi2bckh7Wt25jLaplwpEZ2ESjIh9X/FLC/rwgCXOUMkEmQomcVKslizokiqNNFcJ3uBXNrw3kHrZ5LbhshR2a04MKK6M5nviZL7Fw6eyAa6/gmgO4g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742507394; c=relaxed/simple;
	bh=OVl875ofF+339IbnsTKLWvORcMLg6dqywnJdmlWBTgk=;
	h=To:Subject:From:Message-Id:Date; b=l8+2ZEqufYWqfjuynbA2lEwm9NiQ8nrmahrdqRvinJ0iuD9Tg1Q4ecN/1obn1huOuy7yR+oCiPS+JE+fS9ptpMhyXnrn6inKT0Kpg61IU68j1t2gAXz3VjCcisKGCGNzABsvvIKITmm+Bh6VVjjNUyvuo5Yv6iatl/3dU+zVLBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiDSQ7d+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiDSQ7d+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1C3C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742507393;
	bh=OVl875ofF+339IbnsTKLWvORcMLg6dqywnJdmlWBTgk=;
	h=To:Subject:From:Date:From;
	b=OiDSQ7d+7dkEgWFeTgqIjsvc9qPH2UYSYtf6CmLErOmpescs3E2JY0CZ8Moi7uz2v
	 41QpOFHyE/5CW9fmXU0KPixvu8u3PVtKhCwWA/lYv6JbppqlbQLHi6UEbN5m/6D9qv
	 +rbyXJSoys61AWngV5sYmW0IgvsmSOAlhhFAA/SqqZ86sw7YSMWM7D3B7Jx4i/sfY7
	 sL0bfVMifzFZhxQBaSq7s7FalWD/t6e0ych9djCKliIYhusFqLEQ8C32BgjUcl5pcu
	 tkFpQZrZNSEZt3s/PaqG30veRS+fFm76nsdLubdtXEpIpHoFFH3ouLEwmcjvzn0TST
	 Mc5K/JKcRRIqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2EBC28B30
	for <ddprobe@lists.linux.dev>; Thu, 20 Mar 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174250739365.3262.15324521982274906213.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4684ff976692cb5c5b3cc8c02d0c6a0fd87cbc259295cbd03e17d954a3f8560
Date: Thu, 20 Mar 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742507393
