Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A5D54C9557
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788547834; cv=none; b=HaJUTtkmfwVn79T9zQMXwFkmu2Ob8++Aw+I9wqgkY6OeKj1a0D+580A0CGrts6PDXdJaIHBMeuNp/sqtd1Z+hZRUOwF51mPSsEdTCnSgH2SF29wVsrBAZBt1c6K6cOiLCpXIeMLb/AswF+qwXdZmM5Rh3etBXJ/oRn8OPkinC2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788547834; c=relaxed/simple;
	bh=ikCtYst7UYi6KK/c1yRdOpOMBftB/6+YANmwO9rTCHQ=;
	h=To:Subject:From:Message-Id:Date; b=WfhxFEI41yqCiB482EvMevo0xasvjxPEqYMnW3hWPP3IDWwx6zYjHoPw3973dtHO6lCo3WVUuf/YGQZbdH06TfTpX90eNPX1FdC9NJykC86IIVdjvDCOo1GqWTPaIuzseZ16pO0Y3O/qqnyNTzh+90EbMPklR1dLw02ugXGyfUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNeV82aZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNeV82aZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DACA1C2BCC7
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788547833;
	bh=ikCtYst7UYi6KK/c1yRdOpOMBftB/6+YANmwO9rTCHQ=;
	h=To:Subject:From:Date:From;
	b=VNeV82aZ1IcBDOYkc1c5L312wsTs7TD+Zh6vp2i8Ks1cdeWh8GXM4d4lO9RA2gWNX
	 Di1cA4V6hAFO6SZU/i0+1KsD1bC2epgDabw22vHwOACoUGpNykWKxGO41PB+3hk+Xb
	 f84jNt6vL2ch1Hny+pliSwdnJVp9G8pOFQM1hHG/7mEsS/wuxPrJ+cHUzLfZRqY0HJ
	 gudaO0nbIz5ql1Nh1+TBfF2Bu+8LkEZ1Pkot3jJe1QggvPCIJomL4pPwJftNA/QxuK
	 PHyFogkO5GEMZ02pOgiyyURRWmXz9tP7wvVaIqZGb5A5a8gUkyWQfp1tmgegovDhKV
	 GDz1SiTDFssDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0701C79F82
	for <ddprobe@lists.linux.dev>; Fri,  4 Sep 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178854783371.27822.2312142296196018790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e3bf914fc6438d9113ef53bc905990b753a0874db0395a803e40c6dd9c90b7c
Date: Fri, 04 Sep 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788547833
