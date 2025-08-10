Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 204281862
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754861394; cv=none; b=LLll5l+XgFlYFRnJiVI8OCY+E7zUKh8rcsFY1n/Aa/v6iwAceL3MN1OoCpHNQrkofk6SgXEoCVxCKHiVymb5cvtHfEEW9TH5Ylp/cKCfZr+xkJ3rD077imuIC1EQMcAxfo4xzI3zYZXOCAOzSutP5q2E7tN0embGazOms29/yR0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754861394; c=relaxed/simple;
	bh=1Nz2POgTbmdwk4a0RST9QrwAuiBYSDAhEn15fuffyGM=;
	h=To:Subject:From:Message-Id:Date; b=lyuSQbuIVqFmta3muf+53s/uRwocqXutZJJlmk9RxlrnYv5PVj4JYf/a9YyHH0t/87vuXZIIzMmWQtayIuh7MgqcOKDoJLQgLYa7gTmbg3ddYFSkKh8CV2/jSe8SZfuG4j1+jjBU2Ps6ynTtQsZkUC+uBQJrFUlJxKSvCfGkrfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dVcBq3/6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dVcBq3/6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3F3DC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754861393;
	bh=1Nz2POgTbmdwk4a0RST9QrwAuiBYSDAhEn15fuffyGM=;
	h=To:Subject:From:Date:From;
	b=dVcBq3/6y8T+63wU0d8dTc2kmrKh7gbj5HpLNhbe4gfN2IaQQAZ9VQamhwlkBZnwR
	 NFqa5SopMqZBUSVbRL0IfehI18I1TQQeHjf8yQTLlgI7mgY3VRScSVSVX5VOmF2twG
	 8/+9nAIQcyvHU6GfiBNrrDQpweUqFSItoEUsVopoNpYQlqrV9qzY3JNZUcqfcW/bwy
	 3A5aYNnDrDtFpUGyiDoBIaNiQBk5Yxovq02cN2mm330rRH/f/RpwCFpSxYrZu/joBi
	 4kzVzbYogTpGYXJOHtyA7wR61iI12h5FjrekafGgJxOeJ4skXBgzagUpYglgTLegdU
	 sxDLiQfF+5H0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8CC87FCF
	for <ddprobe@lists.linux.dev>; Sun, 10 Aug 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175486139357.5901.5681107490473285686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fd710e98ec0e6daad837f2618b8af556ced6cb704ce36ed1f1458492dbcfc30
Date: Sun, 10 Aug 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754861393
