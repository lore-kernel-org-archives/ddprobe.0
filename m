Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CA28322B8F
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779567154; cv=none; b=j6mq5IMddoiQPdBIK9lUqWkPV3MWpK3WzUA4pJC1NTrDEtzwLbF07LWQHjpDEhuC9DjBXJMGnAPHcK3A/HPx4oR4X/2PpUMu+XmNnxjKd3ZJBN6MK4aoQutO1wIPQHhEcgZ2lR/B9KNwZ/PEGI2W7eHduNceDtHi2+N4OnqrDPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779567154; c=relaxed/simple;
	bh=bvidtgt/AyVpQyha8YXKHhJRZIkRnlkS0yqbVOnKR/M=;
	h=To:Subject:From:Message-Id:Date; b=M8kapf/7qoZ5Qf+yvsCGHe3pnwiZqzp82H7DjZrmmK+6jhDtICiTTgV63ZozfrTvJyjQ/GwAAUELNqdS84LnnWfz0ojmOq4EOqx+AQJi8yxGXkDIPlVS66ETib2RCTdDYCaP5LNtbnsF6XfQT7e5CfwCHdQw6syK7O65fy0PCDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ESHjprBF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ESHjprBF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6F1CC2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779567153;
	bh=bvidtgt/AyVpQyha8YXKHhJRZIkRnlkS0yqbVOnKR/M=;
	h=To:Subject:From:Date:From;
	b=ESHjprBFrjhc6BQVlaHCtcWCFZ8+GHsK85gmQYak4R8N/S9vIVsKvAHPLUUl2JBP1
	 qymF47C0uDyVbbfT1BIj++peYvoMymFrGLrciKno9j0l2xUJYAATSYaipsN6+JUKAp
	 j+UiPq85Q9C83k9R2zZYs7EwQmwOlRGuGKjxPgqDPEXp4f0AQ+bJotC+CCZDoF0Fia
	 kCGp6ptvQrTVZ5opykgT8RiGKiLusD5ncLq23JaMHC2esNCzLd4iH4NS6M/P7ULLr8
	 zZSGvPb/1q+bpMwhv5GIP6ztH/r8RnLn1ldGa8iOfNXtT0hhYkz7dfBUhqZky2JZ2L
	 vTapB9fFgMzuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABB09CD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 20:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177956715368.22733.3177943570510697613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4805d007c6a0b931149d6a1c0ec56c0d604137fdc75fb881002eccb94e97b92f
Date: Sat, 23 May 2026 20:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779567153
