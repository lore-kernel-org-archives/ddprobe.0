Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C702E57B
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712557697; cv=none; b=uuCnWRTXKaLrnsqcK6ZTGfra+pXbSNMJUSUudwOcpI6Gxq47lRyszbg45jbzYM2DbKu8Fk1CVYLu5gIq++0s7B3cBDxUa0u4ALfUY5I4c88tdbLjsgWjW031PkBmoqYDVcxf8LT0sA7tsQ429Z9yKUFOnTJHbhKTmFtka1Na11I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712557697; c=relaxed/simple;
	bh=DHLtH3OsW6oUya7nqXaWI9pMfZ5rxLOki4gJASKoI+E=;
	h=To:Subject:From:Message-Id:Date; b=lySb40jpJvYQeOwh3mk5h1rOvjJlwRL+83jXy75JPRx0eogCm+lsCK6gqeX4g4Dqw8vN5DmBHYGLxcv92MUXV7+Vfk+uIeM7b4jnGegup4msK7VyCRKtOJM4vhK7GHSn/gU6R1DryoNVo3t0FKBtUO230qoQkSrbNDBy7b6LX80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uswu3WmY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uswu3WmY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8AF40C433C7
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712557696;
	bh=DHLtH3OsW6oUya7nqXaWI9pMfZ5rxLOki4gJASKoI+E=;
	h=To:Subject:From:Date:From;
	b=uswu3WmYVIbU9T8/x0NYjR3GeQQlXIZlYv5bEvAo+K7/ZJ87uZvXvBe2Kwwv0MzDS
	 I0FyDQCW/nBDIb5LJVAjurh3LJnV8WwuKZFWIUoKUveEQQXjuuvD6Hs81gaRwUWwly
	 gLdsZqks98VAUYUIEGAPrwMhTTOX2pagYROTsrdQohRo2s1JnAMVBlBCYuIHX0ng8L
	 RtMnyYliok0oX5yzN2N+vJBk+0vUhtb8ZieOZ6XHJ3FUQk2DcgLpqV+6BdyA1Wx51z
	 5mHfA2GS2Ijt7ZX1iIR8kTZxXQhqnC+2AsN3s4wh9ePC78/A/Wt+PIxYLTVbMlYouN
	 6PtfvNmODxSdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73739C67861
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171255769643.2730.18118453762136303998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae99abb0f9717b7902dca4b91f87034de2f828bc608de9d5c6a136355c3edf7
Date: Mon, 08 Apr 2024 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712557696
