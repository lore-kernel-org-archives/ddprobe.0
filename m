Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28CF0171CD
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768797234; cv=none; b=f2qgMamDTgzDF4oqeW6c9Qclsei9I1fnJ7b+VN6ZLFWXaOgu+mNN3/sBzpTCzprjoDZ5RcSb/965kOHrUOj3z9BTS+KjHYeisqA/MgU3iw4+SZ4yO6TqnFELX8VOR/t1uVIH4SXCVXrXpQ2Z37KWI3RigY5TtTrPWait2GjBUdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768797234; c=relaxed/simple;
	bh=dc3KuCikFK/HC9UcfDFu3Q9HUkZJ9yz1H+2MPH7ehLA=;
	h=To:Subject:From:Message-Id:Date; b=oOpipYuTekqbezGGzsTBnJ+zoBJsmAoFPOCEL8S+ucsx8gQSx16ycCM/rvj1Ytpsuy3pkuYm/N8MHGP9WMUkxk+LHP/aQODhPZemQG1+IDT9DPMQ8w73fdkN0ijjyS+kPOfBSr2IzvxUGHcOCS15rlp067XOFubve+MQ9ZMQ84c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LttNkOBc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LttNkOBc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD369C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768797233;
	bh=dc3KuCikFK/HC9UcfDFu3Q9HUkZJ9yz1H+2MPH7ehLA=;
	h=To:Subject:From:Date:From;
	b=LttNkOBc73fO0X5x2EYnANf8C/ci9yC1cRdrCpTaaB1HAEWGabjJdrTO7Zk82Xrrz
	 m3FbyZOxmKDciCHFS4u44pLAwBH6IhUvfiK72eTmEB9ZnnY+epUXC+ShL8GxRKUsxg
	 +yNZ+HiwL50Ij51r5TApsijBRDA52wp3hO6Rx/23MSkmSfjNp7vn63oYAzbeIGJAwD
	 PHbYsOTaCMmubkRp9ocu84nCTnuke8kAIlu57+zLYqyyo+f16oto0pjuYSue9ppKHN
	 t1pmGLKipjtvyIeu6TKFYrp7hQN6Nhm4YP06tOdT2PVrgr85he7L4JCRCWNmlvVH1O
	 KpXw5BsxyDBBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A382C98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879723359.2409.6923247155899239542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c7cd3b8aeaff572a3d2aa866fd58e99419198c0b49f14f993b50740cfd3202b
Date: Mon, 19 Jan 2026 04:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768797233
