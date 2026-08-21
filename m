Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF141A262D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787274034; cv=none; b=GIFWkODUykdsfJ6f6PrDK9Le7TvfJDSMOiXX0OMbLGGb13eMKtn/9RudCYO2BplR9+7OwqBZ8F/Eo4y/k5Jor0spy47Ehp/iD1DE+4LIYYQqTjW5vwBMV3d+Xq4cPnh2lPJUm/PYBA903hN1LidjAH9TrVwRGrWOT7Bwqu6VdFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787274034; c=relaxed/simple;
	bh=UajwAcjChs8fZpZnhHv2oxTfWZgKFmuYN+wcYkd6w6s=;
	h=To:Subject:From:Message-Id:Date; b=FesGSgwqWY/JAFn6gl/Nv32HZTpUj0nIaLDmIMm3Or0AWYytzHOr6txGppA/vGHBdcBEI8KGjOpXvoNy7rgC1sNlDvRDbyHknUGjVtEt/qIU2iUY9iCiB/vxPs5NDV5mbysWB2z9cjlVF6dkRGzcxKqJu5lO5OkqJaRUL6Dx1Yg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UR3IwjsF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UR3IwjsF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8AD3C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787274033;
	bh=UajwAcjChs8fZpZnhHv2oxTfWZgKFmuYN+wcYkd6w6s=;
	h=To:Subject:From:Date:From;
	b=UR3IwjsFqZblvjE6g8RUuSOmnKcZD9q6I2b2x2xDK/Mf5w/mNh6/o/8GOKZNIUZ9e
	 2HbfBaaAddRRNfFC3Y6sRNem3if2MgUulhUGWUE7YXglbWnyfe5iVRieQSqcxITtHm
	 1nWleiDNFPl/3cVikjoAILc0CZTu8O0xM4ngpFZkr73ACvjSWpgQx2X3Yl6FIMc9cr
	 AAB30y0EUqgKrFBreD7RKcVZkuN9f31r6b8ZZY+5EOipAGN93Q99u+UpbSPv3bxKZy
	 zIepwiOHhmN662RaS3aSb8QdxJGaDumVwOZcYpOFS14ZGTlUjyovRjgTfyNxadjZkU
	 8ngxMqthpfDUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B23BEC5DF87
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 01:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178727403369.23267.2972731093832291045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cad9682313be7fa65b869b811fea7d5641fef84c8ead6af8f811de8a104a64ba
Date: Fri, 21 Aug 2026 01:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787274033
