Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305C134BA4D
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759061394; cv=none; b=I2+oM+nOPa5fKR0ByAQAkHAKysLWKb+Fdb8gniAFOCzHvSpyjJa53bM3M5o42ONjtm4BEstlw2Ay2dgvnb1OWG/Dr7OhP8udR//jxnKDlLA5HI4bUfsQGkq+GFPjUpAx5SuJDmxSiEok5lq9MzsJvbBWZWdX9QUwf4Eu9dh6w+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759061394; c=relaxed/simple;
	bh=/V4rNnevjg046fegEYZixnAK4x2goZQjyxhdxyYx7fI=;
	h=To:Subject:From:Message-Id:Date; b=cakaXPvVe+FT0DEdTvmr1Xd6bQSybCS39XVWs054NaXA+3qzxJmJEbnvTO6MMvMOsPG3CvsYxDz4LVLOZ5ZGSAv2XcNSPv7tH8u+spu0BrGOdtfVGJP1kfRhfub2tFfXFYNQPvM1nsleZAOZKEIwOw2NOkQno4OiTn1TDP2W2L8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NFZMKVzV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NFZMKVzV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2C88C4CEF0
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759061393;
	bh=/V4rNnevjg046fegEYZixnAK4x2goZQjyxhdxyYx7fI=;
	h=To:Subject:From:Date:From;
	b=NFZMKVzVbQ6xGowwQVBSwSR/sT+BY5bMUazOByFBGNcwK8SManTawhsXF2bMrvpHN
	 r9dbhzyOApmGONPlM5kceCcKeXbnWwGow+u0jSuAW5ZBxnZh9NlB7Ak06s2e2UtYaV
	 SNuv/5X5ruIvbE/khUMP3UyxngwBR1H19uLjS6Lpcq0uGub2seYLBSL7gDVf8z5vNS
	 +UJS9o1ZxSkYUFr7dl7r7Y3k0g6PY0RPUsBndFxy+RXnjCN88ey5rLPrJDtBO+WjZe
	 p8yO2Az+dAGzVEbZjQlHROxNwWNEnGwTYxe8JiIz/0r8N1p6BfcEWZte9xpHXCPM5Z
	 f9AO9brnjq+Cw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0ACAC5B5
	for <ddprobe@lists.linux.dev>; Sun, 28 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175906139358.25526.12256199979351503225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2059a01cc859da17abdc5bfec0dbc2b829cb769cdf225a5d1b9e35cff4feeb96
Date: Sun, 28 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759061393
