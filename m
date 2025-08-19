Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE2C2BE64C
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755619194; cv=none; b=HLw+QNG9apg+2pFPvaR5CLMAIIeyT1wSQie80VgEoW1S3htmUkfH04XRRi0l9ftDWCte7NNKUAncfAQ2C49fRalnmjfJV3Gnu7lus5q8ocn3TJysIeeaCz601lC+JivYO4JOncPvCOWTCNa2A/BpIo2wxIbza3J2qWj5C8L6SNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755619194; c=relaxed/simple;
	bh=+izrLvER0EffoSQ+7Mt05GErFPd3kSb/70z+7fszwxg=;
	h=To:Subject:From:Message-Id:Date; b=jM25sGCE7V9XjduESnWVSLT0dbXQqVxObVqYZbDZ+ITGE5OtEr7g4xfNJ7qSH9EXIGqQjWbeiV7nD6vN0lHUP8RCyLuqCHgYtATtsvTYKHoPYd5sFgMLk/0CT9mq2FxCVGemDwCpMLP5pdwQBm/z8xzmSr0AOLnHUSr0iVr4wM4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jTGbOOjp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jTGbOOjp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0530C113D0
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755619193;
	bh=+izrLvER0EffoSQ+7Mt05GErFPd3kSb/70z+7fszwxg=;
	h=To:Subject:From:Date:From;
	b=jTGbOOjpbe18pidYjuJM3F9ihFg+DhsjgYfjS1gh1lBgSsNCAW6OKxsVyZdOrFNkk
	 0/ws5oFGVar24LvD+VfoUZfOnj+nqVsOvPGU3q4craOmKPs9+jTNthmD7trdFzWv2+
	 gT90ITBAltMg7cXw82njWaUz24h663C1Q3NM8Ym6Waypvxwi251JnX5TJrfzM6UHW/
	 6txpisq8gvH+KwYNA0EbIMqCZGLqHaSKx2j+zxjD5wKq2X9yKSM8Q8eJGmKFN7uREt
	 brW5c8W+sSCJw1juIng6X2wPd+i72jgi/BSM8Q6DtGbBaGbBIxD1ecv2P9ldV5FZse
	 B3AfQ2cr6boGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAD1CA0EEB
	for <ddprobe@lists.linux.dev>; Tue, 19 Aug 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175561919358.12625.2308587333658996685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a575de49c8dbe15fa5c5b3cc16d784a98f069121c05f3260f6ed4d62b574ca
Date: Tue, 19 Aug 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755619193
