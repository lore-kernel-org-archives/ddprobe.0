Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E5AE4657CD
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768981434; cv=none; b=FHLLYk58c7j3GL/Z/sZf9NaZrBaOopyInoHAaxJkNBgoekMehSPnGayBotbVxSYoOe40vwPLOKywDZ7gelf3fsWI/8khG+4O5u8GzGTK66zOikyxbAHDWTS5OwYViHbeVYgig4ymsJE5FuDV0zzd2c+IzsY5m3URkrCA/4DI+aY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768981434; c=relaxed/simple;
	bh=232FHNCUsDw38e4v0Q1ZI1dvmBEK/0467HqAh8wl1r0=;
	h=To:Subject:From:Message-Id:Date; b=DK2HXLuScYt6Tfcn6CRrqz5fdJrQP+GwQCnXlw3Dcalv7IL3LqKRQky5BXVKbgVga5IrT2CdihhuEynHciwAeDiNFnDw/7BMaFQstK3Fe4i0yWHgKogbUltMve93CzOqPC8FT5DMKjTeU+6K1uLb1Ki98+In6a2jIeLDLJyFkV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hckQPELZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hckQPELZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2200C116D0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768981433;
	bh=232FHNCUsDw38e4v0Q1ZI1dvmBEK/0467HqAh8wl1r0=;
	h=To:Subject:From:Date:From;
	b=hckQPELZaBOQug1ZtKVJUWU3fnAUKdN3AkxSta+eY5cGImARTeA4B3dhAPdYlFqJS
	 iC3DMUk5fdYaq7ssTAJV4w6Dajj8NsCaVLuXjOp6RwuRFI8IUb7Sta4FBTMOnu31lP
	 RvHU36k1Is//gjGS6k8wAWAwdaJjYds2OOoowdMGvDYOkVWzel+TbyXLLniH57kEBK
	 Msk69O0NlyrtbI5nXb+BtsTRE7VWJGABUUexZtcUZdzwkkdMzUnUgRdwIxGnU8sJPp
	 D0Ne4wk+V5E7vEdrKQ8dimp0zDY80iHGjJC4TxoQwIPMu5VncFwY+lPNbmUHDOAZxY
	 cFEzwHVh/L0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D19D262B2
	for <ddprobe@lists.linux.dev>; Wed, 21 Jan 2026 07:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176898143358.12538.2525623879780395683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17ce7240a0ca54b1c096b2d660fa553ca6ccbffe0fe3a2ce4a313b2dfcd580a4
Date: Wed, 21 Jan 2026 07:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768981433
