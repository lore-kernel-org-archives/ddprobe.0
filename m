Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16FAF17C9B
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721631354; cv=none; b=OUy/OyZE+okxQQnMIRpT89E5E2QvK5CvPDG5rbatUS3roK82z3VJ9wCzvuhfrdMzGMZRWighTgunTowHEorOZZsE087hBxTl/c3ggnrZdnskfK53P/2nDfgAQfxjYYSRawdVV4yD7ZApqe6pvztsZGekT7Rjrt//ZtmWjYS3GhE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721631354; c=relaxed/simple;
	bh=GGY2OfQGNaXu13bTS6w124yw1v2kz0KhPlIrRGxMxE4=;
	h=To:Subject:From:Message-Id:Date; b=lPW8ClRtMWpdPzM5bDA/ouJDj7HhGsrk+OEquUudyvBvwfPcacbrb1xVzppw3NTMmmZqZZVLvOPUPB9Zm57DGmEsHbOlExXBEy5tdnXk25n9T5U9eY+xg7SC0ThXEB3J+pAIgXw/KFDxcR3jrkgDL2MwaoqX79eM9yXekzi57dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3NXCAFs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3NXCAFs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0AF9C32782
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721631353;
	bh=GGY2OfQGNaXu13bTS6w124yw1v2kz0KhPlIrRGxMxE4=;
	h=To:Subject:From:Date:From;
	b=F3NXCAFsIIej47LAltpmJ0IdIxeA3iF2drklz/27ckLgXeOc6zSwhfNQjAOojZQq6
	 9audQ0ATD1//ZRgydoy7XXE7L9vW/6S6GWLytJjpARMwCk6daw2Sw7EcdaTkq4jUJt
	 r2cUOKbDmliptVAUfzIe1FXv6PFaHQCp70Cie71HcULfWwL9kYszFcwCCdispYhcZE
	 hQso+mTsIYDdyYuO0xL62kNH9YE9jTJD/5SqmfuKllY2+T2M0bZKSMBxnpODMXTxIS
	 lpLdSwH7rENTgnEbzg7fdDI8lYvQcpUG9ydmlQczdzGQX2KEktvEZ14eDBJ3D/ZReR
	 R2pw+a+yKxzYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907A2C3DA59
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172163135358.11584.15760719720564078895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50b4f6188900f9451d6ecb0c1cc716825ecb7f4ad2632fc5b6f58fe605c0f425
Date: Mon, 22 Jul 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721631353
