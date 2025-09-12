Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F82A2C11DD
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757711394; cv=none; b=nc36awH66u46188fW6zP6kVV+zjyVlvS6b2YLz3feTzHZx/MSjoTD/estPKEerPiGZImeUhyO94+o0QILBZVHW6o6nEiBMimZ5ilv0wNvev6X3T6fnXYzIHE/YcaWoQEY4bwmGVto9KzfqDGKBCPQfUKvb1Z/EbSOU67qwa29oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757711394; c=relaxed/simple;
	bh=eKkMOKRj3Kzt0sUxIbbb5DgXgK0YZuEFfSR26D8iKDE=;
	h=To:Subject:From:Message-Id:Date; b=Ogctw0Fn8kav+jH9AgYd9y6qHTCJ9t4A+71hKyi0v+Z3ctJARaVXUQ7KACBfPxVAoVVqeTpEL5aRvppNHma1tFD3T4GOeVg5mATKyh4fx5nsobs3Ucy1PBd2TuLLAbQBpBz1q4nvFn76Sx9tyM8p1SFTYKLQc62/U/e7zAcABy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJWrhQ4o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJWrhQ4o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3BDEC4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757711393;
	bh=eKkMOKRj3Kzt0sUxIbbb5DgXgK0YZuEFfSR26D8iKDE=;
	h=To:Subject:From:Date:From;
	b=CJWrhQ4oRZySR9QNeJUODIVZhc7syYHyrN61KhdpfYvqj6mCbPOoi8nIZB+qZ+CNe
	 MfjUaTnLSIDoEEZ9etEa94H8fdD7AqXX/EddYK637PHGsux5fRuV9Ae4V4sau0Ictp
	 zSzSVFtMp7Kit6sFk6UUgILsOlX7EUJGzAbYIopfsisFanBTUoNo0AFq4STJyUeTBW
	 mGltre3rUSnFV6fBrq3SdyZCEtjpSNyq6PxvDRyQU3kWegOuwzHYFFnYBeqik/y+XH
	 8Nqwc8iBlhqTpfNW0K9O9cMxGke5muU+B4JsCSt4fRLqwvdgcvp9w3WqvV4CNjCSyj
	 xAgcxXPlaW47A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90DE7CAC582
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175771139358.19460.16202477151975725444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3cb27f220eac50b9a243cd7968e9f78d66c172e4e6ccf89e5288c70eef872c8
Date: Fri, 12 Sep 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757711393
