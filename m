Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45DDA1C5CBC
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734719154; cv=none; b=lVK4P+vA5beXvgtbXV1sunQ+NqKlNRfnAr0gFCyOJq2i4XS5TKX5RhJE5xorYXi5nwZQyx6u3WtWSITcLKFYYJXIRFzkRtK9a2kPzWUilwfW7sLOihQV57YNGV4QrWrhpFPCo1nz1FKTiyhhzTqyI2FLirjnR6ViX6+sgttKt90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734719154; c=relaxed/simple;
	bh=6Vfxv6Iy3OMg95qP2FAY+BpntOQN6vjsJ1FLJtwj3/s=;
	h=To:Subject:From:Message-Id:Date; b=BHM3VSPGpD4ncbpcEIwfwHtJrRwDyeOIsyXVTg3BdBpF0QfwB3OOpLIzP5c5nOl9KVsiCfLDpNFlOZqzTpTkJAvyAji8HUU866bAqKgr/QYMMof7a3haPFEFg2hOY19jDQedPFNaHf+E0DXA3q9N4TidB+oHiP7dBwJvYRzslXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sXf7eLHz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sXf7eLHz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8D73C4CED3
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734719153;
	bh=6Vfxv6Iy3OMg95qP2FAY+BpntOQN6vjsJ1FLJtwj3/s=;
	h=To:Subject:From:Date:From;
	b=sXf7eLHz8n+FlCSEbWAGtShQyODVrL3+TBX8osS/DSffyFzwxo9TLIruj7MvOdT/u
	 IW3EKmiIiEexroS62IfszagxZcTlqUBJRX6WqxwLF+BzJBXDOznGAZU5IGiWTdHZdm
	 DaUJm0Rw4g0WDrisk2A3CDw/o/qqsJXqd2Osarvl9lC72JCyyJngh4KDqoBS/XIkZn
	 lptHBB9s0IpF2qluyyAwkC29YsebCQwClKtF3kVpJZK9W58CVfOUtI2mSKoYiJQ5GG
	 UJSMVJLb1ei+QUx7DMxBn+qScDRnzc9rpZwqkTOSRVVT994IYYczhEcjDOFquKBazw
	 xXMBrKufAe3MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EA4E7718B
	for <ddprobe@lists.linux.dev>; Fri, 20 Dec 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173471915366.17641.6127512936668291713.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8cc5fd915b0bd811ec200f443dc804588f7aae7b26d1a4d90322afa4f10527c3
Date: Fri, 20 Dec 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734719153
