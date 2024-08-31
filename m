Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2583F1BC39
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 11:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725102354; cv=none; b=ZkKrAlOp2C/Pc8vIfui03PJ7z/UwX86kM+k3iAUzqb+/CvI+6xH3QmFYhJOQI+36+e5vlYdH6hoilj1BitfTpvoDlvutRUtp4VGC5C74vNCloHAvdrQFWtMsVuKyM3ix2kd5aQk6SOEFXj8De626/UeI/vIA66cdRypQ78MYWqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725102354; c=relaxed/simple;
	bh=tmA3Acb4Ir7W5hYoTyPZJwwnnydpiA9KinIOR3V18ME=;
	h=To:Subject:From:Message-Id:Date; b=lYJ7xg0KEj7Gh3NM3RSHUHRLVD+mW4D7CdJITq8sz/aFUXHXmrHgniH5epQv/Xq+oS1e06BG0Yz9lulVFA+yIgQKn55OKesXgjFHwRBHIs2N7dMM1qgbRLz8AcW5Q2FEfPkA3QfJxHhYYm5vSCLlGR6ng8w9dQXk8VKIyEu6Xo8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oar+Sisy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oar+Sisy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA381C4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 11:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725102353;
	bh=tmA3Acb4Ir7W5hYoTyPZJwwnnydpiA9KinIOR3V18ME=;
	h=To:Subject:From:Date:From;
	b=oar+SisyxEVG7tkhPIW+eHudTeTCN+PBC5ZXODSxYk8jnTapyJFeAe1toZsGYKOyN
	 Qk3gdAntjiA1YasT3lW5YDL1KTNEhDOYkWL5PyKvCmUz9tRssyX1eVK9Ui/ZoKWZJD
	 0YGBSAOZTmJE/aYxgSFmT/+BSqSJtw4IhfzM5Ad7Q0EAVSdwmyurMoN7XZmSX8Dyo2
	 aA3/f9CZ5xKCA3DxXvUrS6cALUNyMHZh9ffzmxzZNQWAFGL/S5f1QcXYmnL5cKaH9n
	 IjgFs6H8Rztq7urAkZKLVCudkhgiJ/lXzdX7IZSVQ/WsU5xucvBxs9bRYFWyuUi8t1
	 u2t16K0V5p0fQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B970CD1293
	for <ddprobe@lists.linux.dev>; Sat, 31 Aug 2024 11:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172510235359.16164.9652416231368395980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66b045eda033abdfc25560a22ad2c43854e40ff8cc9bd8de2ea15cb042cbdaeb
Date: Sat, 31 Aug 2024 11:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725102353
