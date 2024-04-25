Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CDD918D
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:01:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714003283; cv=none; b=Fj4XBwz58aD1dBY+i7hBOu0aRIPMWKFLLGN4Jj4SCqSOm1Az1htIqYsGADd3MfhW5CdpP7Gomw8Ya4uu3LpKGBTEXn/BdCKPL1v8Q4h3VYwOA/IRtoib//ExKHGy3nhif4fjQ0TKCzazfaHnnvRSwdd/UZ1xUSaIAKwb2Nx+x8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714003283; c=relaxed/simple;
	bh=1rcyP4Cqm76vFblMuJXHI3IlqynWuZmj/bRNELZuYTE=;
	h=To:Subject:From:Message-Id:Date; b=HweDWehC6PbQCSLVlsK8A82xrHdvGjLROnVQFjx+YFXtoKYuAEXTL/x874jjBF9qC1+5lKQP7arLVK5uj9YGujJ2vZvxy9Se4mSGPY+fLFTYJoY4qoFkiXQp3i7ZEeQp1x+xj7hZsmZB125S0JAzhiX3G2tuNg7FiYMRUqFAbco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bDz4/O3V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bDz4/O3V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1B12C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:01:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714003282;
	bh=1rcyP4Cqm76vFblMuJXHI3IlqynWuZmj/bRNELZuYTE=;
	h=To:Subject:From:Date:From;
	b=bDz4/O3Vz1407Rh/KkMeWbY0E6SE64gWAf93bQWFcKatBvOYh3j3Jp8nw1tIfyu5F
	 wGUr9Gi3w9wXyW+BA+AVL3G14cFX/Opdtr6IIPJ2w0cvp3Gllhan6Ix7z4V3yYNiko
	 hRM0ccCtQDe/hrYTLr4ex+UWmVbAGhmua+t53cqP8IU5SlwfCxi+1ZcZJVRbr30nrz
	 Ka4+AmFzEbfKdcmTc5Ht6Wq+pva2l3NI+xFh9LYa0bpVx1ZzXxq2ZyOG3ljBE/CEev
	 a7GkCIHHJte0bvTjbD4bePrtFfl0io+7beISprdd9Nyphaap48SPa5PJiVWVvmRKE+
	 lHgPi1nqvkiWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB530C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 00:01:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171400328279.10405.2447028618124097702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7447c4aab9074438869efb48b4d95afc1c23954296cc18b94c39441021a39475
Date: Thu, 25 Apr 2024 00:01:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714003282
