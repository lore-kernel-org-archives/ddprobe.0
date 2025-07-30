Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E2FF1F4616
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753903794; cv=none; b=j7SdkiIkyqlNEqxutDenIeTSukZZZG7Y0hnnIYFk+tdtMeni7xsyhaLTgJcxssG4Ncl0ZZ0Y8y/CAXHKOuGP8sBR5jSdMC8tD0spCjEbhHtW+hi4tgO95v0Bu/pCFfIGt7ZfksVqr4GQ46+suqsdHs3p6OA4yMLY6hCrmdk90Ss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753903794; c=relaxed/simple;
	bh=kWuGUvPKHv8aZgWC89nWIoHBP6Gz8Zk/oXCqz44jNvA=;
	h=To:Subject:From:Message-Id:Date; b=SfgWsfGO7H6Dq4zHUo44emE+NZAlgqld2DIo2SvYhDWxnw+YNJJTgb1Tcb7Pk74dr7y8JrcEgY0UibhwBo9MOqB0anBubyC/jMP4MjS8mXPrE9Eqzfl4kd8c/L7G4NREEU/GptN0NqhA5Z8YWu7AnO37Y7JQa/eJKX8QeN+nIow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pm2QesZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pm2QesZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2DC8C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753903793;
	bh=kWuGUvPKHv8aZgWC89nWIoHBP6Gz8Zk/oXCqz44jNvA=;
	h=To:Subject:From:Date:From;
	b=pm2QesZzeqqYbj+3WNBZFcoRzQB8mAtk7puXwXxxmraJAtGo38kMMGX+iu74IDm0b
	 uNu1iTLnCrfGVrAD6s9HCtmIMVKYCjJI7YNUxJV4Te113KhzjXG//2HnNwC3CsvMdP
	 X4TJ3V0L8/goZYJPGFKR9SEoc+7mYrFg8IgwFpFpABPGPJ8g2/ApBCfvLRw2YRELNO
	 amFwKWvnOOX0uVaraQYhlqcrv87ONpaV6ODJ2UjGDdbi8gOx1odtUWXi4IIYkzn9Im
	 NyInWU+Yd8bfd+WDmf3K6KeotLZP8hlX057HwnR0uol/jbJqG4qma8FxpB29KwJfcK
	 gdZXA9Gak3DwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9156FC83F26
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175390379358.29138.3739240198966933777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62372901784a0cc0c36a61753ed6c53507225b18326f706c953b89540e37c5c2
Date: Wed, 30 Jul 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753903793
