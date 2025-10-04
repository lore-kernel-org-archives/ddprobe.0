Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1EFF280CC9
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759606193; cv=none; b=jq0NzPvtqji+YUBun+l9tfSE0WuqviKsReh+mV0BwCAxdXOd0OYaJc6GbOW6LBVAXDodDnFVWFEBhBwQs6wwbCUfTB4o3qLBL/PoPYmNRciGC1p3SnJVtY7Y+f8xms/BnjZlvbKVCCijA+kBBMwRo33BwIqQb/aCkc9iVeAP57E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759606193; c=relaxed/simple;
	bh=5DIn5n/ah5wCErQ/sJaSxAxc/15JbAJbWAS92HS7DH8=;
	h=To:Subject:From:Message-Id:Date; b=GVi1+HfWKee+xtQN0H06TE3CiZTIbjxtprnIJhmvorSVF3v7j0nuWh6RRzAGaziClAEhSNjPb8KxpDt4RwT8f5sbqU2+lz7167f40J/caJp6SSu9W41mZ3gSNJwVlWHZlzSiAquFoqhXt440nehbNd4mnlks5TGjrYyfFIU+t8k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agkZ8QS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agkZ8QS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1DE1C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759606193;
	bh=5DIn5n/ah5wCErQ/sJaSxAxc/15JbAJbWAS92HS7DH8=;
	h=To:Subject:From:Date:From;
	b=agkZ8QS14/adGtt4hzpaZIx/2S0WlP5nx/PPp5hYvU7TXcu7ke3BjRUHylf9z3GFy
	 sElJE6vHjySeriDdiCwxomWu1XmvQYPdWMHHMpRA2FDXPwBATlbHLuFzrrb9XzsSoj
	 I9mznkOQAG5zFawYDXsp40U5QUwlWr6eZ8dOlrxhueESiao0WxI9xkRJWDEQHxjxzY
	 vX0vXBdwkoFW6vtd/5PONnzufD/yKXMtOvy5yVXRKWvADEcL4gV+Z3m8ek2RpRlOsm
	 QpPeD/UZTtV05l43bQDQmzf2Vx+v8r1B90S+DBY8Btc3b+hUomu+8zkssGU0v28brL
	 TQoFEVyuhON3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F36CAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175960619357.13615.5785750839915231958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c066f54505f4cebb34b239e06f8d45413380c06e799b0e0735852445a801771e
Date: Sat, 04 Oct 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759606193
