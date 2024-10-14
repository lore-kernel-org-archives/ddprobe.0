Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C4C4A3E
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728912354; cv=none; b=n08iRrXVpDZ2AaMOoIKZGZa1IODJWcdGdDXXDA5hKFvc3LE905mkkQMd+MSw/Fo1RAI4XVttc9NNHATKY+f8vgoYwJMUwxpC14G/7dTRoOGN6NetGZHPA9ZJpDNeGyFiFlc9wiuqloKW5as0RjJLmr6GZkct7Pf2uUY/mAvrAvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728912354; c=relaxed/simple;
	bh=XvKXgsHPzSRlW9NuoLzXMqPwK8qDROUZFaB9heQ9ts8=;
	h=To:Subject:From:Message-Id:Date; b=EMFNU0r6J9NDspraRwMvEXoyiN5qC6836tncHvsWf4nulFjMKWpSpKk2fAY6pHH7rLhJLMvFDqjEvOHr81dHWu4oT6+/QYbY2CCz0o6EfxHaZ599IfNpHnQ5LA2OvKz27KRCLSjpkuHqMmVDGdJ3zaf49ZFxIgihpVsvqSwJYlc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8AHk2ca; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8AHk2ca"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9B64C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728912353;
	bh=XvKXgsHPzSRlW9NuoLzXMqPwK8qDROUZFaB9heQ9ts8=;
	h=To:Subject:From:Date:From;
	b=c8AHk2ca8XeH23jaW2GX1ESle7gZgKD397bNijTRnmA85wBS7hzRYFoYpVftNOyjE
	 wbJE+obA2dzQMNdmdG5pUjZU0ilt0i9BnVR7qS6HUb1V2Aqu7wHthSUlaSEceOILFo
	 I4graKyefTHxn/hX8ACqC69jPM+lhmqOD97TQOF+VK2lVsw6/5rr4ekOng8LEGKHFv
	 tPErzwNlzYD0zhHnvAvJVMCTFsn8THCYpqNRi5SGLwea+zreGDyzpPw4UJRxI7PDTE
	 rVr4VfUV6I+JlHouj0yXtiFhmJwSkdruJiZ6/hfIkVG7mgXCVXAgugTbshH3WOqVBP
	 UkDXPsRYXtAMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94092D16260
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172891235359.24822.5537977422652564110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f2f9158294c14fbab1bc165f8bbe80da92f73fbd3491c541b20cb09e2875ff6
Date: Mon, 14 Oct 2024 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728912353
