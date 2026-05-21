Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EBBB3314B9
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779354034; cv=none; b=MEDBI6t8/JsDnwcN6AuAGokKExRj5vaexIFnKZqYUFK/jIMIRA2cfeNmJI/vsl5rLh3R71gxj6jYOe/Yjko+DoYnxzmarS1bJbTg+6eYtDU4k3EEqrvrwvkn4QqHqnWQ9bgWRcLYErFxm8BuGpgqhjHaVa84FIP3hZlDc0Bp8pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779354034; c=relaxed/simple;
	bh=QzSKkZ0wMTlGxJJ4sdIOOH7sq5gdSABASQmrpC/FD44=;
	h=To:Subject:From:Message-Id:Date; b=A1yPZO98af8rGFkEzw2VKasSkIRJPyEmotyWS7WSEjD440rA8hSENKtJI9sRjuHN7AgPezz7Gb+uYlRxCRBN2vb9kE8xqfXeWayk6DrSi/kOlbcQGV3/LYAuvILidWNp6YjbtSGy4TuDsTfbA43h4BvAJB6sx/E2+IL+5adid5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyrazzL0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyrazzL0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C777AC2BCB7
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779354033;
	bh=QzSKkZ0wMTlGxJJ4sdIOOH7sq5gdSABASQmrpC/FD44=;
	h=To:Subject:From:Date:From;
	b=eyrazzL0FH9lmEn7w1IzWr/6FG63Tez1SYRewXjHO8wdTg7y68KebIzsMvn9/NnH0
	 Jlp2W+dz5PB8kyFUIL7p4Nq3NzbxoiFWoKro1Obhb1Dh1blzHb25bu/ZuY7bXaRvdk
	 EqIwhtXY3n77NMaujAhRSz0p3xiE03bUlzKwS01odZP9b6ezIad10XtosAyOypGq24
	 PEP9XmqDKQQ0HFjaK3+5wIJZ/WApz5Gj/kwjJuVbyqMLH0FygGbWK11ynhG8Bgt/bW
	 34AfcZNJy9XER61j6p811F4srpobecIey3HOlTd9Pc0FTSQdtD6tQcgSiC3sGmU5Qq
	 XlKbp1FRXmTVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2C0CD5BAC
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177935403370.29759.12957488778281193559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 891d77c49fc0f746b92118681015b42ffd89134117f47f864890012bbf945f21
Date: Thu, 21 May 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779354033
