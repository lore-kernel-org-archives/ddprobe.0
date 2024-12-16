Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0D2206281
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734371754; cv=none; b=ieEF2GJ3IDLxm5Hm17plybmnGHfE3eBgXC3BaXwp3z5zywef+1qMomUlHI33rP3wfTU4hiKHxACQGhbbwaRbyetQYJhDOrrJ+Pxgv3xucn1IRXRC0rbjWhcqpGbbH59LU0LjdnqcVBq0x9HOa7ENAl6n3qHA5Gsj7bA7NP+qmyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734371754; c=relaxed/simple;
	bh=ME+VnISjvGLmfMru5ihywoBBonKD4/YriOw2rR92Q2w=;
	h=To:Subject:From:Message-Id:Date; b=chyoC2UDpJ9LZJyO+bDKmtyshqTcIp9G4ni0Wu46QlMUlu1GI+A/Trw91XApRtyXyq0krh+o8Gkn9UYY9oZcftAGbyKh7BEbkmIDhDIWZBUQpdXHYT4TpsBZv28z8MXVtOCW4KA70FacJOx4ae3BtGRuU8z6/zF4nFvfD8yVqo0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udjYoK/t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udjYoK/t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4D0C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734371753;
	bh=ME+VnISjvGLmfMru5ihywoBBonKD4/YriOw2rR92Q2w=;
	h=To:Subject:From:Date:From;
	b=udjYoK/tIjJo6kFm+XhXR5OnFqSlAeJVPqF5lJ+pFozW5betRnMw/9pRzxXoV6LSW
	 UfVvGD2rOUE3/DLlY/JWwJTf/FAAWMS6nSxtHMN7pHxUZQSdk41sHdMOe4NsFlfwiX
	 YavuOMSDFpFnSqt0+YZAqpcZKzCzywUYmbq2bB2R3lY3bAdkv26gvawRKBwZNOTNF1
	 xOgYhWndTwwaXxKAMZ10Qr3E/G53CALvQXM7yctlV9ImVeaNNwV9+5Q4iB4B0P9SUu
	 u4WK4u9L4aXVumQ7Ia1wFecAeA2Ef33atilJ67lsV0tEioWCNZeb3j8mLiSCj776KA
	 J7JC1ffB1m3EA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98697E77180
	for <ddprobe@lists.linux.dev>; Mon, 16 Dec 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173437175361.2123.2517226108547613241.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 714beaa41a843e8ede8ecea9b7bd4d3454c7fbbfc1ffd39a396785d315d91c25
Date: Mon, 16 Dec 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734371753
