Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D943626ACB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759685393; cv=none; b=X3gnUf/H8la+K6M/rJrwbs1M4XUw8dc5KMnsepBQwdFD97m0j5SA9+74WYS6jLRGHOz0Azoc0PW31I/NZ+lN8AXG6aWvFmvqJ/PjbGRYSsocOidiVqSm7xe/0s2DRVSg64H6e9G74Buk5jMXMT5+VtmMLYbDSVYZ65n4FdDbnQ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759685393; c=relaxed/simple;
	bh=EPu+sodv0DzEBSM0hPNfCOUk43CEk3ExFwruqZCTyFM=;
	h=To:Subject:From:Message-Id:Date; b=rZk95RvRp2Id7OndmTgsGo/r+Uj2AEFEYNGZx8uZPyjM5E6WI0kkotFywkG5uRsI551wf6aHI92eWxWwQS/fq5OO+BtPuuhIbki9mmZ5RFsJrgRWkmNhDw3w9DiJg4p9ruqMWNYnmRpdZlgZghOOKzNj17iE6VoDlBPtJqYdo9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnmC8mJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnmC8mJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A798CC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759685393;
	bh=EPu+sodv0DzEBSM0hPNfCOUk43CEk3ExFwruqZCTyFM=;
	h=To:Subject:From:Date:From;
	b=TnmC8mJ0ILSzKRDvJTlxIoI+HxB07bTf4JR5pDDZczddLeFCa3BTBtDyjtOWlZL6q
	 7S36GdSh4tfx8yie5kZ6QUTWIZAZHbI0g+PrbIdUSD/QyBgPEgURxf8C9hrGPw3ZUr
	 c/qQxOSP/Q53nHjvAewL4GUVQU4MwOdNnu3U6AzjH2PFMU2HE88SR9bMOJAyU+p+zU
	 ProZPmPkTPeG8+sl1vuFbK8LtRgIMH6k6UdqNDt8kGxjHbfZIxnl4rXgbYBZZfgGnQ
	 8rqZfoDYDSQ75IAJ5zSKV+eow8qLqFHeGk3dYRlVEboJYeuI3CVWBE9UlTk5ZOZh4D
	 9koCRwpsPlViA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 926FACAC5BB
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175968539358.5298.3881072635831920449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a329beb6afd09096309982d79225a1f14833b88a2db5ebf7ae5da0c6491a684
Date: Sun, 05 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759685393
