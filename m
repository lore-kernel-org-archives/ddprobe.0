Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 649C512CD8B
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742348394; cv=none; b=HJi1flre+OCx4oNQzTQkluQMZr3/kk5dVmN0ZbJS+3LjNO3QO5eTkmW9iSQDExUXXnmZ5fTJ3473N+UxgjlnDqrzPWKTwhVfmuywZHmBXgdxILcvKgis23nl9Y4Uyrh41DBX4h6HMGegKcQGM88/f/QtyiJp2vtAHBXDGM+f5K0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742348394; c=relaxed/simple;
	bh=NWEsoOkkzyNa1M4f4vM+s5+Strs4/6b//CF77MNhyFw=;
	h=To:Subject:From:Message-Id:Date; b=qHZ0zHtlx3q5/akX9GevJIkte+UXKzumnHMNjW4hjendp5QBQK2urzcguAvB7DmkqAaVi4yiJ+OqQIWLvIfmSXlw24i5eSo51F3tW6TSbVqzrU1aTLaXrdOoSaSiubGXI1f34+Cjh2qRCBZOuKBWrQssNtmc/7YbA/2iWoMeFik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HI4WKVz8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HI4WKVz8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C16FBC4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742348393;
	bh=NWEsoOkkzyNa1M4f4vM+s5+Strs4/6b//CF77MNhyFw=;
	h=To:Subject:From:Date:From;
	b=HI4WKVz8yQjVOtNvkeZwwIJUbKUXzbEXfyrfELY7YUjST5L2NJo8deoKyxRc6Brib
	 1JQ26gAy7MJEv2IOHlypw1T3zi4Tkya7W8IfifuaaspS0dS/yH+qc5J+LWMwFXWrW3
	 UdyPi3BxabFXX+ukvdtSIi9EigctHLVOEVk6lrsyG0X2KZjI6H/33hG5rABZUXvHIU
	 7wM6w+U0JcF9nKTbHagKOQ1tD82bBAnPyavApchuoiJ6BQXBSsyUz/z/ZsnENeixK8
	 71u8xxwAnqXIFiW0VOzqiTqA1sjkekfI8FVWNJ+OuJ5DrhR6FtX/E6TES7VwaamqMF
	 Os1a1QDasVzHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09AAC282EC
	for <ddprobe@lists.linux.dev>; Wed, 19 Mar 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174234839360.29187.3467742129362728857.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e20bf014e348da744e22cc2ff7da329bdfdfcd7497d5ae88d054da53c193ad1
Date: Wed, 19 Mar 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742348393
