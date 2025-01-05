Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3037343AA9
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736055954; cv=none; b=JpMkTFYESC/wtSvdBsZYHHFrSmEWUsfpVdq3z2ILdAmbaEgwtXYSQP3CmskU3Oz94je3gKboe/BqbSepX0w5q6jHef2yb9saT3OgU0HHaoUUJ2osFTR/RWm63etc9+wvFMB7dcg7sBs/DVz+td1TJXwRTRlD0/ywqxHkAw84b4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736055954; c=relaxed/simple;
	bh=fTfx9OO7tw9X4okYEEp9ka9XrhiolgqINoZQv2QkdC8=;
	h=To:Subject:From:Message-Id:Date; b=qA+TdIXSCKGqy+hLgPZqAbLWGEwih8IgPRpYWGWTsUkiJRjvzEJNnJiVLUuG/9JjGlS142Op/rC8AFyCEJJPeuNOWXbyaP5aLAwlcQFiE1tQBfwNJcIBgdNboJt8Je0Krag8jp55n2MzRz2KSV5nF5qrjTfWga6RO3RlMs7CvLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mA1l04U/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mA1l04U/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8F4C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736055953;
	bh=fTfx9OO7tw9X4okYEEp9ka9XrhiolgqINoZQv2QkdC8=;
	h=To:Subject:From:Date:From;
	b=mA1l04U/NnA9MS3hzfVD6feQ8o8WZWeTfP9XXayq6/7CMDr2g4qmIA93tiLPRpG+6
	 Brz+hFuecXJnYz/jD3lUodOiQ0SLjnrtq6eKKns9w2fDY2iofxvY/IYbkH0nfZGpXD
	 kXomezLfYWANvdDYjTnlpwmWi9gDLhQnfX/gV1gfYHPOPgkcDV4iuyu6Wj5WQ7yiE6
	 XDPP4X1egK+cd0bzq5epBQt4LHSme4X3To7T7z8efTzsMU9p2Rs+m6LDvWR7CqrtTE
	 /KKtnGObtR9Yyr2/VG6wSMZsR3xhXGA1mBWMJx/KqHxyBV688ArkbJL5erg4GJaYJN
	 xEgPMn+t1mEjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94941E77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173605595360.32645.6132566725769771024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd5b309a6aa08f3bf95fbb6dc1c2a0bc763d9319e4435482e54b4d61bb554a7b
Date: Sun, 05 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736055953
