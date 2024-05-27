Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F4326AFA
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716807263; cv=none; b=Fd5zCQ232qdeLRlfp2mQzFBGpyWebhjN5oMAyMHdPfBUViL5PiHNj+RAaiMKbRAiv6iguyke7d9k25xPFkFV7aqi6WhZmzycAOvbtpUZmlem14HYKUzFVXFGjU8vDVcRK0cX9Irr0AOCqMCJn5z4JJ0bVU6PG7aYd8cLooDsuYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716807263; c=relaxed/simple;
	bh=3GjdpaRRAqK5OH4tR4VvtEwrNqAMwf0Wkb3g/hr/eCA=;
	h=To:Subject:From:Message-Id:Date; b=jLbkD2aaAeT9VufkRI3L4pCBoVfmKZ4JnUulgalcL5oyQ+9w4o3yD1C0aygPXXOtUkOzBcyS4TmW1cDxpOsIoJZ3/WgigPT9u5e3CQhVRQ4MN3Wdp86Sujr6DyAyYLzwUZ3MLItMS6Sgwe8SfVZKHS/C2y7PzUerZ0o6HInZbZ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kUZSU0OX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kUZSU0OX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6DAAC32781
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716807262;
	bh=3GjdpaRRAqK5OH4tR4VvtEwrNqAMwf0Wkb3g/hr/eCA=;
	h=To:Subject:From:Date:From;
	b=kUZSU0OXgigJvxOd0+BW5xOXSQdLJCtpQlTDN7+xzRqn+e+EHGIwUGvVKVrK83RLv
	 K6NIkeoRP2h7M6Bt0zm0LRgiAeOjI3BD7WGPak6lP9CsIy/qycirUQE3QgYr52FAHv
	 /1LiOo19NbVPYuPXynb8RAMDUdlDmKPU/936UiDU0gk7ANFYjw9261yGBhu+dMZw/L
	 hRM+d9GNpyF9YL5ct3GOir27u0GKxskmYtVIyg8dxWOZHJlxp5euDdj6hf6wP84VPq
	 8ufNCePe/q9LVk/bU6+D4TL+FYPTBrvrSa0HFY9jBh7xij0E/eIZKunBLVHBQ59zUQ
	 oR7nZ27X1dcyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE33CC25B74
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 10:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171680726276.24385.3626731179044704687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f74eb9a03f67abd5191bf0c0895ffebf5ed739cd72b00a3c87109190a1c3f795
Date: Mon, 27 May 2024 10:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716807262
