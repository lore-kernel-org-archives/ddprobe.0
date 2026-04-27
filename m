Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B91430E0F8
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777295254; cv=none; b=KfpIEL599YK2sRuEWIyV5QMYfJkJx3mc0b/daEpce4QkPnmJ8U+ndOXPhlikaYA5JdD566KAqws+C7Q+wcQzvG6kY0sKsImdMbfy8xbtbADY2GkYWk15ILVeXPCnO0U0x6vC87DiI+wGtIU7Okmzgf4mSu7qomsA0tWDOgC8c/I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777295254; c=relaxed/simple;
	bh=+RE63gl/Ge0ki2iLqkhMVCmaKYBUG3hyQxDmgDq85KM=;
	h=To:Subject:From:Message-Id:Date; b=AR5akz/CtRJz/lonrIl1FIssMquyjPqhqmjzO+t/lkG5RytEAXi8B/7DsqyhnpcuSyfOFH6UqskEvZ9CL40x3FsyUUPaqIunbDiBDMdQlS60ReaXi+LwmfjJb6tpFYbWFJBd6u+cfZ9dbDH7p20uUXl9MpOK3t0tXSNo+fa0p1E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g8XMdrtX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g8XMdrtX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7BAFC19425
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777295253;
	bh=+RE63gl/Ge0ki2iLqkhMVCmaKYBUG3hyQxDmgDq85KM=;
	h=To:Subject:From:Date:From;
	b=g8XMdrtXzT5noF3QIqKCvCB5tuUa0DjFBSFBwwQOZG6bDJ3//8t3iZ/kJFYirTAwN
	 OKKzMIaFhWpHIFSXLSkg+kCBvNGDX/bHL+TQ561eoO+HmrQ7yDsi4JWhiMtKI166bu
	 zm4cgc8mkoR7nWEG1nwjpz4+xL7DbHGwCLIS5937locD6M/2deOG8BrLDmd81VOp2l
	 J1dgd9bVeeVjFL+0zgzD/2tx5I97/XitX8xQJ4zsX8mxWsw18r6M4DE7pXewsXSAd1
	 liF3/b+0MuQtvgSyxsVHawh0N75Sz3CHEu6Y/R7WzI20SN1u5yuqV7Swr9cS3qjW4K
	 4Lqeqt6Zi2goA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D3DFF8860
	for <ddprobe@lists.linux.dev>; Mon, 27 Apr 2026 13:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177729525368.7513.6351875203913503717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 941d94925730bb62e804228adf6f021d90f40a3660345079c6f3e9eaaaf2b49a
Date: Mon, 27 Apr 2026 13:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777295253
