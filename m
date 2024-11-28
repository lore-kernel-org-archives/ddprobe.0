Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4704E1FAA
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732774554; cv=none; b=h7t6Nvt8balQ1xSgXFhyg6gUJAHgj3XuyPDbyQIQ9Le1e+ll3cJGCXjsC5X+sTMpSEl1rVxYUy35yd2mggWHR1RPqL5kkBdynloo6SZfkHldpHojcZWVeVRvj99CPx30o8xSll935H9C1TQGWOF8L4R2wMsRqT23P9PsJtxhods=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732774554; c=relaxed/simple;
	bh=hMPWX/pBHkk1H4DigdV7b4wYmqFnlelI2lv43KoHnWo=;
	h=To:Subject:From:Message-Id:Date; b=otF0shp/A3qmnEbzEUqSefizMCJJMirJ0X8pmBOyj3CIFzLXDCeZqOsOkt9ZphuMsWVETRmVZPdYROrrlX6/pCDuBiQI/kpbkxUXqM/zyfCqU96nf6R5klZacNTpKj+79SmwVauoPiibcSpZ649iLkChgx3L7HMBUwjqXY4bZF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nz5WMFlY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nz5WMFlY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE47EC4CECE
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732774553;
	bh=hMPWX/pBHkk1H4DigdV7b4wYmqFnlelI2lv43KoHnWo=;
	h=To:Subject:From:Date:From;
	b=Nz5WMFlYssFfufRRI8iVsTUqxggqTJbw0zm42PqBXEmnvQTvAbv3KUmVgVp8eYEyx
	 Tgk3xaL0AbignfVX2SYHwI6cwfosr9a+zMmLiViStYR3mBfs9ZpTU7QPuUZ8Jd9Odx
	 G/hsoQmp27kd/XXEGgdDb54/QVRoFFoghcaHsjEnHqUgBotUrecItzujDKMHyyD8EE
	 tZHJeZNLqBKUqHZ8pY7Bgj4idHWrcyGxkpXPgddyjA+oonyrCdryNjdot9pjBrhTeT
	 49y64edJmWQOToiGb4Wyj+C8Q22auP8EjDVb/7x7uOsUSVG8bKUsLgzJc7XhStZbHY
	 kkRo0RpdijZtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACA4D66BAC
	for <ddprobe@lists.linux.dev>; Thu, 28 Nov 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173277455359.30620.12654792082303535220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a8f81fed54392ff374a831e9f83b7c5826dbb6ed60f1799c8a6fac20f202c73
Date: Thu, 28 Nov 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732774553
