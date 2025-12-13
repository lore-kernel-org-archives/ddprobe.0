Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32C413BB4A
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765664574; cv=none; b=RYt2e+oVKKA1GV/7bVSin/nYCXmOiYatqnAwBtLa92Qu/6lOwM4vL0Pd8IVbWw35rZAkkimUZLOLEodNyL3EmZiiU5S7iyIfeGpsc2CSeE6FXHoZrgpcmUuPTbmGbX1TVTAMuFmnuIMOULcUwibKy1Mzi9tNXQVpp1MZGfMiAJQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765664574; c=relaxed/simple;
	bh=qingvug3fEQ3zVEA8636XHNFD80XfSBEcKlIS/z/wO8=;
	h=To:Subject:From:Message-Id:Date; b=twMbOc+NZuXDNWeHYi1EvKVPzFoyTPQWz3rr5MZlnMnoE8GHKeY7yS41jc1+AevMzctjh2UkBdnGcCSAglV5KZD9VHJl35maCYyen+KRoV1lAjlOr1Au6m7t3F6pZXItnT+zSZnn5bGrYFc9u2CvRGuiCYbNIE3Kr6pn9R13OMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZMXgdhuh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZMXgdhuh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A683EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765664573;
	bh=qingvug3fEQ3zVEA8636XHNFD80XfSBEcKlIS/z/wO8=;
	h=To:Subject:From:Date:From;
	b=ZMXgdhuhiNaoeO+N3iVVFMpCOTabWPMqSknPaW4SYc6mkrCYMvGYh6E11YFJs7F+y
	 tZjNnU761aqxUcFVTCGYkijtLPugeXQ3+LUplpFFxl2JnaAwuksb5Ijm4C9+Adw/3z
	 hvG6ZZ/pksGg6uBTYrmJg/VoB0g5Y4dHP2505aWdkwMN3Z3Lv4Y9nU3p2EesUHjBJM
	 vZQA5ToqokcwtybSN0timo+ABRp3M8i3JbWkyyj9bHzte/RHyhP84qQYnMF6CmkOz/
	 7lsJ6BA7NV6Znu4baKsuTOHlpYsws4tsH+pue9qt+HZZStYO7bq5NUDNGk1LWA/6Zb
	 /7nm4o3xodqzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96380D5B169
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 22:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176566457358.14082.9068629618593479414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 10d3933c52acc55c1eb908abe612463bb0b489498e74896aff405fd8d867befb
Date: Sat, 13 Dec 2025 22:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765664573
