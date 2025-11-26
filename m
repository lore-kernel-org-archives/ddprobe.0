Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1B923ABA9
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764193974; cv=none; b=XYEsEBdN09NnMFw8zzWzMO4lb6ajitZa1DSqIQ9NYzJwg2Jgn4hI9GkfjFOHwbUBH4Hfvk0FzVSerknu8180s0wejM0ZK3BiL0p2gPp59OlkhmBkTWqleOogCs+vcq1f39XV0qsXpYFy78KbRU4O3ZXAqxeXgsCk6Ci00GskmcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764193974; c=relaxed/simple;
	bh=aUrBR4nFo7vzlYD9LBW7EnSzi002geRX14hBtMUCPlM=;
	h=To:Subject:From:Message-Id:Date; b=fVf3Fp05uMPtbd0M1Gb1vnHTBz1bKQgGTJiUtwwTwyO44k76WotZwJNV87Zn1u5NZcDdnVOM+ssBrgxxiWyXQFdG9ZqWqXVTFwb2FmDkMtjClJ5tF7XhoMqqWHpBja7eo8SxKxrIlf+zkR0uuWZtnwizwGllATiC8x4XDjG27iQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aXqFu6Ak; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aXqFu6Ak"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7379C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764193973;
	bh=aUrBR4nFo7vzlYD9LBW7EnSzi002geRX14hBtMUCPlM=;
	h=To:Subject:From:Date:From;
	b=aXqFu6AkPBPCOoxYC07Do8eu7auPQsPdN6ssnniuxcaFcF76wa5FNy7luFTUdSfxG
	 TWRoxTSuGrV/6DhsCyMqjyH7kXHVomsFAMbtcGQXdYbtdsja1afqo4uex/3QmLxLo5
	 M8b4lD1tiVCUvOyYstFEnZcLOvNsHs08d89Jg8lWE5il9VjXd8SkfOGcs1N/Ltbs+A
	 CiXjg7kwyIowwLWcAnev1ygq2yZlCJvJ1AThtRTbv22a3jW45L5bSp0s1qkTNNI7GD
	 RIOJKqfGMnw6wslT/hbVstkAHtiTObUjrzP1wJiiDjlf4bGan/J+pFBaIJd1c/+wcq
	 ws9TGZW4sDN2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93821D1119B
	for <ddprobe@lists.linux.dev>; Wed, 26 Nov 2025 21:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176419397358.15145.12551647938298935716.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d77fa90079d2300766b3fccf86c52442d4c2e9610c686247144c7c4bac92d189
Date: Wed, 26 Nov 2025 21:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764193973
