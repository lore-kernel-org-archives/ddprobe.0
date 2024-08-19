Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFA213B592
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724061354; cv=none; b=Phjv+IU7jQ8+WuU9MI50R0zHUhtAeXn3JhHGx0GfdRHxGu5TaThLE+9gy3TsnyTsumkMKduAPxXX3XgwTp04NDoa09fsQg0ZZGndFJNmnUzZmlwuQw9xHyyXVuFps2Pd2aHkR4I34cHeLbchQxeI8H08GB/wXbB/7fxdGzsm+DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724061354; c=relaxed/simple;
	bh=e6czpxVymui72riRX5f4uWa2ypsiBqe/XMDP63zmXH0=;
	h=To:Subject:From:Message-Id:Date; b=GnRs8u0jEK75O/FJpl8Ywo+bW/6eVeZhG1AX8UXwyn0VLHPoRaAWLeKJ9Sx4CxchY5tUGQjWi8ioeyJOVaJ0eqkNCilux9zhoNsnKfeKmATS56DtsPwrCMhwm7hFu6OB4qCe0jaQt/xVbaqvsYgu3KicAAwF9Ma8rbe6nZbYBnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YsvieyZO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YsvieyZO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB66C32782
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724061353;
	bh=e6czpxVymui72riRX5f4uWa2ypsiBqe/XMDP63zmXH0=;
	h=To:Subject:From:Date:From;
	b=YsvieyZO3GbDdLJOvoIz6UqpWFGy3q3QuaW3I7LdZvZDntxfJDlPs6QlHHCA3u+9x
	 z2l3hyjm55b++W7KNnqggwpgvHqgKt9WDsHg7dsaeSjd5tzzsDhHV+5tIR+qT48mhb
	 qGToFdV2ZICgHf34Wv2QROGQBXzgrpRJzNYm/QB1391S8fh4PU7NSIxviKyi0gCXke
	 wPsjPIe9T3j+ezpMmK0Ok9QEgZN9AZptNQH5oJdExS3gItuUfUdHQkFPG3Y4nbfSQI
	 0er10bZUejqCd688mCPn7pSubLfkURARvHQLi1sAjIvQ1tHSnuBlKi7yozZ2hyQtb9
	 c+smi/cGJC8cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B016C5320E
	for <ddprobe@lists.linux.dev>; Mon, 19 Aug 2024 09:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172406135362.31301.7789600606374799225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f158c3cf7cfbc123d5ea3f488eb4c0cb4b86af2a8996aaaf6a89f103b546f592
Date: Mon, 19 Aug 2024 09:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724061353
