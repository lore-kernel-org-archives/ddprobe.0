Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11D521D4176
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729323954; cv=none; b=LqGHzaSPL5kDEiM5Kmcpil2pUooDhp6AgrcjO1v4y/P5Veeti8dOXYc0dtp79nyejQ6TXP9qX5KE2mbBO+ECGwCg6A/N9zJ0PzHXc4YQCOLzKq3kh7UbfDCee4c9kcCBcPFKxrFg5Jglc3Ilo5Np4ScWy6mtiGXcynenZPl/mmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729323954; c=relaxed/simple;
	bh=Ug/r7xyA1OSvDL2WR8/bU90lZvHQvp6TvxCi3wmhv/M=;
	h=To:Subject:From:Message-Id:Date; b=llLtL5njfMqEpKtSrCiRoA3ChbuANdRRAW0YyJG7Twxrq4+2kgOEdXLELWUYSsy3dJ2uDQ5EqiKbJDvL2YE6db3yx6fvBmIBUnTa2XQReol/c5Gl2QN2D8Eh9cLsnEGExzIuqxMaQPfjjRTltr98X+I5BbPEbUqe8rnaCLo8G9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y+5ql/3D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y+5ql/3D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CE9C4CEC7
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729323953;
	bh=Ug/r7xyA1OSvDL2WR8/bU90lZvHQvp6TvxCi3wmhv/M=;
	h=To:Subject:From:Date:From;
	b=Y+5ql/3D05H52k3QyL2rlAdAwCjeBwABxek9fR2F2By1E/PAsuCatidalvl5f3Z/z
	 vYprSrnFCh1udU7wYsb24uGVQXbnhrqXa3l0WaEIWYZxOqtzadlZSCzWYzgbb/QfeX
	 HjfGm24VBSic6ajr4rEIxik2KXzBf4DmeXvacllXCM2crS+0caTlXzS8WZt8ikCRSa
	 A7BjZ1CDMy+T9fnmsAI7iPJENADTyphUjurIV6ATVYvxbtp0+UOe6Tzro3BgMsBzZ4
	 8Eo1og6eJQ9ATgDoMw31gOrpI74kCeA7NMv2xz7k0zKoDo/80zOjP2fppZeLNXI6lK
	 yzleJSAmAS2fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 935B8D3E1BC
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172932395359.29655.1047152000941747050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ceaff88996ef6f839eaadf9c3a7bfc07764de3f3e817f7c047a8d2fc28a99821
Date: Sat, 19 Oct 2024 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729323953
