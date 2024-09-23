Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E29944E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727090154; cv=none; b=QRNaDtGEfgf87ftOM3U1KbGibqBbcFggsX+nCsbenqs7Ndg06tdga+YpnXQtt+8+QuV6G+HdZUeroHTqO6DyI/wjB4bQiFoY4IcHhi0a241AqTwepImrQLb24o2CSDSBmyvsXkkwZbRyQe0aHDNZE7YV+q7gGu8qPPsg12BHW8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727090154; c=relaxed/simple;
	bh=8OKBWPOL0320LFUdHomMTfzOHsfqOJgCYJB8UHdQQAI=;
	h=To:Subject:From:Message-Id:Date; b=Dd3/p4XLoa6h4LOixsjcym27yJt0PBGBeHE0+O6+pbEjVsNXg8kmTHbdkeYxtpxJ6uqEhcITZ2fxZJL2kjIxESRDTJJDngakKl4HySy/YTaRX31liVKLx15dxbfi+zdKSit5gtb7zl85E+afR7dgeTgiXSeEFxjWIqwwrh8QAZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EI49wo03; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EI49wo03"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAC43C4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727090153;
	bh=8OKBWPOL0320LFUdHomMTfzOHsfqOJgCYJB8UHdQQAI=;
	h=To:Subject:From:Date:From;
	b=EI49wo036U722kKKAkqMuyWI/ZXRjDAncSu0kUN4kx5JLy5G+G6YIc51ba4SJv0nj
	 BwPMS5fL52OG9HF8+jKpKd/CKgD/ovdV7ZOs9jnMJZW45lYDf+fjYeCpWJjHcNVNyl
	 NBN+mDcfzs3bZEEO4FxhuzpZuwbaz7YsnHiiNH+9g8siEkaBZOT7h2grGn/vlulX1n
	 XLXnUmGwqc6rhTzvsTDBcrBhC5yT0WTcUTzixe51QpmltIiHIWb60/WIecPF76aera
	 1YOp1pJ63g1hggXoqoGChzYccHIC5/rKF8PABgwz03+ZVCp4NcG/PIr3Z4HTwtv0pO
	 //gmm9zXopm9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9593ECF9C6E
	for <ddprobe@lists.linux.dev>; Mon, 23 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172709015359.3091.17288568603075275105.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 150d96a24de2e99384a372a4dd2d561a41c575989087d556b7925e015186308e
Date: Mon, 23 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727090153
