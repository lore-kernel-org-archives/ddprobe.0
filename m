Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29B438460
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750238394; cv=none; b=U6qaE8NY9k33Z8gG3koc7MGQEkBvGDDynHbAGlXaj+Z7M58MI9cVrPhVxeC+/TlCBrgGmQeWtENhID9JnToO7QEamAA9JkmNFYUMgYhL1YUxddhz6ihzeXA11WQwOlUPYaNJ72Ma21PE30SvmKV15MwzU+4C/3wxXrR0Y80j0j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750238394; c=relaxed/simple;
	bh=EhFS7C5YU1dLUkBSAGc++WSk5vopxmc5Xp+vuriSpaY=;
	h=To:Subject:From:Message-Id:Date; b=C3vHuKinFhcU6ni2YBtywzIcaElNKX4pe4FDtpVJ9loaoRfdCmrnHDs47pgDzXefSU53qWu6OGCHoUuzfubh+y286SHE9AlAbqMczfBCL+RMaT/UGknqhtMD3xeVE2PI6bGt5304azOe55tFssjGpdIaROU4bDw0UpjgzBGDYfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XceG6SFD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XceG6SFD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6AD7C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750238393;
	bh=EhFS7C5YU1dLUkBSAGc++WSk5vopxmc5Xp+vuriSpaY=;
	h=To:Subject:From:Date:From;
	b=XceG6SFDrifa9/b9YCmJZZdBXNGjBHPS7TY8zoUIflyGq8+oHvNAjgh+Yz8TxPvwP
	 clQjb1rwEmFqsYEcoSW3kkPPPSqC7LkLhHQaK/Ie//PbnOZ4X17wxG2qv0zUOE7sGD
	 W7qC6YPZPK+2MaEg2LwpSUdA3vWSU2cJ5FM7ziMLCYUgPke2zpfYq1t6ZHYxELhTsq
	 1nlj7GwGTC8+YCl98xd4hIhn+P7z7jYMJl3bBGSx1UomotezLhqOPsdhZevG3m3uJm
	 HA3/gEBCj2pY4+xOFgqjQg62bOQ27r14qmsMx7DMBdnKyM69oKOFEEPneZu6QylZdw
	 fyOlgU82TbW9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942EEC71157
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175023839359.30878.10235139144355249620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63d1065f8001cd22ab381eee949487068ed541928434a8bbeabed3447589e63c
Date: Wed, 18 Jun 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750238393
