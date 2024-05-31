Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C17D208D4
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717188863; cv=none; b=Ngwv31aV8w737ZxfbZUp6Ii4zG2p5nepq20smspuolgXa4I4lyn0ed47u0113XMS2RUv0X8o10H9i61uj3r8oOoQIlBRt4kU7NXNFsBj2muLARWpiSz8+xDEcnx2Ov6IzRJCRux2+DnKvl/1rvifSsz9C2Sc9F3HhgB3u/0whTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717188863; c=relaxed/simple;
	bh=V94VsZw5iB2QLA+BF8IMvNpGqomjVv3oyPSGYEUVZEs=;
	h=To:Subject:From:Message-Id:Date; b=XprmnpSS6wYDj82DVcbjR1kS+cBhUU0hgJtM9qWNi1vfFf49MrlgC6lw7ljHDBYIOtyo5JySaWv5squuOS/dhut8GRHivVoYtsc11quvWFC8p195m9BgfMA2oMsZXy7HhoqkZALx8pfkVqDZtrSmkYkqNlH5sftVoMVpRjsZnSw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jYhkyBLY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jYhkyBLY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6C4BC116B1
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717188862;
	bh=V94VsZw5iB2QLA+BF8IMvNpGqomjVv3oyPSGYEUVZEs=;
	h=To:Subject:From:Date:From;
	b=jYhkyBLYBSWlYg4Jq80YIbQi31M8vGGrazs09sE84hsVxCW3E7barEpf6oMAB8OP8
	 28guvM8BVYzxR+6VMC5bZoOfWp7Gotmc/fSlmbskx5iH0oX6R7xDGFAoinQrQ3NH5e
	 xqod/vyw/vzoR0ublui/meTKi7TcO4k5XTKQMc/GIjMMMCqTQAotWgsyTPR4I9ZlKg
	 kSDCtY1w8pFvqHPUSq3QnylnbJKkho459TPS4yAKuCiM6RcnnjJk/hBUo4L6/Ni67U
	 GGAq+GC6GxqGqKg1XAtn5er57rEGoQe2tzRYz5zOq99H7SeyGLfhdOC/psAWhjDipN
	 j98NRSPTApdbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2D9EC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 20:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171718886278.6926.3277561762497094957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a055b8b561cd8846b1f42c2be39b6dc6a29b263e83159d700b904dd8b1ba0ffa
Date: Fri, 31 May 2024 20:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717188862
