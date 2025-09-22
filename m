Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CEC521C163
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758521394; cv=none; b=V3UYN5XSu+7ISguxOR+0GDEz/CLJwwfQIZqnXxyPUwNImWWvq0SoShEBHnluow3SaJwniUSxYj3n8M0x/d5zTij2NQRXTwZneG3iQ/Oyf/ffOaNUFg5ksVWcXvAad7pTkq7DhKcf7nTnHuVSnn4lzOHGnzOe9zehhMUuYYkuLco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758521394; c=relaxed/simple;
	bh=sdIKtqsn2M8bOICEYj2FxwJPKndPmZszA2JoI8ftQJI=;
	h=To:Subject:From:Message-Id:Date; b=UeC4zxbph7x6jBGhsveaqQSE8VdGOWed8f867sEPSvW2kzps4X6GOdvveOWQWkOECZltkxf6JSPu2+jd6C1TofkNy5ql4hSlNbJJ/fEpga2zwiMwsJZnMFkzmjDoZ4dP6S63HYPaKdrFvzb6Q0IbMJ1qtFVJa/7iQXreAHIdtts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P/ugi4ZP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P/ugi4ZP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FB4C4CEF0
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758521393;
	bh=sdIKtqsn2M8bOICEYj2FxwJPKndPmZszA2JoI8ftQJI=;
	h=To:Subject:From:Date:From;
	b=P/ugi4ZPNoLUDEby7Yem7nSXu3EsvZ1Bp3Hy6TxQ0OOUaga0vo7qUGz3POs5IBeX5
	 xQ3mUsSoFDuZbBSK3jof8W9XQrlh28waKSQHVFxqA8uzL8hKtv/O45oF9HcQPfXBsl
	 bR3KwvRUXrkmSOg97Ts5TzsSKvmUngmPYpMp+pAWgM6gMdzCxj9AY4cOmjf3Uc8MQD
	 zcrS4EivaX1xN0fo6a1VQiqONlnXZKnlYZrsyu649/Ed3YMgDlZdXULPf7jvZT1kmp
	 eqrpU7BTeE6WrIrXYUy7Y8BlgsIlZ7KDBDRxhCvAZ5HWRNCjy/sn+0zRcGaRMlUnt9
	 TtoYrqt2tIwaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922E7CAC592
	for <ddprobe@lists.linux.dev>; Mon, 22 Sep 2025 06:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175852139357.1403.11061247897254619573.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2223d5de4169b10e6863fdec4427fb08f7ab6868f14659dc382db99f156d6d8
Date: Mon, 22 Sep 2025 06:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758521393
