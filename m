Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A07F1A316E
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783174114; cv=none; b=TF0X4WWTG7Ux3KA1yBRyoXqe4i8VlqBb/ul4g1nukpSC4F8uVG+AdkgwdEMHO1gjbdfmgDHTHuVqlBZmf8kSeyjzlJzn4QShOlPA3hjl4B6PDPmGfd7qISzvr7khYmDI2TjpkfHfS7XOtKRWl+oLVBy/njvGaJQE78U12zER3Ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783174114; c=relaxed/simple;
	bh=HsIJHx/JVSbxnt1Let2BBTLmQPbx0Lp6ai2Nu+z+PbU=;
	h=To:Subject:From:Message-Id:Date; b=QfGlJGgk+H5RiF03kAVIjyCMCqao+j5s3BlCuqnmjv+ewd37FE1Doed4EAoJbfZAW9xzOfF3P+W5Lb94Ed3c7VANP0qKkiSSpnuitAXoRFhhsQ+Nkk3K9ngDzycTM6tef12prbFh/yqfabJNaZe8h5C+vs7xZXyoMdAyJg+ZuJU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KlBoSKVp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KlBoSKVp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF116C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783174113;
	bh=HsIJHx/JVSbxnt1Let2BBTLmQPbx0Lp6ai2Nu+z+PbU=;
	h=To:Subject:From:Date:From;
	b=KlBoSKVp7LVFqxbPHNAI6EKgRaB19K/hKO6qlxJFPq55ixeHOTYOnEEWbwcJrIzCq
	 4ExWPFVrbnnQtKMDyh/YpKRvvEqdYG1hKTtG48IoegAR5Oar8N6axL66Zja6NxKTye
	 R+U+QotSobcq6HdIRkXhrpfxwmM2HS3D5iVppYHREzHgj3bG/ZAxscV6S/w3F+fqXS
	 QCoZw1O6pnz6C/2kFD/lPWRS2jIYb9xUpV2UdDudB7UUAg6uPQ/kj4vR5/mrv+2Dih
	 XCX42MQ4yqzaemPIPDa7rBebtiRpjEzr9r5XoK5vPnxNbnV9sXbQN+mTe+YRGe9Flj
	 Hjd06GrijrcdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB1F0C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 14:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178317411368.15012.14725351098913807849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2c44f4945aa88d6ef2a557f45b2aea2313db1b5d35fe36637d22d086fd8ced4
Date: Sat, 04 Jul 2026 14:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783174113
