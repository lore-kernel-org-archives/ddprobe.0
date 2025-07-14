Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BC071D6195
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752473994; cv=none; b=lu4fuoA/lmYy9bby1kJfHMqAr8U8I2WA87O1UAeYHVVEtzh2ZnUYMby+H2O6r+xzmGwMn3v42T7oY4cNdgfXYxLyI6BVpM+xaxt/270psx0qFrk1vVPmect1Nb0sQeLkIwwq/b348FqbFboYOV8MFGLFGlYJzFq2FLVmkA8um6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752473994; c=relaxed/simple;
	bh=yLbMf7qGQ4z/Kb0lttDgryLLNL85sdQF5JYeksJgNzU=;
	h=To:Subject:From:Message-Id:Date; b=OgUpaxZ4UaGIQ/wm6yDXF3jxzHDlwn5wwAV7BUWBopywucmMef8nXq69x+MHUAiFPZ27/uhtAP1uDpso6Ym1SAzrUBVq9GDru8YlmKjSWvrv5F+ax48tb9n9kqYEVeBJXG9RK4PGXBLIwq6XTw2A24SsNHfv9VjzReBbz3eEBRY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X+erCRJa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X+erCRJa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9693C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752473993;
	bh=yLbMf7qGQ4z/Kb0lttDgryLLNL85sdQF5JYeksJgNzU=;
	h=To:Subject:From:Date:From;
	b=X+erCRJa54vah0cNhmXU99pNJCV7MfRIDDbnALc733D7CJvo+4MkejTHWJoZwaPr7
	 llh1yLwCRrJW8NhWCayFEWUrv4egUoIgGG0w5nlKcO1d6k5aRNCvo+kBXYUXLuiH9h
	 9iTLxhnghEyIPZF6JmHmA82NhApoZJTSgG7Jceoof77B5Lq/H1cmxQUpijxr4K3lhp
	 +dt5UtW0V6A0i9viQAaWj17v5YPvZX+KtcZPdSuujxMIt2MZXK1GwfeoSxp21lgde2
	 6rdYnRNfRXw7bRYseFOQSh8g/lQ5ctCE0+FIJUZmISMayzepXUZsE79qVVBGfrgYlW
	 Us26GCIB4Dj+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98F8AC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247399361.12516.8580112518255002554.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f35bce97d97412ebc2bff2fd83e6936d3bb479fcaacbdda3a5d2bb2e3de5301e
Date: Mon, 14 Jul 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752473993
