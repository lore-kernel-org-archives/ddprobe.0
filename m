Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F3D210FB
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749414595; cv=none; b=WYuSL2avFjnF0PBqNmWGvFLlmz+kz2pd6xN7Ih8xxDyFV7F2rIArNuJQaoSnVn+oP3X7n28rx8k3KdQE1HjOoCcXhO/t7auuTvCMmFTw2CpHTfXhCodyPIw0Q5t12PWeqM2nBR+4q727LZyr0rtBh6S01RkyfL6MEioPwV+9+DA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749414595; c=relaxed/simple;
	bh=S78HQsVml9my6dJfEV7D5W1llY7jjQvrn+5eS1lU4T0=;
	h=To:Subject:From:Message-Id:Date; b=VSZ+oWS1PytTwYiQN6ym6aiMDPRzQlSz1aJOyYQVgJu4A/5w7ZJ1zWSnVLn7YmwGyzJEc6pdlb6+3d/uXB2/SiJr12xi488Xh4OH4oqz/yA8+V/6FECzYA2C/GhpNElvd2gCUVeyhzexkFdARiOcqVtCuR6xOYx4Tqy0VSdqbgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EdQwi/5m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EdQwi/5m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A622DC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749414593;
	bh=S78HQsVml9my6dJfEV7D5W1llY7jjQvrn+5eS1lU4T0=;
	h=To:Subject:From:Date:From;
	b=EdQwi/5mnBe/Si1Ww/PcY5hK471gCpm/DM26BD1iw+fXtXCUMOwcZnUrukWwZFlTt
	 Tqtz018BDO3VJztvKIxhZXfyVE5N+B864XVRrldWesJy1UA8WFTdFTvIyEDJoZi0If
	 8eGTaFFhnUP1fZ65How6b8lt4kPyhByoaf6tmIT7bFOk8wi+Bmh6dIYg9liWHDaGBo
	 RiGGUZiafY8GPlF71iTDC95ZhfS15w9wIMLGzboKolSS5WSATtfbIBFlGQiFOkS6I2
	 XsHkXfWTtgbIhMvHlI9N9xYtTPtOdoH6F9cFHgkC/i9HtO5aHlWV50705oKZ4HMVJE
	 U65v8zCpxxTRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91006C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174941459357.6777.2618150070979874317.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1d553f0e8466efaef9650ba0d0657b84a83ba00e3942f13e5304d6259f27965d
Date: Sun, 08 Jun 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749414593
