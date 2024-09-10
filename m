Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D6831AAE39
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726010754; cv=none; b=XJiEc4KSSX8fAdj0NG16Dlv1c0ofK+WZ5+jTBnWJ4LzCrQ/aZmoCTg0Om1untCWHPI4fZcS2WhJ/SNBh4XQbH+kIre1w3IfoKK2/oMFjJXJS/dZCPN2UHEpieBXghAe4S2NvQsEj8b0/MXZM4EbFbB/3LqfqZkXCxxPgeldM9GA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726010754; c=relaxed/simple;
	bh=jFJgxnQHCPMZk8PdduY5qTZhcag96C3EYmg+jjiiDXM=;
	h=To:Subject:From:Message-Id:Date; b=DANV6DjGDLYj6JJO6xjkhKwOTmd6DLq2NoSSNAnhlBnfSRZ9ouIrdPYDedYLEyI9ZTk5mYtzpXD3sOll34AXOfezWqPrM7mxfA3QukrABmghambDxEmG//q+cqfaek4b3hs2TCcZQEks1fTcXWZGvytZXFDElRDrAKFL2g1L2jA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1amHBX3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1amHBX3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A331DC4CECC
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726010753;
	bh=jFJgxnQHCPMZk8PdduY5qTZhcag96C3EYmg+jjiiDXM=;
	h=To:Subject:From:Date:From;
	b=I1amHBX3Pnoa9Jp11S8pDnFAd6kjGK5Dgi3acpaaPsKsi21JJYhq0CPcqtZwTbbll
	 t80sUklOlKDGYABtQsOY5vi9Tb3Soee6Ts3GYqdYTa+0uyfd9REqxLPIEWscHfBKTm
	 WpxcbQqz1LvI/gZ6bwvlyM1c1/VikaEO45Yz+esOagZQOftiRo5lJWFOJHxgILAf0M
	 CvCLBjMtkUh+QD/1LCbRsiM6PjjektmC73Eb6ASIdPtb4OC8FKMyZ1GcEu51DOk1T4
	 abUQBgfm+zmO7sso4qX1ikdyPorra8e/HLQvGFjBmBoW0TVFZYGI6qwTbYVkdZqi4T
	 LM+5L3CBnNV3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90672EE01F2
	for <ddprobe@lists.linux.dev>; Tue, 10 Sep 2024 23:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172601075358.2159.16158754637772546538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a5dada769c9d550fbc024e437cf6f30976163e38d88a84a3736fe632aa0bd64
Date: Tue, 10 Sep 2024 23:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726010753
