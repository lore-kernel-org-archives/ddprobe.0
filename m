Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4302216DEAC
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724316954; cv=none; b=Xn/38bIGPTGlfgt56jCjszM8vBxyd/pEK5oKyJ8O+VYO6LtPYqQyerLdQmtCLaFCD8p2kIoDcQfqkM+bPeWyj3GwswayWS/CHrjPbUZx5g1U4XdbVHrJ5VgY8wXG/vCWwnZImZsY3KXgQrwt2gxXBVfg70WgDHFSeDV8WlaPy7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724316954; c=relaxed/simple;
	bh=IZ7TH+Fvly5SuhB7VaICJo97AvwUJBfjsgpaghKd6cw=;
	h=To:Subject:From:Message-Id:Date; b=E/vkWsAldh3R8W0PzchelNkKGlngGd9ScDbQlD3H4txmgrGGlIoN+qgRd4Q9zd0X+LLk1IVkzd3N7OvfDFfJZXocl8ladDWHSPdoyYjed/mab0/+yGbZ1pn5e2ZSarkKMUgzqDJy3DvWN+IbTlMXWexxWI2R/gceM1RKAp//t3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkZJEiNS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkZJEiNS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3ABC4AF09
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724316953;
	bh=IZ7TH+Fvly5SuhB7VaICJo97AvwUJBfjsgpaghKd6cw=;
	h=To:Subject:From:Date:From;
	b=GkZJEiNSbDBmAraiUhg4iM3Hwsc5Q5/bb+fL+uAVMxAfIwiui0Cav6Mum6aU1c7Xv
	 VTtCRxtJOg6C0lDp40YTLs8Faj9pZMvlYsKb+QTwZ3xPbkO9z0tbaoqCkQcLZKasbD
	 uJs1eG9f3BGDBuZl4yN9Aadeasqbn7lThB9s/HSZqueftuoBz/zHh1g448Suu73pLH
	 eAE3esUIvtyRUd0AjN0roNu9Bhsgux8ChNuaiD3/+3LacZQqLNktAEzuR4KHB7HZ4K
	 ONa97GyZDjXvIuIqDNeKr+G18+nIQ1mDB508k5TasJWoiwgpMK7S6mt4WlguY2d2Fr
	 bCHakgOZ1mqHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C15CC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172431695362.841.5867003426532030280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25dd1a5db26ae8796950057cace531a161780647d4749c4c939ee26943468a02
Date: Thu, 22 Aug 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724316953
