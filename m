Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A601A23A0
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767903834; cv=none; b=EVb2Jqe89hDVsoWos2k2TIhGmfdm3A/l4gLWY7eKqkqVG/yvbGP4Q/dZvqee6in3jugFyo1YD3EPc0al/xB/bsLa+txMOYPFWuiPZ2MgkHQT4KhopuZUE6gQ0FyKEuJu/ikTJFPsWyoIyDJnqP2dwRHkZhVAxB4wRoyCKC6Aty4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767903834; c=relaxed/simple;
	bh=fdtND0t+/XtGn7zgC9vTQQPYz9UCafE3bzeSskHuTWw=;
	h=To:Subject:From:Message-Id:Date; b=Q8u8tV6uIIvJkCsTEKa3hPXPZvM/QJhp6f8OlC1n8TYtP1mcs+hFu7XEVK+lEFSraA/fcycmsnS5ozUilZt4tp855Fn3G/as4WAricob4icHrRqwKqCHyhyIsOgJQZ7qpot9Ypt1Xt17OnpbwlhlpnZWIS2AzyiKWJ3STm8E8cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmZEawr5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmZEawr5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1415C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767903833;
	bh=fdtND0t+/XtGn7zgC9vTQQPYz9UCafE3bzeSskHuTWw=;
	h=To:Subject:From:Date:From;
	b=KmZEawr5coIzY8chi2tme6x8dA+IrWGwdjRsKbRxwv4OJ23WBpqN65uFpZXVzcX53
	 qKKTz+FrqWolAnYIWT4sJ8vEsbxzLwxnsloGRsOcLvGcKjmdZt/EXQM3cQbtOsWxy+
	 k7kI8g/GLArtnRC76il8bMAKc3vSunJ+d1cpct/yb7yKjLKWfWybEulkZKEIFwpLlG
	 w5JV2CJL5xLG8JTbjR0W+eO34SYvKEGKMcjVrb3tkKI6qh/kejiXvmWVbHA0JdvXwa
	 FZpr1rKdWhpJPNYlWYbBKUV3GVz29F2bJpzqDedzDyj4KDTOGDkFbNqhS3982/z5ya
	 Y6JRMrrgXGR8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D88D1D493
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176790383358.29090.1128582484088123521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b09c3dfedfd4c8face58160d1d99fa308f92a7ae066b92c342f2cf192856d333
Date: Thu, 08 Jan 2026 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767903833
