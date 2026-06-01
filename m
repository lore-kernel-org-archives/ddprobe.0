Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F72ECD1D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780299874; cv=none; b=Bw1PDyqFiIxR9h5r/Digk9omfs67NiTux02OTOQMTuLuoa3n3WEMbsm5bKqN+dNpaC/hEvBqO6iZR7yXC1o5eVRzQuSsj4V5ZhXQZtqj7RPZl3k1vLmKkRZ4BmbZP1HshVi6amEBQ6Bmix1FKduWTbFu9U4KPGuLIPGiCYWxz6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780299874; c=relaxed/simple;
	bh=8+Y9w2eD7G332h3T0wdACEdCwTLjz+JmbJA4e0ROp5g=;
	h=To:Subject:From:Message-Id:Date; b=deP0P1F8/Y6ruq6U9qUhyCpxdhFmtxBSMXRcERs509p+O1fMkaJdJY4nt/GEsHEUxdkXu+bXc9Aime6iDoO7cMTnM6tJODVqyEa2ev7UpEUqc79xYyfPjOiTW+7WCOTQXmiFVx3yw81EI3NXi83pZV0u1FU8gemun4FoJnkSqcU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h+JEqXDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h+JEqXDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7808C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780299873;
	bh=8+Y9w2eD7G332h3T0wdACEdCwTLjz+JmbJA4e0ROp5g=;
	h=To:Subject:From:Date:From;
	b=h+JEqXDt/QFgwzeG2is+selwBz+o56jTW2NhrO3mjI9CzAEsoxV9Z6ldhL5qHRrC2
	 kbKO4Py7OJvA48tFqaB4O+OqcMVZNcR9F5PKZ+fyiA08F/IFFmnfAYquuYWgsiMxO4
	 hDCvUZ3Rs1b6pAykfNlKQLBHkmRxbOfkxINkbCzdBJPPwdqSUzQV9CS+S/kv4PhboR
	 ytnDZCNKC6EpMcws7YQusfjd1FfaRYh7Y9X+Meieii0BF/g2YGefKf9L1D6zyMqvGR
	 LzZNfu9NXV4Y6dc1L39xIZEsALk24wKDhoLcdbROnnCzPgHKD+w/O29lwnENCXTQje
	 nCZveEU3P2bWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABCF5CD5BD1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 07:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178029987369.12889.3277865434991568980.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 94514142584c61aea7eacfa898e8bd72ff2d3ae3805c1694dd2d530f6e5cae1d
Date: Mon, 01 Jun 2026 07:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780299873
