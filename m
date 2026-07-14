Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE3B143F8BC
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784021314; cv=none; b=N68Sv6HijwMOqTzjdCivhoitiTbEKYNqcov4smI8KKLRXjtNhZmKzKn/+51LAMCj/HwYcCQIQZuGeVYZ5a5Sg34Eo2uvkv3c0piJT6vy2RrXM+BmnMJgr+hQkA3lQqq5PV2JIksyTIoN8sdClHAVdpugwVoZqWkz6bh1mRzOp2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784021314; c=relaxed/simple;
	bh=bBqG1vzTD3LMssrzw/8tvvJ7haAZ7vvhpnhxikNS9Js=;
	h=To:Subject:From:Message-Id:Date; b=Wv2ljpfU3oOo3C2xlbvSLA4Gr/2Q9ZbhJDBqFlyKOA4okb3wbCb7W2b+uxZDLtTtnNCIwuHI2XMVX9r7MHMtMDW0TDFkDVBpNr8VWWymb0JKnT0XNgbhlMqsWA+kT4X3VkDmmlJXi3ugBTtvITLrc02I8pADPCdbNKC7L6ZQeuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y9+yrWHL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y9+yrWHL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9B5C2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784021313;
	bh=bBqG1vzTD3LMssrzw/8tvvJ7haAZ7vvhpnhxikNS9Js=;
	h=To:Subject:From:Date:From;
	b=Y9+yrWHL/rZrsk9IzsuWZKmKO5foM587TV4y90957NVoiilzFewl0DlGPR3U/uJwh
	 BdS3WUfld8rGbDOqMDVoAGQet3Tz0eo1+slj8Eg01ZMQBuBE4F6Nr2X1sRYXXVW/zT
	 VCsnOLm7duj5KF0kewe6Yk8P5lGzEDvkrWmQjmxPFSnH7sr9V7f3m1YYf6idtiGVs6
	 e7vwXLC4VJCWJH8LbxHl5ZujFs2/7Iqu3RuCSBvJEw4Cyl/Dx/bcYrEiZs19kpUUz8
	 1pJfqMUID1QN4mKNGfWWwWsTtKV71zYyuqkzBM8TKb9o/Yaw+YcO1Kq3fTRonU/llq
	 TvJCC988JF31g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA22FC43458
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 09:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178402131368.23350.5662225983677426050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23f7c6665c214ac4158723664b3dcc237d5ea7c26645574c5850c2c42cf711d3
Date: Tue, 14 Jul 2026 09:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784021313
