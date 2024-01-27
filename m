Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21C111B271
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706391497; cv=none; b=V2bqrSsNWHmAKpcN/jyiCyovwS7RJMgd9wQmfhXq9Rur8thzK56Zxt0vlLu7I8X+qDnnA8TEn4rSJ/UbIN5BXIjsm5bB3oAH1U7I1V0NJ0qrL2ybd4U24sHSqMfon57ujQZVRlMbs19AAsD1+YDroVufQaGAN4ANq2QE/YGg6Aw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706391497; c=relaxed/simple;
	bh=eZbfvZnJ3x7i/h3CMcAl/JNdwu0KqrvzfAE9rhLlc2s=;
	h=To:Subject:From:Message-Id:Date; b=OVuVgxCicTNa716NUxDYRdvGjUDD9cHrWFgfQZnyMjzJlYCZQ7pxioz5x7wsq0mHjRnWZERAvOwi37mY7rfJv97VvLPCfuLkcJZuE4d7pbFl6LZo99LNZwdxUbWTHk543GZKcsBhP88KQLJ1DsYGn5LJfTJTDtZodJpDJbSESoY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s/GmAoFY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s/GmAoFY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 818ADC433F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706391496;
	bh=eZbfvZnJ3x7i/h3CMcAl/JNdwu0KqrvzfAE9rhLlc2s=;
	h=To:Subject:From:Date:From;
	b=s/GmAoFYF1QWWdQ0onzIxUUxEHNHgyvPzu61tilfdHseQRKwWMsRB/Wa9qaxsCcit
	 65dVOillfdRJtr3psqLAvbHBcVFR1W8fPBIXl8qgDlUOR7ZbVpWAfrQpyF7SR15NO4
	 WdJe5hKAxCCGriOCOLG9MKbo1QVr0P5ahMJhbVCJwkBNSQky+QAYGZUFAJ4XaK/0hK
	 8xYfhq4D7V1DL3bMGe5JBe5y2xo6r55iJ6mu9GLmM2ok44ysBsomjU+M4HTRF6I6HI
	 yDrFRrAY0fgZbhHKwY9ihTBzM4eM7lqN0iJINoZoNzn7JVRwXI9d/HjjapUxHzJkGc
	 X9XXPqENcOnVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67A12C46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 21:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170639149639.17766.3980775313943603538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032515138a813dbc8eb8cb6946d332e32e26cb23e9d48d8cf59d096106cde798
Date: Sat, 27 Jan 2024 21:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706391496
