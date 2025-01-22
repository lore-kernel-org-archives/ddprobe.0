Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 420F614B96E
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737526554; cv=none; b=me8SeuBaVMEjSqxfiKWBkrfhtXtrozLOhVEvkOfcDNWNRyGoPxEWIwDzcqhxhXTJL4zYY1cYbT+M59PvQJuIsbULL4ft/VGZXWAKq/GDsxIS4FczBH4gIy3/M1puWQfFzI0bpEJY/GMje1RnltehgrgQFJZEXorGlIO8Lj+F2uY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737526554; c=relaxed/simple;
	bh=lSQLtrmOkhrnVAX9G+7co12olP5Sdeo8LzMBfaZbVLo=;
	h=To:Subject:From:Message-Id:Date; b=hrfQKSEjrfIqd0MPFg49LOMEDeXUgGOtiabWYD01TmgkiS6AMi6IiqGDISOfLlqLvRlT0LHSgrORBi4/t0Z4FCiIKejmCtKT4pXYeOcq84Q1KF/QSfIoloxGyd17pZS9Fj5SV94bP7scquTmnD3uvSNHb5+EV0sHTj+FDNaG0mM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FuxlT9tG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FuxlT9tG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B7BC4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737526553;
	bh=lSQLtrmOkhrnVAX9G+7co12olP5Sdeo8LzMBfaZbVLo=;
	h=To:Subject:From:Date:From;
	b=FuxlT9tG5vQlEMtqT7MEv7uX7sgvbUmkKVHDSTuZhq59fYeIEwBN/gbbfL0G6tkoY
	 tAGVLW0EV9MDNSs4GXc58n7+U0x78mxFgtjA9/AJED6FLC1B0vVhgU1RBiZFwRcpeK
	 1fMoTe9aILfi0F/nxb7vPWkyhyazCmFrjWJVopbCbye9gKqtP7RjXbDWa6KPkVtuvQ
	 JiFho88djclV7FdGx+P5oQwltABJpkrbzYIvbpC1qhqYHyB7W49bOuoS2NeTD1T7O4
	 aGssyiVwFLR1Aj3jFx8yDYLXbdqE1ingH0Hwo+79HK9zcf2c5M70Yt6fe6DdP7YsEx
	 ysNGEq/Sk9vxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E087C02181
	for <ddprobe@lists.linux.dev>; Wed, 22 Jan 2025 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173752655357.30169.14029139945491629422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ca48ae2a26fc9941b36b0fc3b0ae0793a436ec5ade69bc8fde33c70166c65ae
Date: Wed, 22 Jan 2025 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737526553
