Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F81D282F1F
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786155634; cv=none; b=XLrtywl/NhZzk7HxLEmyjxiaJgP7Y9Slu2ah+iZGxJc0TVWruNhx2WgkRzQnaq6CoRwTHGldBs3Kmu9rC7HbEEPzeGY895cpzdO0vD88ANbk8EgAj2mFlfgLcjMqAyrDx2k2Od+0u5kcov1pJWMEFsaP/QinZZeP+v5Wb3OFUCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786155634; c=relaxed/simple;
	bh=eMyxOy24/T/MnceqkpSpDmDMfxuym4Fydcd7o2N2n4Q=;
	h=To:Subject:From:Message-Id:Date; b=CiX90CO/XlHWp5OxhHcoqBpzb8HXsnj92tVZDzGznUtphLx0bivemS3PR2Sjxj+JGaw8ortUFA4Qe56mkkUEDYl2wnvaZij8b5O4Wkqp/ZGtB/vA8h1WR4sqRRCLDrIddWgr81vTnJSeelNbmuVx2oR+kf2w4FYphB+L40r2ZbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RWpIokXG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RWpIokXG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F92C19425
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786155633;
	bh=eMyxOy24/T/MnceqkpSpDmDMfxuym4Fydcd7o2N2n4Q=;
	h=To:Subject:From:Date:From;
	b=RWpIokXGo/p0iLwlyqUQhInT7cnthytq9s4zaROWB/xuqWBzcAPj9u0TopsMx5z/i
	 evoe1HbrmzkTqdpwevLSBcRiTy8zCsXIQ+9DFr62KwDuXJyT9IslePCFeK3G//VSS6
	 DOveXV+XhrtL9jvTG1bSx5YnPmVxfQ3q4vj05fYCP5E+cbkvu3BX9L4QP0YAlwo+rm
	 m6bbv9BEhJ7TSS2TulQhNenbkf7Iv+phDPdUkwAmR0ey0qgIKEUkq1Iv4h+zAD01CU
	 7hJX/WZeEIabVXsgwUBn62rsPKA2HPpQ0Si7PLFibcWFlTEM0kJ80LFgMJrHAqD7iq
	 F8R7ezV6S07wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1F05C5AC82
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 02:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178615563369.9462.14125614338326786261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f39f320b4e7c70a1856871a9e2f181d7a546042a5b147598f0e554ce192e3c
Date: Sat, 08 Aug 2026 02:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786155633
