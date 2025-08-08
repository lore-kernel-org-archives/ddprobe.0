Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06BD11F1921
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754633994; cv=none; b=tx0Jqdig7B5OMjxuv2fAN2NefLSTaKKKzgncs2N3dKireCzwez4fzeXBYrLLmYXWiw74uC+Rzzy5quEA0F0GSDNknhv5WTBUGGpYPlM9Br9E2N1lFpJZ2eNM5Fd2F5OpNVazhd4T1lnAUHjTgowscTNqnrcvWs74zLaNqioCWKU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754633994; c=relaxed/simple;
	bh=+G2MQKTrTEYG9L7MfwJwquvwd94TUFL+B4sr1SMkKKc=;
	h=To:Subject:From:Message-Id:Date; b=pNQ0EPRs7Xj16ONPZDW0aBxkbtN4J4gR6noRCxMInMYS8tscyNNb/HiLepMDkxvXSU43wqdiYF9x7UesZgwmvgcjYV3elR+ronC864eLx9L7hYQ1Zc1s21jrjLvG4mN0x3zydexb/OJWtQpyAIvLQR/U+ElPIPLru00xBVgZgOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L0Kql9db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L0Kql9db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C876C4CEED
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754633993;
	bh=+G2MQKTrTEYG9L7MfwJwquvwd94TUFL+B4sr1SMkKKc=;
	h=To:Subject:From:Date:From;
	b=L0Kql9dbhrWOoh9Q6MdgtyWgRnvE/uwSUkcyEHdc9ZiXg0d0JPOvR7Vg6WvW4Arm+
	 5gCnMVDGQgQMY39vQMW/XbYhHClrCrVbxFxo7wYHbSwbV7/zKpC18N/ioiDrmDKeev
	 dpqYJm0XD0hjx3fnYlv/8xgoV5JGOgpd/ee5jmcR7kH5xd3z5qW/3ePIrh+7oNqp38
	 wFltJJQkz7K0tghZf8NPzNEA0asa5quDggZGg62aurwLEFfmRyGGCLZv9o6IU7TEHa
	 2NTsQhbOkdgDZuWGBvaoOsdlxOGlduBIcJVYE7w3JpODDkcvibCNW4KVDMzRjB23p2
	 +Pq+a71wZ0Xiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E030C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  8 Aug 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175463399357.15486.8749948878400994662.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fafa61f9e962f31c52e29d531e0c503ae62ca4e324cf5fc69c90d4766cd62813
Date: Fri, 08 Aug 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754633993
