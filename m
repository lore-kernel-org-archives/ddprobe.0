Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 430CD41C7F
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743962394; cv=none; b=huMszhP3of4nZPtWQY9Nhhcnw2YdAnJW2LAIyP7UhP31GgExTmhUAD0gZDp0Zo6iA8bg2hlcOIQV4G8JztPr2sRut3/wf42Xspz3NhJzYN7SKC29lxFBr+c5vO8TNTWokACSrGKnG3csSN37JFQXHfvIyvC6tYQlHmsJZKfQ3Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743962394; c=relaxed/simple;
	bh=FHtceK9M7WIPEAbMkJzhO4zFTK+Y3ltI9VkQgVGaZrY=;
	h=To:Subject:From:Message-Id:Date; b=arWg3oSTExj7mIA13bm8xy1SWZVIxaZch2YY3xPtg+kAG/EFxSMq4lV6tYm4+/P7XCa2+Zpq6uWL95/LhbTqwwud8ILR6+YLNQVFtHABOE7nwBZn10WWwm45/vDmyuRLrAqAIr1AIFN6TTVY3u4ZxxMJ2KXygLNNscb26bO7g3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b0eCrUus; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b0eCrUus"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4C9DC4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743962393;
	bh=FHtceK9M7WIPEAbMkJzhO4zFTK+Y3ltI9VkQgVGaZrY=;
	h=To:Subject:From:Date:From;
	b=b0eCrUusnqIBPcLlY22Z/CzjLCijQoI8k+iHMAbc4xZsUu6i8U+QmzC7x5FDK7ZB+
	 F19kg1nGho+K0AFyrppm58/opauasw2FTjuG9DVa4VN0taSe3n/4xF7+NXLsfugEf+
	 aBl8OtXgZQrXFyisImzXeFHDxUPCavY0qPkrF/hzm9JMII0mq5Sdgx/t8mL3UB+5uu
	 34FqVHhZhUoJy/tEVTRIT1//fp44D+Q66sWPYxk3sF3oFFPdSjtN9VVio0iN4u5W6G
	 PaFmC+rEFAEBmKlzdz9afUaovBagjARgs9Y+HJjDY40A99JfOHh+4L750uW1hDTUfs
	 5ju23tqu5eFwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E6F1C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396239362.22665.33231628135432736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1ef29091d971861d0feaa2ee7c0f8a4f039e1c652b0f24277eaef9df0e8e68ca
Date: Sun, 06 Apr 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743962393
