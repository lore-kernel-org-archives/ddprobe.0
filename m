Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1ABBD2F5462
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755013194; cv=none; b=M90K66u97qUu3Lp1L8kCLtE14KmL4otvxxTIhv9BEYVYgRSF22sD0BMxTLnetMatavJw0tLUoBJ4sIsfuj+Ogi5PXESSRA+lobglzkORJVDB1WRxOASY+W6mi9dUnowonjV9jmkupIn9F/52y9nNHTIbi8+HVmn/xtHtMicnUgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755013194; c=relaxed/simple;
	bh=pUrDdSyR9WkbWGipoJP7deHc5WEKZDtf2ahDHUhA46Y=;
	h=To:Subject:From:Message-Id:Date; b=pFSztOQiofeTE58Mak/rdRuPy7QFM+C/sSb+9n8QoN3XtDekEv7n9i6w8er1HHOXykMD6zEUiFOlytnAoSUgD71fLTSq+Tll3eMBRa5kjt6xoUpBwalSikq5e9FXauxLOyXl+8lYeqN/Y71ygzZ/d52afxy2UhdLzAjLHZz87X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IExQ4dcA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IExQ4dcA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED6CC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755013193;
	bh=pUrDdSyR9WkbWGipoJP7deHc5WEKZDtf2ahDHUhA46Y=;
	h=To:Subject:From:Date:From;
	b=IExQ4dcAKErici64ZIHMiGGs/5hanHGI4uIhbM582jDPDkdZsr5EaX/CbghGZ+pMv
	 cxpfI4bNxwXnSLG1tKATpAcQIOGqdeJWpI9reFbG0rdz5O3qXpV0qoWDnbzrWHyv0H
	 7qzjBAvh91oal6MAzjSTw1YpHo6U4eBmhloXqpA0AxhROqSji9+YK+6edJzUw8Hqw3
	 ey7rlrocfpuva6qqE2bJtTAMQIDSrTvR6X0Aiob7V+gSLm3lqASZfzDUdgmjVP/DcT
	 Xi0oTwwlJKUkP4SrSGMul5YV5Cdb1WQIX5wB7hT+7tDTZxyUli8ZDX3n/qUeF8XPEi
	 P18f1uHsKXEmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90037C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175501319358.20200.1937266814699469574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6b1469835f24bc86ffac71fdcc675fb90e5e64cd2e33f6b64b3f4a1d25ac503
Date: Tue, 12 Aug 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755013193
