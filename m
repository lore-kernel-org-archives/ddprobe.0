Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24E6124EA8D
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743689994; cv=none; b=akj9Qh2ttiOjv7wOPsN+So5BN9kt5RlSIdVNMD3a6WN8Gs8UioNpMBfrku9py3d/gjaSOLwGA4P0A1DfxC0hwpD48gVwywBbId1n+Up1HJYCkBzQhyi07dpIz4UtjTSQbC/V8UaoTueXXNBabK03+KLKanQ+fXZ2Q69qH3bPLbs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743689994; c=relaxed/simple;
	bh=S3e8HTAhj1fgmRU0Veu6LjUNI2KBmifnU6MDXg41TO0=;
	h=To:Subject:From:Message-Id:Date; b=mcHcFk6j88ovKCYBe6CoOgdMsBYgFFJ1m9hEzcHnNwvTeXuP6nVQ1PcS2VzeE/NNxFct0x3AlG01+fiyOeloi4KZAqDWSolVuSYzmva8MAiJfym3aIu39KzwDO1LKAvlezSipj//bCPqlmYWvXK8/xBCB+UVBLHYlquraALw5Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVSj5kdK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVSj5kdK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A00B8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743689993;
	bh=S3e8HTAhj1fgmRU0Veu6LjUNI2KBmifnU6MDXg41TO0=;
	h=To:Subject:From:Date:From;
	b=dVSj5kdKAMbnfD7nOoB39GGjUEWooRe/hrPqJLNOMMU1FtMct9W5phr9YirmvU0d8
	 Z+v/Tj9sSIIztyusiGCqweTFY/d2dRmeXqZD+IFOM6hh4xS++V1ZzIbcZ9K8uAMKIQ
	 Y1Q7TrTUZ3sK/JTWa8S7R9s8EkbhWzhTl7q4+Eg7rAkwd9irtzNYCjwAyk6rRfuNYz
	 1XCqh6okZnZSUrhos88nU9Z48npFpVBfD2mWw/T4qhsUhri7rf19hj1jzKlY+rpSkP
	 xWH87c5UDi2JU0vybbakk4qUCCsPGyLQQ3gdACcxdgBOltOop1oZwqT8r+m3Dpf0bK
	 zQ6+HlibK8lDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9120CC3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368999358.21318.3181963478194684941.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1538f3cfe6554c19185fae37290262bd793e4220649bdddc215bf1c10ae8995
Date: Thu, 03 Apr 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743689993
