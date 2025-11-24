Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1CF632
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763943113; cv=none; b=NK/p7hcHs21CW92GUEWmtQ1dutSTDkjQ6Rv+YUWzZhfw2esl+Uj9HoXo5YRd5GGp/vlcjnTabFBZfbzzHEju4IPLfBA9YLgXgX/I7FHe8SDVWwKVxfg55eg8hf5qJbjpAitEZl/JiI5oQxOiPykzyoA+t2AvXBKwDy9uM00hc+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763943113; c=relaxed/simple;
	bh=I0dMOv0dvts+4UGfbSqef0nRdSVrX1N2u9C196J9nJs=;
	h=To:Subject:From:Message-Id:Date; b=PxCJA/kMpCtSPIUtxhkYnf2QuB/JroghhXrJfKEA9Yui465eb2hyV4SsJVYErQrL6U+JQhCLUILC95VvrIp/7TTjH8beV1oNHj1cJBePqsi1CUs1F6FDzN4yw0IH8FzJFr1AUw/zYnZy4UXFpcOzsfMW/nEr4RjK8AxB/K2U8x8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YQ+bs2jH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YQ+bs2jH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB975C113D0
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763943113;
	bh=I0dMOv0dvts+4UGfbSqef0nRdSVrX1N2u9C196J9nJs=;
	h=To:Subject:From:Date:From;
	b=YQ+bs2jHfSeGxCdP7E7P81ZZqzcM6Hd3CKv33JIFc2+6NbiApoiDPYrXcjxInJEKm
	 AWUUTw98Pr6d+I9R3oH4vvZHpNyZZZste6F+FoTmbhlZBHpf4Dlq+Vjf4tVUsiuEjc
	 Ks2PLOWblqedb9DCG0CwbmaFG2S7CPpZ395/n5GxOV0M1J1Eb99pjnnES2lMhUmsun
	 CMHAKyg2kaXx3xkGTbbq+ZnCvfGJsCc2D5GCwI+DwmAtFCHxQpmgJXrxS0/FssJZrx
	 0vL9gnZdDWXuK0bwSc2zHvxTOlf97bPsy42glFdWM9tX4uhYqBQqYx1ZywZj8GG3xs
	 hfJUBXOF+ItOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800CCFD2F6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 00:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176394311358.5568.9983875024096814145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b0fcb68958b4631f4958dd87f613d7b8edfa5a5213d2177b7cf41228f46e603
Date: Mon, 24 Nov 2025 00:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763943113
