Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA1AE396B71
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772030693; cv=none; b=nqjfxN+ZG+SN0WRNgjxZ81WT6htcjzHcxfGcaCPPkDwEOBnpXHW62gtI70twwP84haewMRRXHh/3WJtTPCkqkearLBE91F9+5eary1DkNrLeeWrj8S9xpsvPxH3WX7BFHjrLl/3c426c8HwFCQIv470v93rcEFyugpgu+UtU2p4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772030693; c=relaxed/simple;
	bh=CXXBgrz7GYCewlT3rk/7YGz6pKblgM6M4dbhgfYG8Y0=;
	h=To:Subject:From:Message-Id:Date; b=LzsVEZhMCiA3C7COptpyEB3RniczkhxJksf6AC6R0ILUWZpD/4w24B3LTJZ8YabHJxf6AVMQETCVSRQII5EvagLD84bNjAybFOdlwhhsKKoRaJVxZVbjTbg/n7zUxetZ/9MffP2PaPXSexS/PFFjiWSxdAUhU/buZGCRW9QevEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b2VK6ynS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b2VK6ynS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24B3C116D0
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772030693;
	bh=CXXBgrz7GYCewlT3rk/7YGz6pKblgM6M4dbhgfYG8Y0=;
	h=To:Subject:From:Date:From;
	b=b2VK6ynSLf6SJwWH6xN67ig2Wa+t38/hzGRwsWxKHY5Ad6yph6afOIEAAbD31mJZN
	 AthKMqf7iv2KG5IwHe8uwE8IcppDQg6vm7+wwKLQIE1YaDauq3MKITlmUTPFYEHvyR
	 DTmBVjZRbqHCZe75GH6XpZH8CC3UzI7/zx46Rl6Zr3AhG3OhCQSuM2Sdbrk0ef3Hvk
	 7zwus0YpNHgrzT55ccN6pwBr3svn86d9grRUOgO7A3//uhVWyt/gQzPg6r8lyoaIUz
	 UoQVXTfbqjsitw0D53xXeTEcj4jKJsl/iCkj1wEL/KMKwXKtrD058uVi/PCToeO0NX
	 cJWdK1uCPKINA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 908BDFD3762
	for <ddprobe@lists.linux.dev>; Wed, 25 Feb 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177203069358.1849.890850234528206707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55013ec5beca902d1edcd7db7c032eaa2dc18439da4b901a30425ac057abd766
Date: Wed, 25 Feb 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772030693
