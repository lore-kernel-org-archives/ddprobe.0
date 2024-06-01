Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C2C4134BC
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717230863; cv=none; b=s6QvPEf9KCRHrw7bxzBFiG8Z6x3fck9cZwg8RSBDANcILJrIoTkW1jb2a6ouUcn3UPRF7RJtuBuSyUmDrYugB7s+mN8wd4eOYw9ZFh9Tj6g1EIKoga4TIGLchbNIDyoPQGGgyfGETyypH+j69zOHfuaqevzY8hsV0m6oEVHIuGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717230863; c=relaxed/simple;
	bh=nOiA4mEgfx9yvnb1Pm1ylwPP816LdmL0JOBaaw3rqVw=;
	h=To:Subject:From:Message-Id:Date; b=U1/0Icfyx+T/LVTz8YISmrznbJmCwubhQAb/W1P1qYeAqxh9m0k+OmdaBCPsFg8jAWFg9Iu8bMFGaxu6i1a+7q4t9M6FtgcR/xKcx/ln7nVBsEBoIehPtLMBgIsZ++DF1gkUkqDgj9ASv6HE+yNO9bMsggxRUP40eM7C0qLzVg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ojjGpj5s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ojjGpj5s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F1FDCC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717230863;
	bh=nOiA4mEgfx9yvnb1Pm1ylwPP816LdmL0JOBaaw3rqVw=;
	h=To:Subject:From:Date:From;
	b=ojjGpj5sKrpnK1lbWextJ/z7tUXdMcz9BqEaOPBBp4yWZ09/ILN3LvFWoAyE5p0Tc
	 Gv4TOXPoJQeoFRAoXpvwwS1GxCqzfeAEbOkMiQ/tExa+sQJrspi7zmUEePWm0Acg5W
	 UeBILMPn5gscmKjPZY5cSUoEEqZoR8YXI62LCjGoAOK9f97+ri3hkUFHIzvjFmrF9N
	 0MNxQj95GyPUNvaYzQmZR+f/QeLZF/yt2J3XTzmdTcSCJBmR6MQAPxE3lrro9/hmkF
	 Caf7oNsc8Pc36zt9J6BtD3ED4Mze+8OOqsCPYpZbeOnvAcGNWxQUbF3mvP836+PT9W
	 MCSVjkXKAv/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9352C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 08:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171723086285.2623.10754158777621691221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23bff3280c76bbc633bae2f6e2137c9a887250d83c637746c517210088574278
Date: Sat, 01 Jun 2024 08:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717230862
