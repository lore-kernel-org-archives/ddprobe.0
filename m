Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0592E2EF9
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783155514; cv=none; b=FiVsM6tp3Ll/GDJuzCVJiLqzx5p0ewBA32G9f/NAjkzr4K6JLSjhcEvWYtqqTzqd3z2sftf+LlShreGRSRggbUI5HUDw6xLU6Mn7Rb3msGZE5jauqBZ1Asgc0LBwt517A3np1j86AfHgvEnAPyjtvdpOfmLtCQr2TkGug3G6exQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783155514; c=relaxed/simple;
	bh=yEA17ZrpLYmszH8x+0jgVaKSsmCYHL+hPiwIlxn7Jqg=;
	h=To:Subject:From:Message-Id:Date; b=aCzIr3e6QGsqMdDv2IIStVhkL2p5eLjEYH2oppMUwYlznR+/3BrglATk041fg/rEfuqm6JXv/r7BEE4o9/LvrckWZl9H3Pgz7cx3v5s4WDdcvtgRxWQZpj1foOwkWQVUwSIF68rd6UZj+agj9BGCcO73qgDZWvCytaVsrMvyMuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0lH5CGJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0lH5CGJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA74CC19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783155513;
	bh=yEA17ZrpLYmszH8x+0jgVaKSsmCYHL+hPiwIlxn7Jqg=;
	h=To:Subject:From:Date:From;
	b=c0lH5CGJ6yxNYbl5R8lSe10EVkXQ+tFG4wmVay5e5OvF3h9bUexWaY0dTJ2+ym+CZ
	 SiYzTUxZ+4kFiUjIUCTzzXjbyFdT0+ZxeyK5LGnNm1nBZh4qLBfGCrke3rIT4IeWtM
	 sUTjEe+v8giKYvWyGVponZ899M2nf5kjrAC7mepriLMkCz9t+69Rgxd98wabDqYOu6
	 Kv5flUP9gMGX9OqVzI3OSs9BPU/4bQ2UXnIwGJkt8wtD7wV0ZtKTRj3iaU0MwDyLDA
	 Fsnsjlk1EZGK5AYSMftrkcECzTW9WjarxDlIzbFNWfV1xpJYg5YCJAzN7v9xesZFFd
	 oQCtymDCdzj+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87F2C43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315551368.23434.17784286419857351549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90938bd3a60347461a9730baabdb5dd20dcc1d6e99989a5c9d4d5c5250a11d6d
Date: Sat, 04 Jul 2026 08:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783155513
