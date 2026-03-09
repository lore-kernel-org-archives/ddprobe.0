Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DBC213DBA0
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773015294; cv=none; b=OE4xnxJq/e7USh7jTnbtdHdirVc96gIaaS08hto8R0dMH4glbNapKjkXW0vRnxuj2JQ9JlzbZXJPW4xjKj0wM7JWD7jaTbSDXj0u8m3P16q66/k11ZhFXd0aHHNzCOcox+DxTgRiydKxXeKyzijL892VehdytkJ/0LSCoypigis=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773015294; c=relaxed/simple;
	bh=6tILnnekggfhU7a0rtn+xXiHH+Ih3nt5urfR9IK3/SM=;
	h=To:Subject:From:Message-Id:Date; b=OpX5IxihzRkVewQqP3iTLGUFZu6R4Re+9DULFJfQrjxnTe8FVTu1cytqbFGumt6KdrqJh0YH7mnLMxOV9fRMDWk2oX9VmHqWD1VVBABcyxXDmsCvcvh9s3+voodL3s2ok0uYQdnnobTp1lnhRRMoifEJ33PPxvTDjDd37+mkrv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O1/uLeun; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O1/uLeun"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4520C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773015293;
	bh=6tILnnekggfhU7a0rtn+xXiHH+Ih3nt5urfR9IK3/SM=;
	h=To:Subject:From:Date:From;
	b=O1/uLeunKqeykSzFKieaGD98GR2DD12xf6E40lIygVDhD0sPyVPlzi+TwTM3mlt3r
	 kmIK9lnCPYH0qDgogoFpolk1MNjd5R0IH69tNsdxgpOXZnNMUAKNJKVV+e7bwn1EF/
	 hVsilVrXKW29ao+8XSMgmnBDdipHEdygHyelkRHu+Vs6HNsZoeE+kFA0f8Usn4JDFF
	 MFyyZZeINw/sfUj5B6aXCmveLDoBRdHlFZHVzyHV1igyjZsOaVJ2uzA8c337YSdsPn
	 KyR2S6NdT1v/Ca546RbHAaj0UIx2QMAEHtv1coOQGg5Xbb8J4WpY8nzbhVVyn0nZkP
	 EU92pO70lFqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9008DEA852F
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 00:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177301529358.8433.13139370049155787460.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c692fa1daf56890d79120154de7453acd2e0a10e5f1e97f55fa568c7aba30d44
Date: Mon, 09 Mar 2026 00:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773015293
