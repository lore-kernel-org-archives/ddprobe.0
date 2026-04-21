Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 105F0314A84
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776748054; cv=none; b=WwyTNfX5EkYZQ1Mu9jrhRAL3eMWjMyy6rniewrkIHGPclckEYqoL/ER2g0DHF245UE2oXebLDcGMJ5jNW9mp+l01qH7hcXgO6B0BrG0155MwR/UKpqEp4czkuEopKKIlK6myG/hLN98cju73v8vZGEDdL4vzVuupdnp0htC6cHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776748054; c=relaxed/simple;
	bh=kDIYZA5bE8RMDZwHUZc6uhMpDSPOYBB5exHk16H9psE=;
	h=To:Subject:From:Message-Id:Date; b=QpRpXlwloT7hMPPN1AzVp433R75G563AseFbuDo8Bu20OJ/qrHiFH3BKmD6VO6+T705h5p0bjRkrdBZLIkR24T5gdgE66TiP54ZCXXrsyoICyjDbajmrnxzqsajQtezPqO7DYLyDc54Ggj6t9a+5hdE4LgGhzSWDVZWRsLvLEj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdj+f8N+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdj+f8N+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC034C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776748053;
	bh=kDIYZA5bE8RMDZwHUZc6uhMpDSPOYBB5exHk16H9psE=;
	h=To:Subject:From:Date:From;
	b=kdj+f8N+uNCidmndYDaRsTVQ+XBSrLAPzVCCVfIJo+cb/GmJQRkVTF8Mrn3ujfIRc
	 +ekwdQkME/3EJXSa2va8HVrSmrBbEPf6gXmvspIAX0iMcAA9rngGlquEIuDp9xtL4K
	 pON7gCDwkPIyjSefhnD6MkF8CgcVAnpcsQkdE2A/a4o9ZAivEsgHDOUo/ct9jnOzvs
	 qImGUO/lCH7PuhOnFdLWvbktbtaTFbF9y2jlCyOwbxY6KJqbw1CECbfbylGiwZAtIG
	 9O2swBxp/Z+BzxTbkRCdKLryElwUC5fMw30Qe0HWA26thlnw510ogS+pdOhBKq2AH5
	 ibuS9MKSrqHWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF420EA7184
	for <ddprobe@lists.linux.dev>; Tue, 21 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177674805368.10809.11549117324094238444.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5c0ca55d641e068f8da44003af3bd26629a7a69f8eca173fbbb2949a99f4066
Date: Tue, 21 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776748053
