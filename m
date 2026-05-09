Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACB03274B53
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778336854; cv=none; b=uL9DTP3R6tQSQwptNCFGrUEJOKMTvBzTo+woPc80bdCCo0cRm5aQn6nwk8yf8oArQpYyGl2y8f76OPZTaPUSxpmgP1XF9tZb+CyslU3nUSTBbImjwgR1q97k4RXucIDv+nq0K2Iqf/qWfVF9ce1qXU/3KJJNzUrPld/ef2utdgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778336854; c=relaxed/simple;
	bh=rYvrYxeOOZqye+jumMTINZCHbTCXK6L+8Sx5GddpAfQ=;
	h=To:Subject:From:Message-Id:Date; b=KhuawtXYBdHbRxGf8xu84bmXFGhc8qTj8L3y4A3WJ5rawnavDzvMUzNkxUVXfdXXRFS/R3KmlWCHMmDuPYmCFp4LaMzhKlXnlCGddub0KB2Kzx1cP2q+PDACB8dX2wUMsV+xz2o/UESpfVFNqW0L5zL/hc+n5Q67RCetv5NnmVo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rmBLw0ta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rmBLw0ta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3E09CC2BCB2
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:27:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778336854;
	bh=rYvrYxeOOZqye+jumMTINZCHbTCXK6L+8Sx5GddpAfQ=;
	h=To:Subject:From:Date:From;
	b=rmBLw0tatNkeKd61ibtqcYY0L4O5YCLPVqQH7Ovu3yJnQgWI61DGx0HrA2TaoUeyT
	 WLOHGodRH82ylbEMIitj2ntE29k7acNkzuveU06UD2P5+IoGXbQ5eqyBrlB5mE1LC0
	 wyuH2OXvgUQsjQvzDXLOnqmIgONAwnnv3ml2p4UmSLRMkQgsbqIULI0eyMh94FWtft
	 BP2ZyJ8ABcmm3ib9Ywl2FpZ5VXEBg9arnQb2Yj2Wd5JeYs0mn0TMgPtEYRmgvJO2ws
	 GbV2PihWNSsSXG4gMPAWeQyGtUy7hwdN6R8uC/JP7r97wnQDbIqIEExs+RzLrUOonq
	 bP2i6vKVQWwkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EFC83CD3445
	for <ddprobe@lists.linux.dev>; Sat,  9 May 2026 14:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177833685384.17547.14200028097130780889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 760bfc4e0d41453fdcd212a897e27674e108b64d3da09046d5f70e7149457412
Date: Sat, 09 May 2026 14:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778336853
