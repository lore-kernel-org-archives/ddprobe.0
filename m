Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6AEB553E0B
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782035194; cv=none; b=FRa3vVucN2C0MT+qdD1yZdRIMJyh0GSJNqioNgCh3/KugT+UBZhcB3imklEK4EMWv/ZnZ72AJqHH04JUF3ceFA01tgNdffzx+QLlH2N1BfIAPfo/GHgV1Vr29ZZOsjP0zsITqT6QYlDQP3WOnTvh8BDBKVsBMO7pJhprvl39Yj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782035194; c=relaxed/simple;
	bh=4UqjrMBeFG9haEUPO5i7oaM4vChorkfua0QgTTyi8Tg=;
	h=To:Subject:From:Message-Id:Date; b=I0iQeR/DSIv3A/MKZFVPt872yz1ZME2M6kUnFSOU32tOSjDJky2Etdd9lQi0cOhOSiSYrJ1T/X22FnlY2o8L4juFOGH8PzoGuxHwWYDjgm6q9k3Pvux2NZTTHRtXwb3xCI9qW9ZRUG1xb6OB+yZn5Kaj6ZEHiGMdGHm+LXEmtPs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r/YPczch; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r/YPczch"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB367C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782035194;
	bh=4UqjrMBeFG9haEUPO5i7oaM4vChorkfua0QgTTyi8Tg=;
	h=To:Subject:From:Date:From;
	b=r/YPczch+J+WGaPOF7t7n2pw4IaU2uHjUCKYDWYvrW0ypABMjQrixFUm6xTPRhQ8N
	 akhCR7E0+uFHaXZ+HjwuAB7Qj61x7PMXjia5Ex3ueiCR5ofNikf4EaQxcoDMfzAarw
	 IXDJZod17a0CrBVQV5mSzTxE3Gb7BojoLM1pdOCbiDd/ranOJ1ToNcXrH5wA/WWwtO
	 HUkyRE16Vw+gkp4YSEl0y2M85eT2Cb/CFo+MBoLXU25CZToMBDUyopg4wqtHfN3qLv
	 0yR8X3auJqPNFZ8mfIMnMpVxRWHujbq5oy2XI5bSTgUJbngBHNVGso2h1/CRmotlH8
	 ndv3u3j5WXgUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C34ABCDB466
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 09:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178203519374.4108.11970973795726281377.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e99ddd1de4d4e93022d291ecb5d939c9438ba532a3b4ac125273a660bd17016
Date: Sun, 21 Jun 2026 09:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782035193
