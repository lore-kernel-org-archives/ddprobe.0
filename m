Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8DC1EEE6
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732367154; cv=none; b=pIGcVuGzWgTDPyMk2E83D5oR1eCn1KSpH9/nNOgiOYC/c8W61CH9fw6oy/1M1veB+tx0emEIBLruF6NmJuEgxh1lMO9WiPWzLAx9tokzy3uZ5KI2t5hR7nGW+F93ZyPJ26nklO0D5x/rl8qX4JrDpHB2Pg71z6yNqyrDFFFgyy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732367154; c=relaxed/simple;
	bh=0gSVSGQjRap2GwIWL9hPMbWVZJdTftiJkzJcrERCJro=;
	h=To:Subject:From:Message-Id:Date; b=UK4l9UU2BcCC4WrQzijz2Uf8UsIjQV7JGYj/tucNxOVkkXYYbs557RdsdkSSnBT/hxOG4kyqoJfgaooCGUlZLvsKaGkx7N94Lx5MTK0GrWIJvvcFu3P7KKE2Pim7HWf9fuy5jOlbNI27L/ERGVWFEwilcjc5OaajAgCr9mp90cs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFfIeS+F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFfIeS+F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B45A8C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732367153;
	bh=0gSVSGQjRap2GwIWL9hPMbWVZJdTftiJkzJcrERCJro=;
	h=To:Subject:From:Date:From;
	b=ZFfIeS+FSwIoPHjxBIYGZK3DdmmBXU6HBTFTooZ9FmCDr7z13uKeyW0+6ma3FmiVX
	 vkehCtongvS2wIY9u7Rz9z35ACwHgHFRrcs75hNn7u41eSo859SQmXkqIjnMDXpC0y
	 q12iawjfGwTHAh2/8hja/1viXieQTdhtFwIsI2F9L1Ju2/XJ5sjVlnyxtMzGfNQAMV
	 MooTA3GdtjlPbaIuKQP6ZrgFqPGv7FSYQwGMozEvUeg9Zjd0rxY8qS+aFbP0hm3j3T
	 gvLUtNqRTwGWUzKmerNtBfrtWrfBSrxirYP0x2oTNqhgaaR20frYjEU+z93pkh6lN6
	 ZramKreI9GscA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E2EAE6ADFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Nov 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173236715363.18037.12202370407097719449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53041745a6ad0837a3de38aec525c23ea633e867f5fa537b6133f7627b4d0f76
Date: Sat, 23 Nov 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732367153
