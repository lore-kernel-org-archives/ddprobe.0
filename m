Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D92327A10D
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745855395; cv=none; b=ufg9y6rIvQ/NrqbO64Ah7b9hQmHE3kSN7pHibszR43XaRWtZs1vDmf8+MWR2irgytuhfjRf7dfx4pjaB6dtWbG8uLauOIzVTMRlXJYqhMQ2BN/b8RFFLtWvPi//hWlZu/rALEbHPSElCznsXgel+CSeXexzyvZCGaa4w28+HQxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745855395; c=relaxed/simple;
	bh=Fc+bykVKwLclYcTWVUCePveCcKxQE2G9eOzqgRgUMac=;
	h=To:Subject:From:Message-Id:Date; b=uiIpY/YxgpZ1y2jChTWxwmzQnBWsLKnu/g+2YoCSIhofMaphLSgGfoqlWIfA61WZciOHJoPFf2iezMI8XTsHXx6synXO848y2SQvtWGFJXiKD6gq6sq8rmqBAe51UkK2N7H5x7zU49Bp65tPbBOaEJFqtEceHiNv9B3Jo+9aKUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B1eIU/ux; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B1eIU/ux"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D865C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745855393;
	bh=Fc+bykVKwLclYcTWVUCePveCcKxQE2G9eOzqgRgUMac=;
	h=To:Subject:From:Date:From;
	b=B1eIU/uxOhnIKgeDivT5U6yF5mCz03wPhIQiWNoZ1LrsiN7NLMkxD0HI0CIOxQrn7
	 nMQxeW8PcRXpvDlRyIMQv8CA6T5Qf+cr7F9ksiEAZUaPV7xpG6F5BVlx7sV0eTenq6
	 OlrVYC2Dpbqmp3Csa6hE8Yw6SMfcvauB2lUfJU6TBb3iQ6tnOIP395ktZ9uPxqWYgm
	 pHvM0GmqeJ0ny2DJutLOMdhxe+BTdNaLp7JZf1xR/DGswGGYSjEwIGxfCSqNdLiJDz
	 F4nt1nzaHbkLbh5H8NhLZ7y/XsBgzETL1Hkz9FZ3anaQN8BPkatJYB0asuGOyi6AQc
	 1ZD8bnCDNiYaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF90C369DC
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174585539357.30429.14008974197716290907.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7496720d695b8d697c186133984fef2384faa382d8fc84d92f596440843edacb
Date: Mon, 28 Apr 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745855393
