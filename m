Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3F04C67F6
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792333834; cv=none; b=SaHJOWCNpm7Qf2p1u/qMOS34JJ7xRCaU0UdFH7Km14RYPQwKz0lvpaWc4m0CxhWKy/Smg6Yl1yYAihud5E3LM//8ga9xvXqvISmJGVMr8gasImPWA8W/clhZ6OkpQIJ2KVkcq0HXbWBF2lq97UDk7TtOFTIglqyc5AmgwAPbftM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792333834; c=relaxed/simple;
	bh=CvJ9AhXDTP54du21oDtk7clQYsO8zHRfiDQzk+xncZg=;
	h=To:Subject:From:Message-Id:Date; b=BsQqMBx4i88ox96iNo86i9eLbnawrPRhB5KadCIj/A6W7iEALtWKPufvRefQwEAICrKOr0fADeXyhFNcRTotyDJ9S5ISCZXFZulh82HzQJpHnwq/QYqcrukZt2nCWoEHBxdflqy0Uj6XLJTvv2DOPmlpfaSESwgvv6N0FZ7rf7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LtWeWou5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LtWeWou5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CECDFC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792333833;
	bh=CvJ9AhXDTP54du21oDtk7clQYsO8zHRfiDQzk+xncZg=;
	h=To:Subject:From:Date:From;
	b=LtWeWou5FaJh9JGqejRK5lfscyIM7mGdgE7jOzM/VDMmNWdC1niP2kMx/XpsYFPSL
	 rtnPmNa+pqyKtVyysIihJ4ZB8cbirG9BhPNZHCzm5ex1a9nBa0TUhLxHV5RFv8tP0W
	 cEC+tn1ZKe3wpiH5eXuQMIV0qNUAUus2daU/QqixmIw7P/iRYPac1ncNy+boOm101+
	 q0PdJHMSte7DkqezgISiNxEtOmO5U+drjF3rdDkLwmdRUG7VdK1F0r5iy5/mQVOVAy
	 apFMsb8hrG9Hl3KYX/y8qddirvk3FmJRRheoaboQl+zzRZrWWb8Clqy5lmZPpXaNbm
	 QE65d8s6GM5Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA697CCF2C4
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 14:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179233383368.28795.13688172323914363491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6b59d881e54f8bd4c126a9c8d31614b40314766a0c7a16000dd0a7c9a2a84ef
Date: Sun, 18 Oct 2026 14:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792333833
