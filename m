Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B09D8C1F
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 01:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738202154; cv=none; b=QYFfhrGWI4VsYFzN2XiuaGbsMrveYSmvVqBAzkCCTmpMdb9xIWXOtjv6jm/E2U8yUuqWiLT58N8li5P0eC6FzxoAhDn2RDvO3ENqAzLX4+FhizccJ+46yDM0bUZKWbLG/tEXX9bTLor5+6CuYUiw5tfDvcE5Gx/G2sxn7JnOH80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738202154; c=relaxed/simple;
	bh=D0v91AgzpIPfirBsHro8KjmvqPT2FVSDj+9Q04zE+yU=;
	h=To:Subject:From:Message-Id:Date; b=adlzlk086Ndq0ByQHtyA+09/bL6TXg9UxB9byh/zKjxAIuN6YpFdA9hp3F0EJ6HUqGDchR+SRZOWcURnFUN0qzDAuRFe3rdDvLb+4PFG8U5fwnjfMgdaKnd782LKL97Vb7cUBT2WFdMlpDJwGdIb2sM+cjx+i1iSwxfzDn+5Tjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=taGKUk2b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="taGKUk2b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5BFC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 01:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738202153;
	bh=D0v91AgzpIPfirBsHro8KjmvqPT2FVSDj+9Q04zE+yU=;
	h=To:Subject:From:Date:From;
	b=taGKUk2bR3A97XRAXAq7ARURAr1ZxP8iPfbd906ypniDEAPi6KFI1lKsMbCNOPgQS
	 3kNRL1SzUCT0UVzGTb9+FkBrQpFNvxn44u7sgBPRRsdDi+vTPHVlN8wDXrYK/dVYmD
	 dZRFBJR2QAUwqTdeve00C38R7d4T74SyoareeCMWZcA2G29toay4NPSJHVz33Raec/
	 NV9ZMS9jETizu8AezVfOWj/WletpoOf9l9LRN612tzdMIpaQGoH01pNGQGDqF3ku7C
	 bDAvlFf7phhB3mvN+Ho0DwjrMmU6tQc8qOXS4T+K+whdLldN4Kh8nK3k4++q/arG38
	 mKziIGCA5UV1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99682C0218D
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 01:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173820215359.28927.13883324366762344792.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a56bc0a7ee15809be85de32f2a1fed5c246bc38d73626229ea29d6e0f2561cf3
Date: Thu, 30 Jan 2025 01:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738202153
