Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80CA2BA21
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775619934; cv=none; b=XE6+aiz9YEqhF2V+0A1dPIXKScuGyphIKM64i3gRSCKdqgRt1I6q38U4oWQzHXHJsrdLd107Gi3DMNEXLLCm+6obf7tcJjas8OtuvR65z+/CP95Jo2i7mLhxP7m75pQnCxbGUHocg06DO4Z9uVy5B1+KwRnmR6AAexj0huSyiIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775619934; c=relaxed/simple;
	bh=KC86MHzDuyfPYUoUhBt9eyHkTKz/RmYyCPldZhNhZEE=;
	h=To:Subject:From:Message-Id:Date; b=CwbwrAaPLZSiljLP7ciMYVpKx5PTXNGdy61wdF4lfXCkFYzPMokO687qPr9izQAlC0tgWsysNTRwzFIxsg5DtNWhiyXYjjXViYWd7zq9iBlYlraKAUtgU6gE9aqdhUJErEqzpB3VhMGXbcXkNvRZBUVZK8ZuB1JSP4x1hZW1g38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XxHKsK9A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XxHKsK9A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 30D61C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:45:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775619934;
	bh=KC86MHzDuyfPYUoUhBt9eyHkTKz/RmYyCPldZhNhZEE=;
	h=To:Subject:From:Date:From;
	b=XxHKsK9AAI6DEAYkuUZqgBhSmmtaTZ0SCvT4kGDllQbTYPRMM2e6BbiE5oHIMDBTB
	 smYX+tBDK6zYeJj5Ra470ToWqr0LfTGreQrDz3bxtMcdQkE4eltEGM62qqJowzPzal
	 4yqMqfcfvFFS3/CsCp3zZH1vq8VfJJ7FO1Z3stcSTxxPlUCZ4rSs99Zwhl2J4NihPT
	 7hW1q9oT1HtrFsn3qJMK6S+dRuCOXY+aF57qNQqlrpd7F949wnut1oKoP3Ig7z78an
	 oYpUkrbjwhdUEpp3JVZwmfb1Ln3R5qW4Cs9qhj24zG/29nmui5a6Ry6w4kDeimJgSW
	 W1Ie7enDMAf0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F19BCFD5F62
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 03:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177561993389.27607.9531339791062965805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a97143db8c22a7483591908f05321f6a4aa083634ad30b29d9754208b641e65
Date: Wed, 08 Apr 2026 03:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775619933
