Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28B4223D2
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727708154; cv=none; b=s4dx+M4MnDL29C5sbhY2o5xXBdBzSDshF6A9S8+bjXOzljfmsDmKWwj6cASg19NPa0lAejCIWqpBV6vBPSwY8yflqyQiBHAu4zWuqFOc86ezZpL9Fs/mqpi3QNuhdBGKVytJIMwsFagQYUg3K41He8avZdKmQZp9dWeI17wo2zk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727708154; c=relaxed/simple;
	bh=3/KuCga1RnBk2HyBEsoTlr4NI2X9g3ztcam/o940AQE=;
	h=To:Subject:From:Message-Id:Date; b=E9ULu4ljCxqFjC+28emGrd8k7ctsj+52i6xGyl9Hkkt8qHzUUq5e2AxmSVKNG+KpGys5jXL9kWWI2rMRxSKJhjLGYj820VOYC3rfhzGHCT4ZjiAsG1R8vL83W3CXQSU+iMxSbDgiALWYgIIfQD9jJTT+WpTzCUSsaDPDxFCe4cY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KDGNMrOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KDGNMrOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC744C4CECF
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727708153;
	bh=3/KuCga1RnBk2HyBEsoTlr4NI2X9g3ztcam/o940AQE=;
	h=To:Subject:From:Date:From;
	b=KDGNMrOS/gZbAwT4h1+qHG2qHPaY8px9/3WxFddcz+vyBGe9qQF5JwpjXWB7HhdMk
	 LmVZYHf4lZW/LpqEy/YIzxS5dmRWxSQ3DWBBcWuH3vFbAnmnWnqdEJ23GpXRIuzX28
	 zmq2aZF8M0M/+ZL5spC4ouQPPpQJGoLeRXTwD2gM7LG4VGtjhJv9nNvREHjVgo3RXC
	 +wO+PxBH5OfQH4JV6Iq4z1egYdunvR1nysN+DfuZj1eO3948ZjbVvl9FupZ5NmStMj
	 UCj+8Vn7uBa8x4TXet8DAK9FGo0HBUgMoXX5UEvl3qaiBsgDdbQVuP/MaLMuDGcatL
	 nadR6eH0hSuaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B888CE8356
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172770815362.24829.4267497340288242746.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d81c846aec941f4e337113e77a337285147ce06132a6992e550db0f57151ca4c
Date: Mon, 30 Sep 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727708153
