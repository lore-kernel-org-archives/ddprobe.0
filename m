Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A903AFCFF
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782307054; cv=none; b=ENdazL1uMeeVnCN6PLknpLZwCAfw9kEEDlbwOp352BOqp4aoWmh3t1274PMQD5422fdbDLEHUnfxUO1xlsaeMatAlPQ+Q2Vp+d/NXN8uUdOTmrzaS3H15FTvgMsGFbZzGeYXoF2kkvY4Svr5nTE/hB1JwaHnZTbh1cW+EPfSvI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782307054; c=relaxed/simple;
	bh=MlxtW2ALkJwgrc+GfiS56aiZCBFCuofwKlvfsoT8ld0=;
	h=To:Subject:From:Message-Id:Date; b=f/xA3N71SCrQbltVemq12s4Aj/e99oZfXLU/kG57q1qRaCZ5glO09IB79GUg51iuA1dOA8cblmBB6zi9P0+E0ambBBOnqW4cRQE71lQ3d9H31pJTMcAhZidgNvO5a76y0r151hCR8DAGD/Z3IdlbGfvt37iVrGO92XUNOq3NrHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgGaxLh7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgGaxLh7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3F67C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782307053;
	bh=MlxtW2ALkJwgrc+GfiS56aiZCBFCuofwKlvfsoT8ld0=;
	h=To:Subject:From:Date:From;
	b=tgGaxLh7TkilScPQ+APNRz0hWLwETSOmhDXfODijjKf+zAm2pLMEy1oP7eNKXyFVf
	 Mz3MLfc+kBBk1VbBbK69qFAMAmz09XngEUE9+AoNEO4XWmRwcroi2MOO6+Wl+leaef
	 7OQUGRLWxfGxlifIszcxdEr9yZGMC+bex+otINtdzXIbxRHKFg/icFtJiFBgXq4bbA
	 euG69SmOtJkPHitudKncBuYoN606Mw46pboQR95ryl9B+n91D/SSfFY+xVVk7802wC
	 1whDXJOFcKf4gR6e5+qVZKURfWN3f7e1Li5cIuGqLGSptX80Ze5/j3yXGCHSPXG7aO
	 DQz4rLfV8hAHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD7B3CDB481
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 13:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178230705376.25349.10195983217221909066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd63262f87b8d740c56fac0d422ed4af0cb09a0a2de1b48b0656f463ebb41d0
Date: Wed, 24 Jun 2026 13:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782307053
