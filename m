Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C04A7F9
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733271354; cv=none; b=RiZCujVwPESl/oyyhE95iRFzx16IPEcLQm5Ha4vTN27AoRuaC3SxzrDbVgS7dSsY8ygv4Ac3ZM9aVFsi+Hx41BtOR/XHJRJ4VyHGcTsEyVRaIjdhbqwxpyd49LsOubfDN01oHHrLaQMWXKcd0VXWqhqBDQZeviMcCGUhFSdaEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733271354; c=relaxed/simple;
	bh=GXfTRp1jqqLcH0pVZzKnGkyPMkuklE/eI91wfCHy39c=;
	h=To:Subject:From:Message-Id:Date; b=AnDhzYDIepuZcEcTj9ItG7zq4UDCOT/XErHWpX+/pmqnR8eccBRNI2RZRPfKJ7CnlNgKWtloCSRzuJe3z0mUbKHtJP/uBbRBdrODMepZAKu4LA0Ws+njQ7RsbwDqmEa8zfm/wvi3Urg/cAVoWfSV0hE0VKmTAXEc9xlVU2CEJRU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbjjzqOx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbjjzqOx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE389C4CEDC
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733271353;
	bh=GXfTRp1jqqLcH0pVZzKnGkyPMkuklE/eI91wfCHy39c=;
	h=To:Subject:From:Date:From;
	b=qbjjzqOxvPzLZZ9Rl3uVPf+j/IwXnL0KrKGxRza4PGcYwWPAwD+Vzvs8Yi5PTagWB
	 RP0+O7xgGAO0/tnSNBW32FDIbwxQX1TOi2TqQJURHKmPFTn6rLoaEjoJ1Vr3+r0AjO
	 eP4q8r2qka62CUz/eag4SJznKjaYQSkbDoSbwfyFqBjhvjTLva6weGxtyk/q1kmsVL
	 dte3TGOTtkvHglVV+XyzxMRDYDmNqPcUDEmodnp/DF0LxMr0rtsAsebvg1NE8nMJfi
	 8fuRyKMXTLKZ1SjIe5R8s8+/lb4ATXqq219qADhXrpQU+Uazbtk5OUl3vxoSmQ6+AL
	 IOW+a02VzFscw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904B7E77160
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173327135358.18818.5171982526604548859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b29175262760d25332a5cf4d86ee01e1ca049c64e520ca9f6c21a69563317d4
Date: Wed, 04 Dec 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733271353
