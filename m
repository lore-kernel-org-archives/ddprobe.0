Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E74FA59B74
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 09:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707643097; cv=none; b=d2uuHG/JBIpIh3wPgBgmLYJ7PzwmP6MH1gPTD4WZR3LDZSvdufIPL6iwnrNHXEaH1GtwXLjY37HZCQyi1C4FetCD9KAdrYqvv2+5sPcxN8adiPC7jOuKBnGlerhMZWtzu1BeAJaTnl5h2zd9FWDMq5dhA2QdumxowtEP8dc5dvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707643097; c=relaxed/simple;
	bh=PZLQURgsYBBMiOQUZKDUrfW6vxyBcVV+gsMN8COmoks=;
	h=To:Subject:From:Message-Id:Date; b=Hstx/8qXvqiRv7gaLPFaBnPvYWMHHZn+knGeqDmFz8GsvPXuG4FumBlT8cqYVb0VlUYA6OiffF80J0TTRsN2eKcO+hQebyWWVCU/1LC2wuQUh8fV5yuTIjVjYl5Z1kjkhs/P0NrFHzrMYwu9Kok2jzdoiZPFgsexVlvjkKyXrdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sODuHumK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sODuHumK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7C8D9C433C7
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 09:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707643096;
	bh=PZLQURgsYBBMiOQUZKDUrfW6vxyBcVV+gsMN8COmoks=;
	h=To:Subject:From:Date:From;
	b=sODuHumKcWmzZaZLQmhwdwZgbMSHncBlYGh5d0txKWh2jyziSMmtDy7ojz0ndyj9t
	 1YAp/2fL2ywdhXHOb1ArNgi4v9bsBTC5qWl0sKZmG8mGpAAwXgBLpaW4SGoc90TNmR
	 cEv8JE2hJTuM+sr0SE3HUIU+yhE5aKRkw8CkQisFSyIugkQhCIAggal46/e/VNgPmF
	 GjjD83SHZcmxq56CPX3LuCnLuVhFhifFQC2YTKWPNu+Xg3A/i0lhVKYD7FVp/uDl1Q
	 Qyt2070ifgQgheszZF6fFAePZcYC9oUCPghdnn3ffI49WKWtacXycWl8bUHc58mxTz
	 hb4qj3vH3YGeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 604E0C4829A
	for <ddprobe@lists.linux.dev>; Sun, 11 Feb 2024 09:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170764309638.13806.886481792404282244.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36106402f47940c02d3facd9e86dead2a852790ba5b9dd95f76cfee99f5ad403
Date: Sun, 11 Feb 2024 09:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707643096
