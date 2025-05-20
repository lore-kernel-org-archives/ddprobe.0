Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2778220C477
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747781394; cv=none; b=mQQCg0hpW7tBdMKLC5Szb+pQtiihB1MJWcQdzKnElMCW3y9/C9cPX2+VgDPWz963UXUVyd1sxdgdRoa6M2TycO1cPbBaoQXGvEL4cfavgeMxNiWnkRYpZtouHaHpD37oVEoS0BJt/Bj4eKrlke9TYqImBL2ru/HK9eZ9k+3ohlE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747781394; c=relaxed/simple;
	bh=yYmky8VS0hm+qFWJnjVvTIv93ZosIk3XYIKxjlng+/c=;
	h=To:Subject:From:Message-Id:Date; b=ntNCWzMaOI9T/RGYQoe0LLfHAn6qksgTDKYwc1NFvkUhWj/s/Gpe/zddjBkKVPyfIKiHUm3xvBE3V/9GO1m2d/Wrg+elHnATv684sd7f3f3Y7KE9BT94nR9ViDI6v5AhQNPugbCoeeMrex+9JMAQIOPqOb1oJPwSoecZPauk6wA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tz2ids0+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tz2ids0+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DA04C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747781393;
	bh=yYmky8VS0hm+qFWJnjVvTIv93ZosIk3XYIKxjlng+/c=;
	h=To:Subject:From:Date:From;
	b=Tz2ids0+NAxKFpCWJH1QdHvBCFbxLI3ltaane+bfKv81wjkzDmtfVlDYWh/P6Succ
	 GDox4cvkqwmWcnH+rUlBYh3PBV/ahp5Bu+XbnHLdNz/2aj/1lNGvY8lvgeP1eQF4BT
	 iWmSY7ekhkrAfNkV44eRUHVOf0kshZimSzQh/W8ZApzXSy/Cx7dnhBFMClFsrQmqFh
	 6WsHM+ZmjWcraq2VgT3OSi4tGjgAcGLxE3wGZf5OxNb3+FpuoH9Wzn7X9EV5Pg67mv
	 8+f+K9t2IpjBm+YVLSl/PfpcLjDUEx86UiMLCbQI5QIUnq40hM3AdynvXrYf03quaV
	 iKazsZT8K3YTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E65BC54E71
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174778139357.22597.17864634949000725120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8a8fbca4b734852a1299256f43c1ee91c1a818b559fc95dd5500ba737fb6a1
Date: Tue, 20 May 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747781393
