Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 419EB34F46D
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770990294; cv=none; b=j7nQp6cdNh4A7txduQm3FoHB/nM240VJcCJJC3UetWBQNj041UuyQ91xfzEIes1PYYs0MwRY0p0rV8rHHbWpMqO6Xtp5JwWlDPaMCdea1fZLirNFKhsqPDeStXiYK+ov+GZPVIl09CUIajBVQieh6tkyL0Wsm7BtJ0DWPjBgkZg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770990294; c=relaxed/simple;
	bh=6N/aw+EP4glx5rwZOH9lsT1+AHq9daFAINoG5fFv5jU=;
	h=To:Subject:From:Message-Id:Date; b=jTHwTsdOJ9YxOioZScqzxVUU9JMIml+RoniWJH8azSxRHKKw2w+GorM5cxDDDcPwLOcsSmlaceyTFyZrwwJbYLX9t6fD47v6cUPh9mUujFTO/yN+GnfVRSLLFxI/7rNSaIDzHjM/9KZTUrUH5K1Lr1YaOyjd89O4MQAlMRU/pPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n/O8R94d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n/O8R94d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9613C16AAE
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770990293;
	bh=6N/aw+EP4glx5rwZOH9lsT1+AHq9daFAINoG5fFv5jU=;
	h=To:Subject:From:Date:From;
	b=n/O8R94dw69cDaxq/Dbse5I8NagVWHJ8n1e5e2p8w5xXZRQp5UaMxEsBQCV9LRy8f
	 snW4VNHVV0+ysHAj0PgCxW0LdnFscmI1Jho3uSY4DLDoHt1C82jiGQwVIdTsDU+/7x
	 PSu+HpKhLx5XEnGupCjmcGVXCDnVqDhoTonSCdZzBFOpmuO/J1WqFYcLHGMzjSecLD
	 Om0vT3AFgaoNfp2ITAXGgZOMoH/YKyy/hA34F1p6c+/axt+iRG2/BcWeE+gVsxNd0y
	 +6rInOPd9J5Snuc4zumt9ukRUbG2YhmPt29+qwiBhoL7Nr5OrUx3ff/OMn045dfBl9
	 Me6XfO9KblQ6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EC38EDF163
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 13:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177099029363.24799.15124094175420943874.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b10920c248f13d8573c109df42358b080b02fd67bc2341ee61e789de9196c5b0
Date: Fri, 13 Feb 2026 13:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770990293
