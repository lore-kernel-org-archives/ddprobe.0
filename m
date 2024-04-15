Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451C53FDB
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:19:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713143963; cv=none; b=gaOJV5Ev+zboK1SG74Vgr7X/lhXclirBUrWmHZ03ddmaX8RinuG0cFaI6gu0SEyv7AVpy6ZaZYpDmKvFtK/vjQKWfXgzLWe89kp8dY2SCaV/evYDrSeZBX8GYYTLDPC0AYTDNFwjr6+glNFwfBqYpZ7/JukGJC+eN2d4bkEihHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713143963; c=relaxed/simple;
	bh=FDDgMD0cy2y6MnUgKJuy4x8ydpbylvb2Xwv4S2HV7Nk=;
	h=To:Subject:From:Message-Id:Date; b=UQTRnRv1IhdYRXn05h8SEHH+8mS4+Bh06GCf7npWicRbpV5PSAAEod0QqAS2gdPIOQ2I2F1IMYugHwQzV/K1ENBhvZPDcZZISkXzrlho5XDGZiaKFob7cii/lHYo2fHV0aipqJrzHN6KexAoODlhz8cdSuFRnQrw8DzNArK5d8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jf1suixQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jf1suixQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D696AC072AA
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:19:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713143962;
	bh=FDDgMD0cy2y6MnUgKJuy4x8ydpbylvb2Xwv4S2HV7Nk=;
	h=To:Subject:From:Date:From;
	b=jf1suixQRwgnc4o8Lp1Hb5YRZ1R7MehSJzbkHYsBmzfPy9SOQsEG/e/1r/gGQLM4D
	 bD7NRQEEOCZ44LqFMlYz+m59TLfGBZlUGYY3cnSst+vVm9c6wdgo21wCOWXBxRWXGx
	 ZAZdcOOwnmaPXK8TnaAZuKQVFzicdremGJleQow7EG28sXbSaS5qDtEbfbzX8rZNXj
	 zCxRCx0VjQukZwQxinsbdE3Jk/jQisHcaolpDppL12BxP1g6WPsfZ1wU5LjsIaYlZ1
	 diYphjjI2BlAl0GYG+0/3ee0mS9QWD4LEZVUlg89d4wu3iQTYr1wJfH82iW+L0ih0n
	 8nNSbBoDt0XbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBC44C4345F
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 01:19:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171314396276.23151.9235654381697470617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 405f88e60c81f29deeee0667d8c529365330f85d38ebca952ec36346de184fb4
Date: Mon, 15 Apr 2024 01:19:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713143962
