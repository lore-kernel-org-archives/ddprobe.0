Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 082DF46982D
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786619435; cv=none; b=tbZp2g+CJXM59yBYggdqnEuSqc2HZQD158Xhpe1mDWjUmD2PiGQHrfymZrKpBfiq3BXiDOjyCJdpFHRFZNylq70zNMFvw2qR939+XxuN0HMuTpeFVLAMc3/2pwRAFQNFtJi5Jb3KjZDHjXiqhe0b/6DjfvekIips2OgGEWJRqx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786619435; c=relaxed/simple;
	bh=p7hElb7f+HMXVmOYekY8nA7EFsGrydeT0w9SPuDvhVE=;
	h=To:Subject:From:Message-Id:Date; b=ZkS9ckQQ+5Af3ShRHGAa8AScqH3sWeeiShN+FO/3ix2rkBN2jSyfiaP79JM2LfoLVRfg3DhVHYbe4Z4YNM8OWmEhgMe7XLBrOab715+ZRzcBuQSvD3sWLMgehggzMZDQE0YfNTDSRiC6/zzpTPJnF+NBWRNoXl8/YG2brL1DtuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKv7fBkf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKv7fBkf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB18BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786619433;
	bh=p7hElb7f+HMXVmOYekY8nA7EFsGrydeT0w9SPuDvhVE=;
	h=To:Subject:From:Date:From;
	b=lKv7fBkf8WsTarsjT6v2kioysSKDAc8gkhpjEqBtaeE7TNYFK+8yti7+U+ibTfLA9
	 LmrA282Z+RbwF6q6xHO25EnHE5Tdq1aYzsqjgx0Jc6zhcGZw2EGs/3NQbbVHfyrKWW
	 u7S+Ms/zV1bIBTRtJOfANQewfYquGqLDO+5Z3DGtZgUcKxikcFVfWIls25yzaC/BSZ
	 X3ZtraC4TszBwi3wYUuQuCmAqVeaGHp7npoAnwRoKcjahvpSdUwFdx1mDSQPOWpOme
	 O78S5mJ1eZLhYVAGFn/FypUDocSvkgguT251zDprBURYIL+M2PrPgqheX3Ew5oxmui
	 033ofQTqsJPDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87C6C5CFDB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178661943368.23156.14153269661067664952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92f99260c2b3f99f3ef9884447e996535808330cec359b869d04e1fa98361fed
Date: Thu, 13 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786619433
