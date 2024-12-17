Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A1A73D69
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734406554; cv=none; b=LMe9iwQ81EeatmGpFZf8Rm/kzY+WWsa/2rXqwyek9Tp/KwKNivDiaQL4gCa8Mf42kbp2ijE05tqo8d+T6Jaym4h+fXxIhtypg3t4syYUv++NlPyaY1+HZPkK1aQof7m2/cHUOgOjLYUK4P9/8ctO0vPuiK+kY/7RaR6zGqEZe18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734406554; c=relaxed/simple;
	bh=0TPL7aMNTXT/qMsIqLx5puS+mSwo4W1fHdS80IvMyN0=;
	h=To:Subject:From:Message-Id:Date; b=AcmbdvNm+bG1syd6JO6zmYagBn0Z1Z8+CuckTQwTR3HAIqUDQrNmJNqJU7OgC212cnXMXQS92C9LNu1RxOQrqzMuTbrGwJu7OcnQoSGqhBHGMH7XU5hj7F1TEBLCQu8Yis+1Y2MDRocQX6ithRmyhc5IKKvmGKN1i1tpkznBdpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DqbL22XL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DqbL22XL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9C53C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734406553;
	bh=0TPL7aMNTXT/qMsIqLx5puS+mSwo4W1fHdS80IvMyN0=;
	h=To:Subject:From:Date:From;
	b=DqbL22XLeduPTJ3HT5zdSen0GhsmkjfKgKS2ScD3XbiAuvpFwxASIFzwoIacCWGwJ
	 O4G8WcBok4gsoiyQvRWUqomH2SO3yemjUYXxEatV/XLo6CG5RV8wT7Wz6sX81jWrho
	 DPhY/xw27zAT64NXCWqaat1613O2a4kgd8PvCdyaDuglN9FwDRuufpTPMrVwiLgA82
	 I1cyKxXB5svlZnaM4L3s9cFdkvD+W0pztOjcjx+TJ0faRpqdEl+yWFziwg8RaV0CkR
	 Znify5u7rNj5Z0OzTe8csyTuMVGudthmbbrdKHLtClDjfGtZs+ibmav1FN0HwGPIl7
	 y1X+c2ib2z4Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2087E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173440655362.28197.18241568175996312543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8983e76d577c8c00db6be1e0730d99775b4a8db26a835d12bbba131af629cee6
Date: Tue, 17 Dec 2024 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734406553
