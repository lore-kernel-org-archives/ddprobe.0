Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77517EEC3
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792283434; cv=none; b=Xdjhh+mU6vOkrgjZ1HMhJIVKda1GMqxraZEmLPnFw2L/AEVP+2JW8W1FED6ZrGvSWKBsrd7ohI9jTz5O2cJvN+fRpxxdlm7/aXMH62HsPIngyqJqEDj9EOifoeS488GIY/Hb51gklLKR96OYZjT+Ti5Qc++B1jviJGbch3+sGGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792283434; c=relaxed/simple;
	bh=3GBvHpCDZq8GEDF75hB5EHetU6VGnzvdBs+OD5WvQmI=;
	h=To:Subject:From:Message-Id:Date; b=oV3ebQNvDz0HlbxXPnRH1INutMW0QcBEJLRbWnGY+lFzK9rSdSMr9RQoxgbLCgs/Y1f/PEKnJ75IZfo4A8JRuGRG4yKWOfeKA+/Qz37V3HjpzV5m3q9g+ithi6eLl//fknK51Jjjf6dXH04tC+1yBV+LG/M171/QZtXPe0h9YH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+MZGM+2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+MZGM+2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0297C2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792283433;
	bh=3GBvHpCDZq8GEDF75hB5EHetU6VGnzvdBs+OD5WvQmI=;
	h=To:Subject:From:Date:From;
	b=o+MZGM+24tLdL4Azpjx5IFkLQ+rYJXKj2UiyVQnPi8CemIcfr9Jk4ZBRCtg91BidV
	 +VKUxD/44sKqC0xKkySpUtOIrh2LrQcEhLyK/qdszLtPoPwrK6Y4QiljxJ1HiEAmxc
	 SoTvROWqtsZKiyIX8cXnkvdIbbndxTPc44zL+bztVJRfcv+0TLSYTuKCriyN+CHffQ
	 xbbQqs09jmzTkeC9TLB/HSmrLK26/f0PX5EEU8tPwn0eTNvLvpuL1ReQi14V3K+Hxo
	 SzTba26VUm9V9o3nOBskHPWnrrs65ZDZzuhA/4RBU8frDprRwK/DhtpbzGjuuaW02H
	 sg26xDW+C3DMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8A9ACCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179228343370.8836.14653288541015588780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 05016cfa84bef6f4a384a7da8d77b866dfd6e66b5abcf2b157ce9717f4f92880
Date: Sun, 18 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792283433
