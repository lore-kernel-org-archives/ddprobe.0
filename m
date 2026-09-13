Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC2626F289
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789302634; cv=none; b=uWgJDsM8XEf4gi8anxfAQU0UnPGfwgKfbZejs0l4dnTCJH0aQcJgcuu+9SrecR/QKJpJApvVkaqyX1YeitdzPPpWakerfAuj2X793/gXyX6kd0vpieNnUU8je97bkpx5L+8rxxTb39FR01cdeNH/UzjXUYjhvund4Pjl6o+dTXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789302634; c=relaxed/simple;
	bh=+Oknm3kyhpyKHuNuIy6lB2Vo4drWrzBAy44znEYXtWo=;
	h=To:Subject:From:Message-Id:Date; b=lXT4KyMDr81vqF3s3Uy2wmf26ksrmjkqbNIOzs+YxyRu+5D5S0bOUfc0Lc43BFuy5ePMWgCWvaXTgzHVV1a4nHGnHzVQ4qDK03aLLCDzyzo/gGj9xX8SeGwRjhIFT1yPuFeYt3niWCw7+MJErRbMu7IFX8PM1MaB2+FzoEla2ZI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHy6Mn+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHy6Mn+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B99C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789302633;
	bh=+Oknm3kyhpyKHuNuIy6lB2Vo4drWrzBAy44znEYXtWo=;
	h=To:Subject:From:Date:From;
	b=IHy6Mn+xEpOMCOuKtPvJcHk5P5S86IBwAU6K4ufKkFE6Rhs6i/P09LnxSu5RU7Lvm
	 M71yGzjuhru6NOL+6cEYxgZrhmICqQgMFM1zZ+rhzkyrZv2vImFNnnlNcCzCJLltfx
	 nLyJHC82kawlaweKsIxdzEP+LbVNQLoyvU2+ToDEav/+pBXTsNyaf1HqYesPTSszzV
	 sWrmdp+L2tFZkpfhXw8xzdYDDq5rswb0dgz9wF292mqL04TeO4gcAGp0azqAICFjZJ
	 1KTUYO/uE8XU1eu2HWdiiZdHt9Y7ji2pRViWwqo6CFqDmcrUJXuKUZwE7AZF6jViEK
	 K+FUcdsiLhPfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A947BC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 12:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930263368.7203.3599086119482470066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74478e06cff77fb6fe8000d9579fd10379d84e49712af30924a7f4a500cafb79
Date: Sun, 13 Sep 2026 12:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789302633
