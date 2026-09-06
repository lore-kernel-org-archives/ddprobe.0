Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D356E3BF679
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788693034; cv=none; b=AibUnjxOKopMSFLYkO4XW+TNqCiTNzHEzr4Ay6eKQYPHQt9c7NchDL9HJlgH8felpCLHBu91roIF59kSjSum3EM31troCvO+QRbqWa1qrNvp1VvLBuaDwLx53DXo/si8RyD5hD8pmnN7uxaG6HNF++KNdF/2xwa/5uHxroa2K3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788693034; c=relaxed/simple;
	bh=EVCz2/3Xr50tiYiCMnRSXEfrJMvpot4tTlDo6lnY9Ss=;
	h=To:Subject:From:Message-Id:Date; b=tqS2HqOomYlYhlnf0IPTUpnbdAYUwQEgsZMRG7/qWl8Eze+Ycag8MFJ2x6QbWmLLJwEEwO3Saax8Kgrs3Ae8EMTNriA0VHSrsKs6OxFuof1Mz4wkknDEEPSbdJIf+BsFCoYjqIWqXj6E+Saxk+j4sP1rNblOswnaWX0lBx8DvCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CRNXbNZ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CRNXbNZ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5B70C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788693033;
	bh=EVCz2/3Xr50tiYiCMnRSXEfrJMvpot4tTlDo6lnY9Ss=;
	h=To:Subject:From:Date:From;
	b=CRNXbNZ6Z8X9AqMlYyk8PU3WNFyjV+Cz9rHIqtd1RR7+30U0F4Fp08YrEkwWmytFX
	 sjhD7/Hhm/BCHJapYNl9MJyljdDWHGl0ccscmQLRI8toj0IQjupC44I1C/cbx7fFL4
	 4/9EEvdsI1N4ejlkJRbFOKzi/21khbpikUGmpPzkV5RUD8MXNm0uis4GH5y7Ulpwzd
	 WjbVGlsB/5heux8Hyj1HHppmzR8XGhACxnoY5FS+BQH0ntCXl0TJJK/oOinhRvmBTz
	 xQjH7bm5WoUWVDGSUwaXS+pMOTgMag9wIXMHiTuj9XwPFM3UIyYqzZ9lb/U6a8war2
	 6uc0gCYJbU1Lg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD74DC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178869303370.16239.16449440297464041311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e871f30f82f2db10266252f1d2cb5ca348138f3ef06bb6ae8bc627282bfcbc
Date: Sun, 06 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788693033
