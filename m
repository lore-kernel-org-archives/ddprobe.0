Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07BF12FC01B
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773457494; cv=none; b=lMbVa1V9Cny6QqeooJeuhAAm+e4EnXWRTgXTRw9GQFrzvDdiS98+xjSKYotAPnerBug7Lwi+wBkpH1qvYWBBmccVpK9X56dBfuRwJcPmBTPMkN5DKBZrtgFs50kGYk4i4PGXNUh9HevESjXCy0ClQKt5MXqS7BYl2nroKB9qri8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773457494; c=relaxed/simple;
	bh=Y8O+S+RHCYk4mv6yzpFPV9XektfUZSV45tXuTl0NMx0=;
	h=To:Subject:From:Message-Id:Date; b=iefKgPAILtVutyi+aYtZ/hPKtA5H4soHZ6ohvNfxyLSed/g9+FY0kjP/2lt09mwxUDFPAd3VCrOb2COTxndqbA0AoDL/UL+ukPcSemhUlpROKWB6czu1V93A5bkOKDfpJsPvJyYGKr/S0Dt7C1VaSQqYIksP7mM0E67PpO+qm/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndprdVGX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndprdVGX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D59C19421
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773457493;
	bh=Y8O+S+RHCYk4mv6yzpFPV9XektfUZSV45tXuTl0NMx0=;
	h=To:Subject:From:Date:From;
	b=ndprdVGXIcbJcU1z1pBUmEpjGoDcUy/olFjNMkF1wQG3gMWCBoeOnPwqAitxrWfAm
	 sLgtcbHiNgQGZuT9Gg/lwSiYlAwhJTwdm4sKE1LF7I0eylEA9fgdCYs5Hj9TVvJ/tR
	 Spar5Ltdj7QH/JQ7277jykziTFa9LlQEKC4vChoH/LIGju19YMdNwWps/5HWoxp15e
	 aEAnkMhwaubBCWiEYBwPz6fX6jKQ3SfvVFpjet6s8unlwciYFO6cJdLgGZLlbBSAyY
	 l00qhssHrmx0Ap0RB0aBHQJ485Ot2hgjZzsEf7TODu2mq/TVxgvScfm1RwrBGj5vwe
	 aB6XhnbaAgfMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 969C1107BCF1
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 03:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177345749358.9954.12881659492495460169.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1e434460b59a0733c4d69a2553d96a92dca7149ab32b1ae38c69b07fbc89390
Date: Sat, 14 Mar 2026 03:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773457493
