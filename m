Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515CC387588
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784675314; cv=none; b=q7QXL1oeZfkaQ556AoTrFKUn/2LzpVitmf/+KHqRKBMcWeNHAZWbi1OvBqLvjCq4ew4//GDAA0KXIUffWHUm04P08kslFWuStiarJMtjjWgN2iAJjUx9RO4syka9CPQ7NO6XR8lpOdjwAyOqWQWJzDHv3qEtNU5FKmUKpY9fQEc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784675314; c=relaxed/simple;
	bh=PTAO4yuhCpqTw9IdtnwCSAgwHhoenABLPWo9S0kd9/c=;
	h=To:Subject:From:Message-Id:Date; b=dcZV9dVPqAL4Kfc59wbaJToimPNiNCEcNgs5d0P0gTyWby9mTDlowpY4qAb2G2+dZbpBEpWgFly88jkv/o6mcQllwaoHheYdZMWLYF/6U7PQe8xlzRCHemx0xALrXtGfsqfpVDr7ixN5XHNgVUJK8i9N4k1eLOX0LAF5i7po4xI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sYqwoUW8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sYqwoUW8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9707C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784675313;
	bh=PTAO4yuhCpqTw9IdtnwCSAgwHhoenABLPWo9S0kd9/c=;
	h=To:Subject:From:Date:From;
	b=sYqwoUW8WV5jFUXAtboEwKiKzzZ5HaScbPJ3h9+rfgglwPzdJwFbFHioD4Fd+j6L/
	 IlMXX+icvh86phuX8b80GzhU9GL5bLEI+ZO2MsPG+AbV/g5UMQ7MPrS+iph4tQztRa
	 CzJC8Vesn+cRFBdilcHZMynNQtSbc5hdHDBGS74riGYL/STgmI5FTzo5Jsn7D2XeqT
	 ONhvUmue6RmZV0e9gkL7lXGF7KhFtVF3WCHUY7lmqJ4Rc9jDoDV4D8CAV/GUm98N8K
	 T+XrS2qiIJYf/WHmILWEl7etbCnzDCWQ+auFfBpkM34jxrbGfNGWM5DwFzChBkuHqx
	 DxeTxqm9b1kOg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFD9C4452B
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 23:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178467531370.27055.8469899413753789782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9a1beb3624b2bbedbd5eb7a18be26c43ade783fc889e5b2c46a4d76f8af954f
Date: Tue, 21 Jul 2026 23:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784675313
