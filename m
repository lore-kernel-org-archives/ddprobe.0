Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F5593D16E1
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773681294; cv=none; b=hVjkE7SICgkllLRqCO5gD83B/dj4e307Vgx5YbjohHrXS8kKSjV5jL4PhJmXWIVq8gCIxT3cAtjiE48rmgWXOTW+WB/S4LDZfdf3+MZSDfnc510P4KBcW0EsAMT088iIwqoNxLLGAi3fZc6FDzGLQ5ZfLuy2UvyF3vIIQhrMkvo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773681294; c=relaxed/simple;
	bh=rUm8eFVtaBCu7rGKjDnoe5R2OG6/8HUWqAWxTp9x6Hk=;
	h=To:Subject:From:Message-Id:Date; b=VXMajAfgqYUtiK5vt5F0mlBrLoWqpHjf5mlcJlmiZuONDCzlmZTcTZJ43Fids8Pe388ol5WYYZpr+Tb1TJcC/vUKDrATAMco7PWqqUemxEjo0NppqxUYqjaRGHBMwSknJvDw0vF/qvxlpHdi4pev8UnfIp5OvM17ie2TcrAuHHc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AVC5M+4U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AVC5M+4U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15CCC2BCB2
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773681293;
	bh=rUm8eFVtaBCu7rGKjDnoe5R2OG6/8HUWqAWxTp9x6Hk=;
	h=To:Subject:From:Date:From;
	b=AVC5M+4Ug1NP7CT8LpfysAEOjjn/YO1bRmp8qBeGqAUP28NWv86a0e6X6o7frl6Yc
	 urhww1m2OhmS7QqwrYo8NgUYYQY3okJ4tRGIF8r6ebhPEyW7Y5PIJOKDv24tjaX/P1
	 Meq6hLTumLqvtylaM0cgmfCD2rCEJwXj7wOpd1SXYKwqpq6s0ug4UfkRQOwdsSmEeG
	 Z7Z/9GyiN7rozWrngyRLUE3k/2ZXzffuwDlSgKkZkTnJdViV8tvwTtDtR4TDCq1F5O
	 X7sM1K3LdLEvYkMTiy6Zc9OB8Rnrfmjr6wqAQujAUl5Zur6+E8DZTPCdLB2aoXyCMJ
	 A2mvphnOiaiqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92715F53D7E
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 17:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368129359.13436.14211268537072145558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71aebea9c13d36d4732052530d6008f9a525b1d5fbcf6a5aa27783ba99e1b1af
Date: Mon, 16 Mar 2026 17:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773681293
