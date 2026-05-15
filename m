Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 033A0436368
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778836834; cv=none; b=S2qhRiiMXtg/alWzGmZB4wnxUcZWXM1AIsi9yKiX4xFVhGVXzrC/heESK6882DOdvuqR6rNOAKWrL1JsdNLbTGKVzK+Mk5YqwbvMryqupN9hjdNMByiP/sLpjmwBCsZQNdufKhn+bTYVLjDqAJPmyvaszgcWZR1FSxWWGwdx8OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778836834; c=relaxed/simple;
	bh=23vgJ4ff2Q2SBzL+9FvCgjO/cPGYTG0++ADmiluZxY4=;
	h=To:Subject:From:Message-Id:Date; b=j+JE5emSpowipONKaOqengh5OzZc5BddeYYTtsPtSMZ0/tw0AlrejmNPcVkul/4nTRA/hTfziBJZSnpMgUxq5HKsTZ/SayF2BKu435vqg+PGyfxMXLlKkoSmEO+LGVe4ZbgmCq6Uks/1Iml4aqP22XLxrVpsF9KZoDcAgtOtGD0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccIlCey1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccIlCey1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE4BC2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778836833;
	bh=23vgJ4ff2Q2SBzL+9FvCgjO/cPGYTG0++ADmiluZxY4=;
	h=To:Subject:From:Date:From;
	b=ccIlCey1Rg5A6neBt/DCz8FQaukoxb6e+ceaCuUA+F/QhoOwL4uLuV0cdewinolYv
	 bjfD7YnxYONC8OA/hUrxTOxCqMbBXvr4BZIjIxVW6N1zahwLL84+MR6HtBG8f+j/yL
	 vOQYC0NS2uwAcmfIvp7ZvuxKBgg9zX0busiYCsOd8Zw1+sSURtOxIfgxESrlIGq1ka
	 D6tcPOjAH8ztQkMcQtsSBzKQqUTAOynEdxslZcH9pcRusUYXBSxgih4AhUeOp9LZMG
	 JPI7f2YAsO0qegJ6BSp12WMTw3WGejXbCeQw35NH5qpPSf8fdl9DZp6L+WU35l48J2
	 hI1k668/1PdBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB261CD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 09:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177883683369.20907.5443414025941152663.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf93c20265d8007d18598a4ba5ca5e3e3573133d454c9445e232bd722277a05b
Date: Fri, 15 May 2026 09:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778836833
