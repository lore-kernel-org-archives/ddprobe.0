Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50B814AEFD
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715542943; cv=none; b=X80qslKp6UmZg+VUvza+GVjp2AAmLsREMgvc3ctldN/AlDmCxi+44FkCfHz/X13WB9o1g4Jy9flhBkZIsDTcnNkhokV95YgqhI1gt8au6bpUIB3nLzPDWwxMnQG/3WIiAyreT35/ughKYpTxc+cqH+MAYsddeTW0DyU7IE24+NI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715542943; c=relaxed/simple;
	bh=pbQyJMnJLDSvEev1YgBH/FVmweyfdP1G4tQmD7Yq5dM=;
	h=To:Subject:From:Message-Id:Date; b=eZlrc8UIzuYGmt3Siy1lQgbvjGOwjFIW5DUzHJvfHBsig1iMybIIiiUWre30r+XkXGP30kJXZieiEq4rzO9C8i0VQ5KuqKuJZiOsY09osyDfVdLHhwOZfs/6GEvjBVdYpphVRNJefwFc72rbiopezqceWk3CWFBSLsHLRzBYQJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObhwDnn4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObhwDnn4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFFBEC116B1
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715542942;
	bh=pbQyJMnJLDSvEev1YgBH/FVmweyfdP1G4tQmD7Yq5dM=;
	h=To:Subject:From:Date:From;
	b=ObhwDnn4R2ru3sB4XroWp2PRCmtDcbnYIfI2L34YVr1ndc47cOBGg/zDObhWFD+Jl
	 p/ytLxJ0gOrJhqmwFpC6H/jZTUcTp7jROp2P3DjHYgH/wPXCwrMXW+wk0jwZpuT5DK
	 M159g2bo86bzswPQcR/5w+DOzETOGCEDHi46nqJhj6KblDzgBF2N+50XgSzZwsDsZR
	 mXjxxQDgVnpiMAa74vUo3thuOMb9tkDGZ2sJsBr0uiC8ocKz/G4fJHeHsRalJmy3fC
	 seIV8cJ2GhvQ25875ju5aSJdjkY7UuJo0JjN5o31x5PcbbWwk1ag08hQM0S9t3ROB9
	 dIsA8KoizaCiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCCABC25B4F
	for <ddprobe@lists.linux.dev>; Sun, 12 May 2024 19:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171554294276.17336.4341827322756665919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 11cbf7c86f4a159dcb59e183355b18ead530c6820c083ea17f2ee6441929cd69
Date: Sun, 12 May 2024 19:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715542942
