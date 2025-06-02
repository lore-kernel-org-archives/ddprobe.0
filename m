Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B7CA1BC3F
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748842195; cv=none; b=g05pD7Yk5FPV04P78RUjZjsfQ6WnIzb0/S0heYfCJltDj57yB0YjH4NryDU2YJs7shDYmbejJ0W50THWqJwtrOEYi7pJKCYxc24gbbhcsg9alqCIP9kuhHwXxum+D25DLLaHxQq5IX2oYJ5Vgcbvhzzedk/1PuLgZWYYRG6R5OY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748842195; c=relaxed/simple;
	bh=2uD/gEiZrUSkXdxtRsRdJwcpQNBAvkMf35N/wpgeF1U=;
	h=To:Subject:From:Message-Id:Date; b=fLHuCnL8wfRfeKA8bV0h0BUyKBbF+2zRN23t4znKoQmXR0sZ+eAHCPI9+Ydrf4ZwuEUVT3sVSbs9Oetd/Oz3wegptg/BlE6Lm5PoFsSt45sAC7nq0baFhV6fOcH5Me9MI6I0vQBM3Cu+d0g1bLqZrMlmVaESwQlp0Cy0Il4+JR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxyfeU+V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxyfeU+V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB51AC4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748842193;
	bh=2uD/gEiZrUSkXdxtRsRdJwcpQNBAvkMf35N/wpgeF1U=;
	h=To:Subject:From:Date:From;
	b=gxyfeU+VIQcnt2UkmTUx/7V1nHrCaKITriQk4jKGSMmOEOB0ycG3np7PFC0fiEiDs
	 EM+4Xg29hmwPHM+wVM13oxeo1IY4mfDPLYeWTNH/8j5shJpxVxwbs0iIMlnFnMfgcC
	 uUYtUijzcjlIQ4tfE3Q4jiQuQB8COf1o54aE7/hqZ8xnBo/jd7p10Eqmj9VpJ+Ecmo
	 u+N8dCu5VDXF+An+L+DKMsUp+ZpHQnJRA6XcchPkDqyo7n7Fg0A6s7SpFoW49dRN6W
	 2tWpLCHnIjTrpukuqnt3Q9yyjfnNqfmd64URVf9cF4CzT3qYsgcrjOUJqNI1ticg4S
	 gXqkTZlZqQLPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 974FBC54FB3
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174884219361.23191.9333042272251605341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7d30b04a14bba76ba47c48b35f24ff04f4b992ad7e2a882d0ab346f7b4939a
Date: Mon, 02 Jun 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748842193
