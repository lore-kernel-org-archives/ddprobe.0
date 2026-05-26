Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B5A231716D
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779812554; cv=none; b=SFAJvyN/45nDwzIfsa7/8YazqzwFws6xzLjLIO8WJ4NUhxTtqqK4IN2yW0Qe8+xS6LgExyQAAN73HvyT0qbpGQosJMR5RtG4dm5eNu0ZUpRvyw4boyycot3l8QCTD6NS/kzKKEmKP6kmf6Wz//vMIw/JGzeAQGZo07iq8S/X4gI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779812554; c=relaxed/simple;
	bh=fbsCP09cofTNa0GJZqH+8ipFiehcDDRbJVM8GCdvXN0=;
	h=To:Subject:From:Message-Id:Date; b=eZcN2V9zYBMEvVB2mPEjiaBq/eioJLfTPrBZXas8t15NXWBgVJW5y80T1aYMBS1YodIiueO4+fYW8UHxR9kNWlJmMNwSn7ZOOQ2ap+biltUrCHabwhuKgAwG3rahYg7VWpjUdUiYz6D8Zq/SYzY9ieE2x3qRfQaDaQTqlMyrRHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9HSQipE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9HSQipE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ECF51C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779812554;
	bh=fbsCP09cofTNa0GJZqH+8ipFiehcDDRbJVM8GCdvXN0=;
	h=To:Subject:From:Date:From;
	b=u9HSQipEenwN/YNvkf1lxPrya9M9qoUQlTE2/XeyrVhj1s0tpF94++UNuJvo8kjdz
	 j0+ulYmWpUiZDo7EafIQVhH9Ogi0fKaNE56LzAKJ8pWxo6TVEMG3dGL7oup+qpA+n3
	 +vDRXHzRvb+3v67hKvpk/r37E5u26jBG4CFL77mn1zSBOrKe7UvyckKu4hbQ2nPUc0
	 wUGR4wNWiDK/he9umnPM9LoCwsJqa2dP9g9XNAXmpHFas4i0qEifrcHHdBgGKTlQk8
	 4cLgVZt0SRw42kG/7B05nkaQUnt38xawrZi/jAGTimmWndNMBeDJuQbtH2ZrFHgWMV
	 bMQ5U6mcvRxdg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BC3CD5BC8
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 16:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177981255377.11975.15830381759588424590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb238b3a5ec3d900f947021cc1df44509c4a5f184ced61ab91367bec10ecf565
Date: Tue, 26 May 2026 16:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779812553
