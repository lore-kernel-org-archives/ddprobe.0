Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7042919D890
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:07:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717657643; cv=none; b=ik2cwxS8GoUHsUhhY9rxoIKHS2ObQkpTF87z1jtkEDWWmjRT7Fydkv7TkYlRZqn+NKdK8QaH1ANLHK3JFfGmncRSnp65OCygVxAiEgR2UmZ5DwjaMUQX5TQkdvUhKhJG7pwQJwYTf/p7Gf/12vXHdfRLvjpS3D4iYK8ppZohgeM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717657643; c=relaxed/simple;
	bh=kHHqf9cp0jzXXDD67WTzHFw+lquEiOcMRSdIV2d9XV0=;
	h=To:Subject:From:Message-Id:Date; b=n+2MYip58sk6qeVA0Q0zFha4fYjz4GX3g+vRFiW/VSTaNl5dpfGjyEUuVWChDa9HDE2MoXhwgszFZFP15A/tCMcD2mHwY2nFVDDe9z5z/ib5YBRt4rjjLMf8R9OnUaOPe4h4NDbXOK+vcQIBlvHn9gODk2Q4NEMxmNtiY4ah47c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cqOmpW/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cqOmpW/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB12DC4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:07:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717657642;
	bh=kHHqf9cp0jzXXDD67WTzHFw+lquEiOcMRSdIV2d9XV0=;
	h=To:Subject:From:Date:From;
	b=cqOmpW/eZaKM/0Spc4kOl0f6vkUSh1xFUK8tFQe3+yJqDeF7NFqY3z1V9cJpNOr/E
	 kqZlEsnL4VOCMex67d7Km1mjBY0EObXxGcLNHUh80v32ww4q1kG4lw8bB1N7f7nPx9
	 L2mkZLhvnIEuUfVrq83s2DoU5GecWf93O0sycLvO0oE43Ci2yncNBnaDmAPl3CxaEb
	 GH3rUU7+5cwts0GRDrW2hM1MjEarMaC03Knwe8avcmWZnC8gloR6Cx3ejIa4oke4be
	 DbmYxJp6f3rTbDBsEHt5XjeuXJG1RXn3rz3PQRIl2GxDFiK+Nn4XtLSyBcsklPA6dK
	 XUxHMi0Wq/4cA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C909DC25B75
	for <ddprobe@lists.linux.dev>; Thu,  6 Jun 2024 07:07:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171765764280.10407.12465581435762983648.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4eb79133f1f113ebce5366afa74c1d9a5f52f817d59b6a2783f464c7d30603bc
Date: Thu, 06 Jun 2024 07:07:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717657642
