Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F6F3A641A
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768944834; cv=none; b=K4Y81fPO2JlTfOpJmzc4HmuBucP8uPoNBbnE26aMVhdTmTxfOzfB6pUwpn0o3J7xe2mvB+qAz1voF/84gB0EHHlfwdxPEayFoe2IQZLCrPWMXv102hvVyRxi5l9ad0wyRcPSYLP4iENl7WtPERxVFmYXVny/Ylv3zfczhSG6ezM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768944834; c=relaxed/simple;
	bh=87BF3yY9667of/eLQSbiwZoBJC01jEDT+7m7gpUWszs=;
	h=To:Subject:From:Message-Id:Date; b=ZEp75yuLd8m/9dAWLMwrnXjK0i0O+I4jPe38XSTmNKHHWWAzNyq46Cdx3Afb8l5pVyH9Dmk8+7ZFtlY3hTwRjtd2Ax9PRzVtHls6QCwxwTEfmJKCQkdtGu6IWtMi5NYgFEirUA5X/rc1+xv7sul1GcegvIpFoCrwK+4XWbgoL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNT+UPBS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNT+UPBS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A029BC16AAE
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768944833;
	bh=87BF3yY9667of/eLQSbiwZoBJC01jEDT+7m7gpUWszs=;
	h=To:Subject:From:Date:From;
	b=WNT+UPBSdFjaau/BGzX6R3AJfkxw/6bSf8JEGUU0To0UFKPUq5ReYW1V3hNX+yVlY
	 RdvMoz+qYAes2FWaC6WPS9SR3Hq9xNNuI1ItFIYx/6LV+lO1yN/lhFh043g3sOKdkk
	 SBdL4EKYyVjWpPLTD/NowtqEW5OBMbPWibZX+W4mABcQYz3yuSzYzGSwqCzWa5B5tU
	 jGXBuKz5IPvYIIr/wa2TOhttJYF8kBlmJWpL5WPGxxQWy0VWwyJAfsWNpd+QURA4RP
	 vwzm3YowkD25k6nXPhYIse6h9/36qAqQZZiznNFkrp3yK6eaRJ2+IbVjpqX6+pjb8e
	 tlOnUwnHtPxCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DDD262A2
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 21:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176894483358.25144.10400919802882885693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cf43b772f249fca66dfa96055eb6dd7b1ce7d8f2089987e712baa3c011fb5b
Date: Tue, 20 Jan 2026 21:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768944833
