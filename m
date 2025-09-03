Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2657F189BB6
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756876794; cv=none; b=a0rXarob3reEHKHQW+2+RAY5x1qvJJmJF62d7Z+/OmQJySf07YRtqCzNxvlFWDsXkyCuaiJtsSKSJChHsysMKzs0TYvoXFqldNq/MXAP58NPtugZlplG0xvftYXuEVMVoD/ZOxYG5z4ghrruwfGetHUMaQB2ne94gA8J7uNztiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756876794; c=relaxed/simple;
	bh=HM+1fjE+ECA/2gMfRuAGC5xyD7pqmXiYvXIlxftl61c=;
	h=To:Subject:From:Message-Id:Date; b=enSyzzyrMHWpVyRgG8YdhlKXbrn58/owr+Zo9sP/h4mSwGDAqFJJOIv8WljuO/Tv7n+74MPV+EeoRbcbhf4i7mgik04VR4DFjCfLC5f1wrxXTzniV5ToLq9Rc4dClXrwa852/rcScvUut4ZiLAJL8DF15QLGkJIY3ehRz38X4g4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxbnWuFl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxbnWuFl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A553DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756876793;
	bh=HM+1fjE+ECA/2gMfRuAGC5xyD7pqmXiYvXIlxftl61c=;
	h=To:Subject:From:Date:From;
	b=bxbnWuFloBskFLtyFm7ICIHmda8YxHcF2tt/YVsShjf7vxl/MScoZnTyFGd1AXrAg
	 E/GACSkYGRQScivAgV7gFBKBc/5PwzAGmz8HA2m79YghAIZzJb/UWCxpdhoEx04fbZ
	 CsVBvou6onf9G/I71yRFxqfVJtLMpWUk7QYHWTcy3t0RMeuXifzcOOC91kFlQhZEej
	 9XzLAq4qkXp6oD++Sgr5JIUqU93/UXLzLzWXfaa2mhbP4c4g4CGzleHwJ8FRVohZU+
	 I1lysBWAewIdJwxH//MC4v5bDJQCjJMi0l6vTdwlsYLOLJoMfbRkwNOEyV4TKm0wva
	 bmqWCwN/1lt0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FE3CCA1007
	for <ddprobe@lists.linux.dev>; Wed,  3 Sep 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175687679357.10564.16593964931423390942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 637fc27fa0891a26e3e19e1d788666efdf605bf3fec06c283d4b40ea780e663e
Date: Wed, 03 Sep 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756876793
