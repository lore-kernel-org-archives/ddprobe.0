Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 265D22EC54D
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767943434; cv=none; b=h8/bXb2wx//pAVJZ81vxXn6bSqikKxmyGLeH8vF/FEZbKdm6GSSGvJrkJi+sy3xMnBUckMZCTlon3uPzJOfhJH147UaT5I4niO+MqEnRJUnOnFjsMmJlQ007wMZx3VUgqpOCej8QHRCRwmd9cYNv1Nxmg+TkSiDZaGDyGdwNWZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767943434; c=relaxed/simple;
	bh=4CV7yZ9MO02C3mDUzq5USI9lp3tgckIFrA3x0uMuq9o=;
	h=To:Subject:From:Message-Id:Date; b=R/PcsFzlFak88wAmu2iyl14y7KxR0zMS9UFb98UUI2slkJ1diMwkYe8VbUdswJlJAKAd9GnjzXHC4PQslXg5lPNBWzKWISII1JMRsuzLbQpYoPaEEVi/aaPAlhe3d4X5UfUdNyWL4fjsI/rHoZ2bhCdT7CYyg9fpBSXYXMb0ots=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uVJr2vr+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uVJr2vr+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2E1BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767943433;
	bh=4CV7yZ9MO02C3mDUzq5USI9lp3tgckIFrA3x0uMuq9o=;
	h=To:Subject:From:Date:From;
	b=uVJr2vr+l5sPes9yOPn/LVx8UpiFkcH4xCuDjTS+pkasu/Epw4+oOMkPDZ3EZ4hZe
	 LtfMBCM3XTXcGXrUKwg++5MusMDrG4ufoI1SZuV6iOXRvkQaAOus3SJ/3+4Ig4JMWM
	 VT4qF8eSaAuXrKucNPNXPYqIxZKC/nPF7XiDXR12pcqI2Q5qwhBQZGmBPlyxIWMUXm
	 mdN0YYZ9Yi028Iuz5Gzc7s0sn4FUWd6p59OIbhL6N90Em1dxqVeIZSll3qbdxzpu1N
	 d6VxKvyFMFn0hLazginAa+Dk7attmmQZ0sipPJO0Ic6i1P9xCDAC/tFKcEXsiOuOJC
	 kMGOXKYCh1/Pw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E6F6D232EA
	for <ddprobe@lists.linux.dev>; Fri,  9 Jan 2026 07:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176794343357.5785.6279229476335697363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 953dca84e4e810a4f7a7fed98cf92130ede02bcf0e42d4a7937bd159f3fbb810
Date: Fri, 09 Jan 2026 07:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767943433
