Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4646223B0
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742738394; cv=none; b=eMbCAEJm+lJKVpy/oqZFehGcyZhJXbNp4CFA6YsYLvHnq3m6Ot/bFShc6TNVLCg8qKCqHTV4WVjFtLigbWD1LYhjNd+nPrUfkghwOZoudgc6BBO9P+frdVnnqgWD8BynM1q5FPiWdb3T6o9nnacY6PjWV/QigNX+JPgL6zpAsSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742738394; c=relaxed/simple;
	bh=krkspFyhNtJ/rZyOxGWFFCmvWUeWP8QPrP5dQim0V4g=;
	h=To:Subject:From:Message-Id:Date; b=iNeOHfbZb/yIsacSVKxsj3XdL/PslAlWzp55KXqFetonRzYbGBZ7yKa+quPu+VK4b6pr30diniBj4Rh0b/0TxGAazrkkZ1483yvXXL5zKBl+Se6baTEYZovaunsbFIe6ohb3Dn3/P1RyEqVglh/a3DexJGq/TG0cO3b8Y0VD6qA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j7rRP0TF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j7rRP0TF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B669DC4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742738393;
	bh=krkspFyhNtJ/rZyOxGWFFCmvWUeWP8QPrP5dQim0V4g=;
	h=To:Subject:From:Date:From;
	b=j7rRP0TFQvMCq9eqIogtUR12GfyV+Ca6MLL//Qyb9YF+8Q4xgtKj6uoLWSr7ei5WT
	 1rxf8t8UJ5bryrpHVlSS4kO7y+6Ys/EX8OJfHe+15aHMWiE1EB7umY29/K7onfTU2e
	 KUi3WxZ2svLA3pZ5aiyVGcBEgiHP6plkHU4Ie7aiQnPZH4JcabALotoC3LRiTHM2hD
	 uklqyfJon8oCHPQgIz5h05s4PCOPaERKkwz3oaHY7MQOsu66SJ8PO2Spx2CeoFby5v
	 ALJc0wJi6diUiLjH3xL8CYILTuKm8x1SpaPcLrNC+O72ACbUu31yD47tXYCQg2kp8c
	 V3L8iLLZ6DT1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B102C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174273839358.12720.2812722143992874003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24ec732dd3ebfd9c04cd4d62f2fb04dd9d5dc6f1aff16d22e4477e4551ef7b87
Date: Sun, 23 Mar 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742738393
