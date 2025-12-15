Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30C75281368
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765769574; cv=none; b=I1ddrXvDsH5i1ypUMKs5ym+GXtNVAQuP05ihJpSvdMu/spz7lRgsCFMqItVrMnhR6UGAzz0Pr7OAduZQUxtCwcjrMc9hm53SrIr9hrY0RNLm0xMMMUg93kwUUhN5yj+jTwRD/7YXgIoQyxHHVuv61Zt9Ewf2e+9guuVxRMQWw8M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765769574; c=relaxed/simple;
	bh=shfUaollnL0H5ejEdghvzZBrUVqTYMZbfMmkjGVou+E=;
	h=To:Subject:From:Message-Id:Date; b=RPcz/4trgUyDT20JuBaIaDOk90UnuPVp9EpWOK0/ekLGh+2XyDS4YTjyMsCuIBVd4PlbmdXXl6o4aJAduZmLdSZATvOSWSOUoUtS+h9KcbK/BQtbXVrdYqKed2t42lAyYpg9quKeGrjz9K3pPwwr1/TXswjPsxdxvcZbIFLvKm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ1RliFA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ1RliFA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9954C116B1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765769573;
	bh=shfUaollnL0H5ejEdghvzZBrUVqTYMZbfMmkjGVou+E=;
	h=To:Subject:From:Date:From;
	b=EZ1RliFA20PluUCJjoXW7RY9rlWCRjcQeQ76zGWRCyRB21CfvdL4vXw9oQe9pJfhG
	 iSvOu3a4VnXki/N8chfZOtOH6VeM6nnuXXcDjKZXfjKGdfGtXFXXp09EKDqbdaNRmv
	 Kby1VIsOHebeMOM8l7jXK1A5D4MK3trTo9dCE4/LqUBJFxYz1ViMduDOoIlzilYuWp
	 9HmyuplgBnoyzHWrAszdo2i0rTBW3B24l4+vLd+eYQQ9X77N6heuh2qNMK4bVJipGs
	 Belxo6yr6h2zcaIxpge6XvpM48nPwqpJIAZ2BbzQlo1QHulTfD5fASWnFJTjvv0H+e
	 Y71JYmuEUd/Og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93FF1D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 03:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176576957358.26671.6886235396614140928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8eef29078d882f065d7f78b68568abf26182beabd6374f720b08b0671cda2d0f
Date: Mon, 15 Dec 2025 03:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765769573
