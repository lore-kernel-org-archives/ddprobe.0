Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31EBC1AC456
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730710554; cv=none; b=aABwXU+CjJ4kZtdg3J6reBAIwWKkH08z3MkfuR8n2AlxQ1PHxQy4oDiNhyHsru2SmaQGuPI0p3yQM/inzuxamxEqXRQw4SZ4/HjqYlOSW0WwTTyt+G+qtWDISYmVgIJ6jab0Kq99N9M21u5QGxqIONtD3WMS/Pvt0wQKvtxJ58A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730710554; c=relaxed/simple;
	bh=m/13RIjwYDCc6ol2vySk0XY7nHDkNxnXjMCLgx+Lutg=;
	h=To:Subject:From:Message-Id:Date; b=ERAIDv8kPnxK8MGIJ4o10SGT5mTBs4qsz4aca1s4iKMfbhKZ5FVJm3IE7x4Axzyog9r6PK6P29zlnokh1+YFBFsryTZwI27EAbcUWZiI5iWDc8D/lhis4msSe4qVZpXSdO8OwWHYeMhUdKAY+XKS/FX1bOjwQZkgX6ZF+XGWeas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VHNRn8w9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VHNRn8w9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1087C4CECE
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730710553;
	bh=m/13RIjwYDCc6ol2vySk0XY7nHDkNxnXjMCLgx+Lutg=;
	h=To:Subject:From:Date:From;
	b=VHNRn8w9KbkLfVNxRW9IERB7aEpFLYwgl/qhKFS/RpjKlZnovYqeDeJgKOgWNcwp/
	 rm+Mngc7ZTBKWhgeYY3azAZaXlST5VQK2BOD19mNtevtFOAVBXo3XMeBfc2hYy+cCD
	 qT+Xx8ftI5IW5hnwgIEUz0jXozqZPAfXZj1R7P0Xdx+iMSypNj33okt1eTWodmIp1o
	 8tqkLo5yIjMopPcLyKLhEHXsaV2++/yzS6BxpK0bZggByx+S4KFMKI2KGp1NX6liN5
	 JAZHk1emwQo6nI3Y+S5zx3nf+9lpOxuVs/zU7vyMxy1KRJr4GVy5bBMilh+jnuyBwW
	 BYMcSq5fTidIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BB85D111BF
	for <ddprobe@lists.linux.dev>; Mon,  4 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173071055362.23055.6936336114696359117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: abef72677b85edbe2257056acab1b6ee6d998008fce4ccd6c15222be4229ba20
Date: Mon, 04 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730710553
