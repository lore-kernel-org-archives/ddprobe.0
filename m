Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CAA71DA23
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753381794; cv=none; b=ZxCcHT8DPXFhyBX3n7TKKcfP2CzDED44Vj8KiuxbhyWKIa4c5Xg5tecgxHlbJgWAg+XXHkhGJPC2L3ZOQfYxY30pr6JmFqfxmsT6aJz0Q9dPHpuJ4gMk18NLNL276Rg+0sBdgTdjGDZ6eN25JJe0OEFKCi7jcgQZuqnRWqmJjqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753381794; c=relaxed/simple;
	bh=kfvhSWyIBF/AuJ98zHvOkbvIuVEn0XXhOeHbJlVBuqk=;
	h=To:Subject:From:Message-Id:Date; b=qodlqPUgCgD1XcgrMRnkLeMoAVwP2PGkaBRKVnQJy3QvLUktwibwyz+LvU+r2W3D9bwaLlOZYLGIjtvfxTp8ONv9KK/BMIn28iuxqpdHasZtWTKJAHc+foa3FssBT752uWowQPJiLxGa4vy+/w2RL5nitxfjBxKyunpvFk06ws8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MaWVDAtl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MaWVDAtl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A84A9C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753381793;
	bh=kfvhSWyIBF/AuJ98zHvOkbvIuVEn0XXhOeHbJlVBuqk=;
	h=To:Subject:From:Date:From;
	b=MaWVDAtltKlCu0mVxpbQ1kRkNcXGd58JjYfmUZGbhou+qQIe2URGesFpLkG63iUZW
	 uo3Z5xB1uvpZY+7YSDic5cIMHU8vLgnE6GNk/0y3hpi6QI2K+bIU8Dr0kQBSA17AKj
	 pdVI5/U7YwjcDiJQF89DL6d/qraPRRTl0wFl4edGFgHgo4id59DGnUtMT5mlNOySvI
	 CWontXdhjQPOdNuWf8lR55YhnsF507cMbJ1I6ggnW66KbmVPJ1zw1Bz9wNKSU+T2H8
	 bUSjjynrEl16zTsp7x5y83yJ6ieC1sDUoB+GdK7kbUvyqYJyxLCA1E2IpXWesb/z29
	 0XBbwQShY9bYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923F3C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338179359.7858.2368723951810489764.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eea86a6c1a14338977726551ae13c5b6ea8059ddb70b4c96bdcd36e50803f3d
Date: Thu, 24 Jul 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753381793
