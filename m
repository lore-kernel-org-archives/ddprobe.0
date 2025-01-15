Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA523597D
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736906754; cv=none; b=ZQ1dRtYitweER9fbTYpFKAeGv/gr90VOcunfjTu9PymAGUhhmPfVD4aHClwWsT/yvCrQQ052zlY0EM7U8fYdcdeX2RZTJk9nuAMXq8hPrufXluEIwFIguICjmuNSDWWdovdBpFVphzJsfU8qJ6Qk3zoodsxJaug17TwdMbRP6PQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736906754; c=relaxed/simple;
	bh=SYdygEuLGFwdIJ8ZWZdU5fAqHqXnMR3e3c06nEOAC+c=;
	h=To:Subject:From:Message-Id:Date; b=YRCjuzZ/SnBZxJP/YCksdg3KUXAgZn9WxVPQ46I+5w+KcJ86kTOBr4EVaLfnAZRXRRp5ZLLSiWX8ZvPU24BG1OZqmpMjfTGUKA6QlICM+LC4GjHbMLtQEr7dbOj/GNWKvqUcyMeEJS9N98hT0X4kE4nMJXVWic/xjLJ9HK+kWR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mXpYNuAG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mXpYNuAG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD367C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736906753;
	bh=SYdygEuLGFwdIJ8ZWZdU5fAqHqXnMR3e3c06nEOAC+c=;
	h=To:Subject:From:Date:From;
	b=mXpYNuAGmZneRdE5yKeyzfeL/1D7gUCU0/8nUuIfXu6oAVg7QbzBs4JcAqn4eKP1e
	 x6m5FJuGi8Lpytt7TE0+97SEqxw9iOuQenF+aH9QXFq8jD2nRC7ce3KsgGd/Tv43Zs
	 xGuhzF+x3H+puzFisY+PBfo07vL36GtCMJvHmMKW3k8VvH494TgSWMh1NzT0OX1Tv0
	 tyoeB9KSM0CYpMsErwwRVOCndRXjr6v/fZoxCmVedZIwSzmZ7KTNgCj1UjNv54AD14
	 WcWyu/P9BLNs33gt6/tGnOk0YrQ5jqnHYtPgr1q3XZlSspJvUliH+9cgZKflqNwBxN
	 T8ACwjCyVJf+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95399E77188
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173690675359.21428.9929128946609238518.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e2376454b975c2731a87ea8ab326baac7d68da9a0db67b5902413b9e079c59f
Date: Wed, 15 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736906753
