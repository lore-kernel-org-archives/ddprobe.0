Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F95D39CCF9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784048914; cv=none; b=YFGP5xM+r+FCL/UFMJ9Tq29Di5cDZh9s7mFK0LCnaV63WSZfxJHja8yU0njnwlFwMdwUGRsWfwR4cGtd6kKDNq/82PgfBjLcb4Z+oBGc4mj/2rfrexyGSmvAagkJ3A6RtVKs5X7yz9bAc7hKy2BvNZVck5G/mf0/6f+dRtuPjCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784048914; c=relaxed/simple;
	bh=K2MEBIJIp6pU6To9CyZcEhY590bVCcpsIRdE9soEb/4=;
	h=To:Subject:From:Message-Id:Date; b=ARViNRncvO0PiVL7pnkaZ9b+3VXH2xuQAk9bc4CBRJFnLvDAYCY7tJHArQr5rcQ2QPadAUwiS471Pfl1bUPE6y8tuGRvOQ0P7H5qDyP07Ff4JQgsfOF9jrC7KBMTEYccYXnDxjnlmKToJAKoekUXb8h3iGLgLXbG7op4oZacx+0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QB66jbuj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QB66jbuj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D608CC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784048913;
	bh=K2MEBIJIp6pU6To9CyZcEhY590bVCcpsIRdE9soEb/4=;
	h=To:Subject:From:Date:From;
	b=QB66jbuj9nj9fPDlJyclzYPgya1rJMg02o2iEsMcT+0y7kdfjEisETC6gviLEUhnt
	 N1LIjTzQStAqHormDT6DbKBVpeWjwDK45gB99n3XqyiBcFoHJTcMW/2JD1ovd2LQBx
	 Ys4alg6UPVxwJfc2vGMZ5D0iLvy1l0HXvCmaV9ywaZmrd+uHVok0zCW0QZTnjcRdDZ
	 biujbzH255EZxSUXDpEzV1M3kU/588trbh1RokxFXRY15vgk+Cqx950vONKPcdY25m
	 29y+mjl8tcKOXcKa/g5k8iWq/N7IC+r/PvEJhMmW3BYDce/d6I+2RNn0utum0//fBD
	 t3VIZOd6r7DTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF4F3C4450A
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178404891370.25317.15546383052085806495.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3411a99bbf9c2ac6ce4be97fe6003a4eef01fa3c45900384ae45d4d90ab097f
Date: Tue, 14 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784048913
