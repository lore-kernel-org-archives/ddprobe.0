Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B858283C93
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770758034; cv=none; b=AXEVcMi8l46tpKYxL8ArT4naxDRA9aPW+kSAece7r1WVDcmjCRUJYdlLGxM9sri41JrTw+MWG1dfgl0CqoPL7I2fB2QxDiC+zDp1k9NeAjDwR+rYpwoYgObB64sRpUOjpMMFyEyKfjDe0vfGFbqgOB7zmf9UVc7J42Ny2fXQiNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770758034; c=relaxed/simple;
	bh=h57jLzZ/rfK3LP5GSQiAV5hisN1BBF005ZoaINJgBiE=;
	h=To:Subject:From:Message-Id:Date; b=pABrYqZ6evPFvfXXNdCVJnPYSNYIyJHcFlqEEchf6HwpZyAtdZ2hiFb4+tm9bMXnt3Vq+wbfIkiccvox8lkMkB4OByekSbEl0LwHZsaH4rifyDitfpTkT+OFGejdqwJtTWK1nXbDvOW0EBhrjJDpZyswNQ2s4sFeYkQ6l5vqrqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j84NVUkI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j84NVUkI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B39E2C116C6
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770758033;
	bh=h57jLzZ/rfK3LP5GSQiAV5hisN1BBF005ZoaINJgBiE=;
	h=To:Subject:From:Date:From;
	b=j84NVUkIYEx9v4Snca5BzM4h6ZuNHlJeT0ElyqkjrQxPoUB0LOoGuhZs6nBofTcJH
	 t9Vu+S0KexJMhxv+7Tgw91gtDh2DxOII59yBe7EiqyC2xQ6Y0NDSrAggJrJxLkXHPy
	 J5IFw1o2iYvSyqRydblh8GEHg/RMBac5VC88U/F/Gn7rwse5uelaHV4d1J6z5DKP4x
	 Zl4cDEtLsgclxIkMe0s7AoS34EB+ddZStKww/oarKt/Q9B7h0WAW7tBVrCW2psSBwB
	 V38+/pep1AnNzI0LQKnqRay65mqvfv+hQ6+CCc48CSYuwRAI7GGM4ZFsBWP8KSWJOs
	 0cBxWDP/do21A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3FDEB271A
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 21:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177075803363.5873.10591187728600420868.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4ebec08ce861c3f3efc1876752c6d7da362cc1033ddaf30268802eb4ce4926
Date: Tue, 10 Feb 2026 21:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770758033
