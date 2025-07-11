Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD19155389
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752270594; cv=none; b=o2aOUIMHLMrnpWdfoQOccKVewcMlaw6n/QqL5VIxzOfvCHHMn7pbFecWvzKPYQEZT76BCsFOGlsbGjaJTByo++SWTS2iJPQlJ9aVgBP82GyFr6dSsX4N75qJydPDXi4VMVXub0H+8Cf3bEa1OP+G4O30zD5qfsAzxhxrCkdHtw8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752270594; c=relaxed/simple;
	bh=2WNfJnAJ7wsFSyuLBD1f8R/GN80mo8RHdSKwRMRXkJ0=;
	h=To:Subject:From:Message-Id:Date; b=dJ6Z2KZLllHTNS3Wdk5ZPkHah5dPsREzujGPAqtSD1s6bwNgsCsrwQUxisz9oQ7ZqAwaEuJ9BFmH4D1ZveMlFj+M1ciHz3Kb0C1ko9eEW1opl+dDDcZITeDuE7wdgbyFecp+bArPZMeLUjnWgTbD71YR/oBt0JWl6M47R7mP9BU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CP9X0dQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CP9X0dQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DA7C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752270593;
	bh=2WNfJnAJ7wsFSyuLBD1f8R/GN80mo8RHdSKwRMRXkJ0=;
	h=To:Subject:From:Date:From;
	b=CP9X0dQeQwmpADTuKOcgOhB797m6RjUAsnxOgHdUXlmXU9wjDPQgHUVpSMY9FTSPZ
	 mjme0bhLKfwtIbbbyRRTmg9EjfbHhZfKIaaSzWiWLqXZx3tULpRiZCKcannhREkrAc
	 nHS+xbD1ayd9NKN/NJkr5rPB6jJcncI5zVQEoqc29Eh5xpICkZ1I70HZngTKd0n3MO
	 TJcaUpKOLUk6+oS9gZ9oqrYp6I4lAl/9StifFo8Q0xC5o3fM3LBFjls+fHqdXfs7es
	 4B1W3RpbhH9IyfMaqRl2VU+0eVljo4NHhgH7dIm9ENBdg9w5UldoH7GNrkFbZlqqaF
	 xaZHmuH3mHaoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90866C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227059358.8732.12229935021034104306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5053173d5a9962d8a401f991880dde581118d4fd75e3b607a993dd1d1bdd3f66
Date: Fri, 11 Jul 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752270593
