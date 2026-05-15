Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E862D75801
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778887834; cv=none; b=PXXcyB0nvNfO9z0a+JLqtmBHiw1LqwRQMcwDkw725wbhzapAF8Jd4TldjX1mPkQMQVJk/vQcxbnHxBH9fAttxFM2PuKHQ84ipPWHd5F66uIP6zNjPLrwMHo45QFyMhpmfZx+sVA1EjmoIIYM7TewiHHXf6ef/s6d5tZ7I+VfkN0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778887834; c=relaxed/simple;
	bh=e+Ev/MyvFuSp735gqlNi4if3l+YiQa1DpJb1mq76Y2U=;
	h=To:Subject:From:Message-Id:Date; b=hPG1NhqTy1EejLSecXbijRnUIHG0rirSLHXJVrH64dW1jZF8aY3Z+/33lHPB8zFJcFw+V7OoNiTvxAD5KiWCmol176pRHC6HcnCMLjH/XBGF0xjSbe2y+3u61vX+BbtkkSApcsViea+e6b0uoyWGRFcEPxtfjEeiUtiGruXzC+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FtMXL5cs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FtMXL5cs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2714C2BCB7
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778887833;
	bh=e+Ev/MyvFuSp735gqlNi4if3l+YiQa1DpJb1mq76Y2U=;
	h=To:Subject:From:Date:From;
	b=FtMXL5csp4SvCtoHmbQ8wYYxBMNsFnJ7QmNUMShHJFAEdB+ONpoWUgUSK2QOZce4y
	 Ci0cCqsiPuckm0h2Q/OeDteAdsCIRuxbR9X8GT5MaWxkvZfm9DH8vr3tLOtj1hM9K0
	 80FeYuvjMafi5vZIzQyKD3vpOX3rvi3v1/0IBYjdf7qF/U95LKDV4JBAp44LlKd/lb
	 NErXJRr2Bq/aErB8Intlnhzb+GwVUMX6cDMIrPsU7Ac2kQvTIG1C78QB95fcGzn5Wr
	 ZRYfyJOLmPGnwflaWGnOmuZmzuZpJG+aUN4HamEj19NCHJX+TSRCK9+6wfQX4Cltev
	 7xincbNOrtOJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B066BCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177888783368.19543.1290578316160256264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22090609445a9b7629832ed36261eb64826248bf2cf90884d48489be8a6c3852
Date: Fri, 15 May 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778887833
