Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352FD36D4EE
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763695914; cv=none; b=JRnDj/1/9S5xV6+X0iB2nfZZOlyXI2omNMb/PsDH9Orzy0LkLCEGRb86ZfImtyEoaKvxlkexmmK1XUnGgm4pc0xybThyY8YLrANVFCssukBWRHEcGud1WAX2QizltqBIUaIbqe+R3tq3MDtRkBEd3THIJsgkcQBXJvT7bjbtES0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763695914; c=relaxed/simple;
	bh=BVIXrN/QGJH3jVT4MVF2pwAR8Kn2EyaV70Kcdn87bjk=;
	h=To:Subject:From:Message-Id:Date; b=eidNQBdFCdRO2miEV6MJ5ZhnD3mQw+1Zu4sGr/ceBZqa6UGGWR2pA1kUXSsoFQV2aEi/ncGfsqAnvFg/l1CSZOCOxH+db5ev02/Pzo5CUJmWnjJoTyuUhHPlKahGxgq8RqU+Ehou9meBhwOZNpGJae0wT3zjOtokO8HMmi5Ee9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pz1DI38Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pz1DI38Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA8FCC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763695913;
	bh=BVIXrN/QGJH3jVT4MVF2pwAR8Kn2EyaV70Kcdn87bjk=;
	h=To:Subject:From:Date:From;
	b=pz1DI38Yrs01ZY62XajJIxaBnI6GzQxM/vhzXEvQhib4kX8GvCA8uRtgZ7hssKMWs
	 1sU35+wfb5LyLHciRlXNoGAy3Ec3hQ6AEIXsnswcRQkAZ/LDSv4Xb2pkR5EcNttru2
	 wDIYYN8ZI2EktUWNsFAe+Iu0fw08RgrhCuevZ9+Abis1nuMWaG+0r7qnhZd4Rmr1Pk
	 WroRcz7i04MgnHSHWrdCn8ObQQb+tJ3aus/5QL3Dhh6whjU/F//N4FM11CYTIC8+uX
	 8WQBMoslHTEyQjEf9FEPywX267hYZlEtDD5Zqge1Q+R4zUhuEwhifROpeu0gkkf4pC
	 nflRkcrRCf61Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB2CFA46D
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 03:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369591360.11435.4426233197805076932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c01016208f4337501a11efe9026469a06e3b996c7d3d2f10324850b7608efd83
Date: Fri, 21 Nov 2025 03:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763695913
