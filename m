Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F602D47EE
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768194834; cv=none; b=ZosevWeMU75D1rheH6kf044z7FXFyjz7TxHLnXKpRkiYkACEP8WvyZh6Z8E5rB8OKxesjN2qwzNGioMhjJkyQP7pGMY0jkrq7IX9u/2QdZkS0rMColZltamGh4jYKdSRqby9kwa47VySWaZQzCJHCxOJWbhegNx8X4WK3SqqHrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768194834; c=relaxed/simple;
	bh=RKaDrYH6tz9Jwdocqcr9ufMZb8p+WTT3Kc9SnzQfPP8=;
	h=To:Subject:From:Message-Id:Date; b=ZeOtCs8aqazDrfBwaCztdmzxX/J7ZfgFxS2DUGPrS+erPd+B3DsMHgAURG1Vh7FDeN5+X0qREL63C37HxpcAmUO40ktQ7HiVAE3bEZp/vtod+jDfHiWD2qJSmmLIdTGG7VJE7oS8Ix2hujONFb0bEGIpRKzSiPV32/60zWHW9V8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AG58eWeW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AG58eWeW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0889C116D0
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768194833;
	bh=RKaDrYH6tz9Jwdocqcr9ufMZb8p+WTT3Kc9SnzQfPP8=;
	h=To:Subject:From:Date:From;
	b=AG58eWeWdmlUUkdl5pngNW0qzETww1cw+55qVEHNLKGHmMy0Ie0ZEYBWUIzMRTkAq
	 Bkmh3Pu6zYWrXYTRMDtzanneF9M3p3QRtvVwzOw1gNX+oVFZG1eV5Fr7FFrGL7pBFg
	 +F9jEVo3iPLEsPAeLP1cSdvwRkBfTJwKrnjR2Uo/wxHINY/0u+zrKfaVlPbmzJ4tY2
	 kp48Hke4Vrphm127UDpjMWXLcwLHx2jIai2bzN92QRpxe+FOWS3lGap7+zpcb9eVHJ
	 ott8tTZt7Gaa/XPCUAw7cLUb1X7U/Klfy/EvnzI8GMPYLWWginRdrwTUC+oUGzkdHp
	 N9jbysxfWXuYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFEDD25030
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 05:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176819483357.14073.5068910243618359112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd96774d973307e45e10a36976ee74b011d88a8ad0fec147b0ffca48ab2ed1de
Date: Mon, 12 Jan 2026 05:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768194833
