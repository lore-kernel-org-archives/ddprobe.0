Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD2427466
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745281195; cv=none; b=Q35wCv7ofG7KKPP69L89BU9j+BuSuxFNsUfa5BwjS3/bglXZl7CUER6IvZZWJslWPFqHnWD6AlXt4ErtXL1YxuaXBbg2DY7+3ccvtOwFaaGGfWQKIq+L7ZEXpqwDIR82z41BPdg1uaEGH/MyLYMXXEGIhmSN2NkI2VTZhQLKDAg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745281195; c=relaxed/simple;
	bh=MZn42mhuqj3qHLUF3DDP7felzWgkrUK+nZkt7oOv0kI=;
	h=To:Subject:From:Message-Id:Date; b=JPatO8FSvadZvobpoUJz/eVE5unMcrIhUDXtDjkqjaiBbfr+KS+lMeAVw6I4nBAnK+r8E/P662N/fjgN2I+vPIoAVNBC3nhbcenICE57gIiwOCgFTduC2ZBBSXRQ5icEVgt4ZiLiuxqMkbktAuWYBFAp4LsORPOh3GRyDO3+lzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmoA3Eg3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmoA3Eg3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A631CC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745281193;
	bh=MZn42mhuqj3qHLUF3DDP7felzWgkrUK+nZkt7oOv0kI=;
	h=To:Subject:From:Date:From;
	b=tmoA3Eg3KQXVBHA4JXuKcQp5Nj0SHIFqxbMczf7/u1w+k+sBoaNLn5ut/9Kxd5dt2
	 lUF8qdpeza5DDyXJQjOSKCMi/QPCIX8l4uIANTsc9QT5VMWry8IAd0GauktWGNCa3N
	 ra48zX/a82xFnaDsUSb1UE2kjIbZkVL9u3yjDOngaqorFy5ncP2cIiNzHMZLKOG4QP
	 FMBNgfBH+QiKSMHvr70+RCgWxbYAFmETTKAjohBVFWdlvK4aYe8e1L4Dw0+swVND7X
	 QSdL9KmZulnFhAIFUo2vbcTqUcVROX8wiOvybyhG3ZvZAFowquqz2pZvTvmyd9Rgjc
	 4dbF0x1DKcfOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B31C369AB
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174528119359.12743.7864625999086368334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d676f16d8ad7c7b2080c49b77f8e4bc55218040c02456bc236764261bb1c605
Date: Tue, 22 Apr 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745281193
