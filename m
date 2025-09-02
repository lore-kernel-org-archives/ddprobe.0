Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1392D3ECF
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756817994; cv=none; b=mt7cnH4CUBZmmAAEqC6ncmWfOfsuqEWY6Wo1p/05pwCzV+6JO0BBBfTBZYiyyLn3uKSIRQKFMkAQ57T8gLqh/fu2sAVC/lfFV8OWqB8xjTB23aUutSLXE+b9fmx994IpLfLPBvPyLVgucWeZAQPxJftvs5jD5qhI+jwNEb5wRCk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756817994; c=relaxed/simple;
	bh=uYYH4vL/HTji5NaSPyBed87KYzgS37wcsWDHrepbkf4=;
	h=To:Subject:From:Message-Id:Date; b=HGLLlO/PFAuU5VZlmYDDD8gtdELjigY6f6yJmwRmN8aNslHl6tcK4d2ykWLIWX7mljWI+Fz1CVQ+jNLV2Bs4PC+4ZxMCm6Kxo2KFfLJv431HKU7fCA66ixVhTwGVYrPb2SuVsomIq/nWy8ILe/uArdst0vdZMQDNfnP2dBvv7u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EaE1nNFI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EaE1nNFI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42EDC4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756817993;
	bh=uYYH4vL/HTji5NaSPyBed87KYzgS37wcsWDHrepbkf4=;
	h=To:Subject:From:Date:From;
	b=EaE1nNFItw9Oc90nWBuInV5JBt3awXKOVU6psdymD5fSYuwEQAV1xjrw72PbzGNzu
	 c18HyxkTgNapy3qhFoB4HvDLRmOzeLN/QyzmzHncywVo8Hb68ElysMPxOuNwaMkjBt
	 jH4ZmGONRDjltedupkhA/1hF1O9iuV4QbPRzspH9O01V9ElpNVvRq58GF3LxkFKtww
	 IE2ZFMXkQQjHNnCBfZCVvVGdXWdh3LYmyOrV+jg8cy8wRKV/HopUjbwBf+BQja6AFV
	 Acp27l0a+jsGCZ5sNSU2yCyKgthjk+1AWQUhZdgURlvDUHxTt3mCckmSxZ22Xhshp8
	 71X5xftQmy+eQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB33CA0FFE
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681799358.12733.11870072394521385951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5693e8a4b01deee3153bc424e0c8ccdce3ece9be5e5182f98b42a293e41203e
Date: Tue, 02 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756817993
