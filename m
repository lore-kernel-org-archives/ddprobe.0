Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DF513CA9C
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746406794; cv=none; b=ncTYwd/8gfG/6teCBCklnUBXo4QOKhqJdxnJPirEekhWtnUQvhMH/t0n4R7j1Id90cyJ0cGuk4XlNcj7/E6qYI97r2EQrE3L3CUR+7PyBYOTevyZqGI0Xcxf+6Bw1laRyWpID5By6ppYVVZkvoi1CN4npSnwrlpbqC2Wd21rkio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746406794; c=relaxed/simple;
	bh=F+Xf8bVZpbWYAPfzNGzH/lwiWLE22hc0zfnp16w0Ca8=;
	h=To:Subject:From:Message-Id:Date; b=V/lUteu1fWGVDbLkOvWGMyg2fnZ55T+z0T6iap0DtLpMdYbvDyoTWzcM+z6lvu+KT3UNOaU7wNyieQNJ2CZSAeVeANX6FA9cQJ//gc27D6K4iMl8jnTJxil71cuTJpYvgS1ITn3oSEDaZwPG0W2Jmipx8WjrRPFHvIThjSdRx88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aHksA9e8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aHksA9e8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A66CEC4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746406793;
	bh=F+Xf8bVZpbWYAPfzNGzH/lwiWLE22hc0zfnp16w0Ca8=;
	h=To:Subject:From:Date:From;
	b=aHksA9e8QPU0cJLSWu6L8omnSMwkh50+YqiW+Ur+oqCYFIcvSr0SmFrepQPNELH0A
	 0zUtB4KGF++ffIztzD/AgAyl5zsr9sZs0b+OjHsS1xwI56hPuVLPrBrve3xkIhoG3W
	 C98sm/iMzkRTPyw85eqRUW8pTAoa4hr2+T4DryGS0r0azdK3ilqVlqECPKnkswF6IE
	 c+YZWQtC0fndGWQ5I6vcv/6XNqsoQw32t9AREvnbqcrnaL1MSOLnBTbr/IJmTuk9b1
	 6SzIwiv7D6dS+Q7Fw5YelNZNR5KDn3FJm2Jn3K4DOzUqbz7GlCtfuYTPwiQgZOz3wt
	 Tehr5l3s1HDDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962EEC369DC
	for <ddprobe@lists.linux.dev>; Mon,  5 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174640679358.1040.14574135664598035641.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0ced37615a8b9c8253d88663e63885d905da330235b34bfa21998a4daae9b04
Date: Mon, 05 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746406793
