Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F2B435F191
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780369474; cv=none; b=oqOGgcaRlMpDd3lJ0B4XtMUNt+ii+tHfiTnXpHxh02M6jtE7Bv0oaHGsYIwsYRJXe4V22RKGeB9b3NDLW7qThFTLNtsQCYI3BBBMz6g1npVN5FgJP6kENgS7aML9419JqsA9yKZqGIqDX/pqz9KqyuR2/NLqPTt4HjDiM0sdsw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780369474; c=relaxed/simple;
	bh=nGxYQ5KtDnKKAgoNTti5xRO7jb+Wv3IVQVUuEv/7jBE=;
	h=To:Subject:From:Message-Id:Date; b=C+NVqcq6BogJY1FggkxgHcFDSElJsdlga+LEDjX4ZCTdX+CfQqF+zP3ZkmdW297xYwMQuydszIlg9jkUD2YMZOOBdtBG+UdQ/seDfeIgIU6WW6bYfck7mzFRq0GYkNma06dEVWJPeTyRToC7FpM6QQm97FazSgfJ/wgsJ5DCSbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8eGJuSb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8eGJuSb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D13AAC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780369473;
	bh=nGxYQ5KtDnKKAgoNTti5xRO7jb+Wv3IVQVUuEv/7jBE=;
	h=To:Subject:From:Date:From;
	b=Y8eGJuSbwMKTRsrhXPF4FF94YS6qM1h9zODpGKu/dVLGkqf7w2XdoqtnYzB/zj4m2
	 fffI9tFYf6aomSz8Sw0u8QtSaNSXIZffNxQtr1TdNYyUUl4tA8xH15exP2ViA5ZoPM
	 XLBUnw+3r9gmmYebi8Y+TVLE8x/I1h2b3YYm62LVG7E8ezOkGZlEyJxms26qk+hVZv
	 E1s7xOE8+D4/AEE8gHo7LRAt3UVC6A/XaaUYI/Em4bWO6IdGM1aCAj3vjKW3dGYmdi
	 jpGsbOrv0WIhzozveGyQapbhyYDMf5GW847C1pk+8EeljZYBQ5U65tnzRJJEDYgFuL
	 fVn+Yjgtk2THQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B508DCD6E56
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 03:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036947372.22969.2859600578825284146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9f78d36bde22926e29c48aadb0aec3613a3d93ea1049ebe17f664419c5c6f69
Date: Tue, 02 Jun 2026 03:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780369473
