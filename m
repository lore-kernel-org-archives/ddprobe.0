Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE3B75616D2
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791998435; cv=none; b=EOy7xaNjSNpcJQy8WO/fQfJrZa+oDZRdeaBUTC2vD3QbUQLiXWzhpiypN06zzL1KrV5CMMqp1HBFZE5xnHx327UQfOlIj26n/uCO5cHsbEQk5q7Wnkeg6tf7ulncvP6EbWXwOxFikXkKLy6G0kr28I/pKWQk/daLxxcIsrMrOro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791998435; c=relaxed/simple;
	bh=1fzAAkQFJiadufcLi8Q5q/Q6QfZTko4NI3aSAUKYo7E=;
	h=To:Subject:From:Message-Id:Date; b=JsEpnnPY/dL9X1scAArlGQkvKtJqa8ujjhRFFX934Y7t1oYpLVlQYZraYF8NjYXn1JI2NMFlkKmREATJENuP5Pf68rWLw9DmAo0dDP0YGgS94ngTNarJrJFegf3oW/MVSvRe7K03QZKp7T3Izmz8BVCV5I9RwGgP4xfha/DXbgQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LmR1kfkz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LmR1kfkz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F2456C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791998434;
	bh=1fzAAkQFJiadufcLi8Q5q/Q6QfZTko4NI3aSAUKYo7E=;
	h=To:Subject:From:Date:From;
	b=LmR1kfkzL/To4KSZdsxafYfF2C3+vaPrCJHmp4JNSqXpOglAhmeqIYn4dPH5fIeT0
	 vwiHZM1p6Nt6R+I6pROLQ/58tbOvQNoBhcta3Qmkg/2pPEt2E5LeeMugLXXcWQu8Oq
	 LxpeR/768oZu2UN/YtH3yaLe5gskROknwKwg8duAEhE3RGT56jzDAagT1le0y/2SPE
	 oAXOjbfZoUHKHz46quPOaL82HhLrHOJNlLJGsrPWDRYW4xgtE7L1Ww05QPoKOTOk2M
	 pgihJTdbDTykxwgSYGlAHrAG6ZpHJEfPaHV05NYzN19L5ae51Q+8bN2TpvuGz6dsEF
	 yqozOfvIuKIkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD93CC3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179199843376.5582.4240180077948023415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b867873ba2608d862ef77ee5f969ff7898ef7e05d0d9c870ff9058294e9cb4
Date: Wed, 14 Oct 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791998433
