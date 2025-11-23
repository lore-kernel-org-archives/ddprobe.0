Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184B236D4F1
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763924514; cv=none; b=DIV/T7dSlSz6UAcHbbYYDVWUlLwjPt1w1Racv0bwKjhsKQeCDXD9niugre9ctpWGT+N5X8MP1omLtFTK/p1vOSJKzJ2kKij4+N1F9CF9VzOBYOQfWnaE5Mru5cxQ17C1S1rJefD06GUPVvtlnAvZEqX81SC6J4B5EV4xsJ4a8tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763924514; c=relaxed/simple;
	bh=HKUD6YxlXFcMqNDP0I+9ws+Yr4L7eUm2mJOMawEHntQ=;
	h=To:Subject:From:Message-Id:Date; b=c2S0iANNtfTcp2sS62ZA2pkq2KOoA0tekJsHh3KqxM5vsGFX2NUT/OqwA0kz+zMhrsQnWq4hgxpi6ircO+ReWxhSwoUeiMCA5p2GwjkIC5nlI3z+aBv4GMu3U++fiGBmmoUCG/MlfwPkH4nN1hMoYkVt/F4nARsqQWPiu7p29S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qSsK/eIy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qSsK/eIy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C71C113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763924513;
	bh=HKUD6YxlXFcMqNDP0I+9ws+Yr4L7eUm2mJOMawEHntQ=;
	h=To:Subject:From:Date:From;
	b=qSsK/eIyqmWibGmv8VHIo7QEwx3p1Pq4tBmREcxVGPnjmvWf3kqxcodV1bSevAxTz
	 J6raJtPLgMTWlryxn7sIy0VXRpC5PzojKhaBfDcUoxcCn/jREOjDD5eUYJfQuruJri
	 vbEGJ/3UfcXTiyPoMxr8T3qkERJL3ybT3K+DAPdLd/Kj7ZGLXhBqXOUg4J/azyh2Jh
	 evspss23Q8ipgRAyQfc/SvkBiqvoMMxNTEZrwWZSlX6OUwLox8MCrQ/9wOrcR30qUO
	 QbkZ9xKRykwG8y8rlXWbNKkf5uPdobVUBexHKgK4jIX9f+iNTvuSIFxuQKP+eXKt/y
	 bkDSnTgx1beQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9149CCFC518
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 19:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176392451358.31664.13376392643313395658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 206dfe03c90c7ca7eb8fc028b609b7643a867cbb8a911cdc675c5a8cba902417
Date: Sun, 23 Nov 2025 19:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763924513
