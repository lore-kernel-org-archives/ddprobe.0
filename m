Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EA45143895
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749059394; cv=none; b=HfOT5AONDorCIMuqMXqTT4GsMsncgG35C1o4N2FkT0D0222mLVZxh19xWGVHJK1HWYXNGsiBZ5QjA+OFRvswtRKv1zwI/oO1Kgnnrcx/uhvkkIDjrVRhALi9sFgBYSYNoCCP9QWxUkSUqbWxQiCc6iXjIl/U55w+mF40mx8tEfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749059394; c=relaxed/simple;
	bh=F801qpUlG30n5Y1wJR3hvcXJpEHURtx5rWqytt3CA+I=;
	h=To:Subject:From:Message-Id:Date; b=i42N/n61trdat7lLn1XDV8StJqBnlC988Ukyy/uvsNyzgZC/oMoQ4SloWMt8vc2aWZUTm4L1lOTBbfTr/X4rZtjjUadxOEoPD9FBggELTIUh4KoLGLTg3HgqUDdZn9xPyhWinQJrr5FrLsd42m/8r0yn78S1RNP50yeEkU615AM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W1S3GyXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W1S3GyXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB503C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749059393;
	bh=F801qpUlG30n5Y1wJR3hvcXJpEHURtx5rWqytt3CA+I=;
	h=To:Subject:From:Date:From;
	b=W1S3GyXwD7jLo4GYSW53pw4q//5/44d5yzwi/FIuB2bzkU4kf7N0w/T+pH4bhclw3
	 8xp5AoCjsUiv4fTorwRUHDQ49uPHtiDBHmovf2KCQH3/DqwuX51j2Hedun+7lApqtf
	 iyBAhlNJ1ih8w2f15JXryJF1CmXzumVGegGApAe2IpC2sqIUFYhBXEX2g9Xtmvkp7L
	 OBaKZQ+W8Ll951DGh/r2idod3b9V26JO+8d3lgfdVazRU6TiAhJElbGUBQaMQLPCqp
	 xv24gg6XH24kLYywdKdUa+mHdqLKUA9OpTvqdFL28t9tJ9nDDhT0SpDr7RE7z1fP1J
	 3gQNUh2FTvhfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9825AC5B549
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174905939358.18414.18078147506842433815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 48a64d6f2c9f0da22de935cb289d1cddeeaed8d87efe91cf6a3dbb4fff5e8cea
Date: Wed, 04 Jun 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749059393
