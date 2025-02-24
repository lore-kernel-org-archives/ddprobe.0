Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36FBF221F08
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740399534; cv=none; b=T9AY7Sp3zZ3BuvoSqahhk86k+iLYvDhKnCaPoV+iz4TZ+trIhJohioSEG2OPCXzUh5avC1GyCSz4CjPieTQBXneBOdCYn0fY9PbN5YWhGgzH31F/FYk15m3y3/JJldE6OUoUVIVgPz3waEu0YqP9zaPCpwp55IpUesyCxLlWTpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740399534; c=relaxed/simple;
	bh=W2EeDA7+kfNzaoydZtvCm4nDTsMkbH8mIWWWc8vhYck=;
	h=To:Subject:From:Message-Id:Date; b=S65iVNSVGuAp346VZMW9biXcaI/zFJtp+Iggz4awIJpU2Nk2PghxnvTgM+cBfRg60tkpsLrjdjRdM1+70/EeWpchIaeluY5T564tAepaSb8b8j6Qhx0Efu/QUwgRnKLCOHbuSm9sZwjsiFADYCCxkPC8Bqq0WIEDx241tCFXp8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ayi49vMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ayi49vMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A217AC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740399533;
	bh=W2EeDA7+kfNzaoydZtvCm4nDTsMkbH8mIWWWc8vhYck=;
	h=To:Subject:From:Date:From;
	b=Ayi49vMPEsC4b/Ae0VrWOj62MGNYKoTfxtED519E71Rt1dhcNKY09FukvXn6G40ZV
	 hRTewqA9jGc9klueta6f+r+8UIKc4/e+OsofMPSkMBkd+K8D8QByT6qCLeS7dEfr5o
	 pBzn9Z9ZKTdeCpQspR/7+IjxcK2lTFVjiH4NKy2DpX3ghDCg41DFDRi67ejNzqqvZ3
	 VEy9mzSVOnyj/lC30Bo9fUQUNn4Z49XT155t8q3bA15hm97gFx3GSHHF5TxVtPTH/5
	 PuLCihNzyk8stlG/6PDHr2YZ78A59BdEYMgTOCFeM5HpMImbnKnugq0+vwo/a69vfu
	 J8KWOXVaEApAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9105AC021A6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174039953357.3785.17509343850156668407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e351fcec4d52be1bca7e1eb3968bb491c069b8e6657127bcd617a0969a475b61
Date: Mon, 24 Feb 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740399533
