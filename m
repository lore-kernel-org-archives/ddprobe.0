Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9581EA7EC
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762820994; cv=none; b=dqTG70A2VhVe6axsCafwCyh3CgZeUh95wnU5wArhVNG1dnQzFbbLzVUx2GNg60kX/dwcxiqqY4IqQRVwqXKuMTQP6gMLDn8ogJ/mtlTCqbfor+Q/3Dss8LwtYE871XX7/itiUb+pqixkN0mADE4cW4hOE3WQyVa2B/Y9QUYkgbw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762820994; c=relaxed/simple;
	bh=aHnn65Lp6oc130aI25tU0TNpm/ljjx3mbR15zh661ts=;
	h=To:Subject:From:Message-Id:Date; b=rTF2dPpUJ08cLCo6C+u11g9qq+kfxFOJ2ZzHO3I5uSCRP8FVUVeUemVXzM892rHntr+jplruwCiv0BTRE6XYWNpykH6KhPGXAmkWofPt3at2rdDEq1WWeC/3C2/sAtUmbYiKsX8XYOAeNW18dit1KxzsDqRVxN+mtG+5JlsVD88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyFlmJGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyFlmJGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0847C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762820993;
	bh=aHnn65Lp6oc130aI25tU0TNpm/ljjx3mbR15zh661ts=;
	h=To:Subject:From:Date:From;
	b=OyFlmJGCUVjP+TXQLfYbnjHjmxMqprcByFZ9kagTX/MRUhJ1J8r++M6g6ReYnZWHu
	 FqrORi9xPewGfU1XSa2xruXxwI6A2bsiI44FP3J4su/k9Q5KR/59sXH0fzpizVRxsd
	 nBEE/4zzxlUSr2UNbklgHCIAPrjgi9oQtutaiSYMAwc6r7KaeVo6U1FghKS13XvnAk
	 qbFsZqgTSI9tXZEyB7okL/uj7+CRHESpW+VGQ26WQHuTpLULFfm12alwCQb3oB5AoM
	 Ukk1wAL73GMKdJqsLyfF+L+sXmVtqRVnf6+DpJw9aMjPbLxE7sQlrtZS1SkjkHsxG6
	 PSMGl3NLsAW3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92113CCFA13
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282099357.13285.8577342417367028464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a723511955b841c2c2fad636d949b6ce22bb97591fe43c3504319a34b69e1f06
Date: Tue, 11 Nov 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762820993
