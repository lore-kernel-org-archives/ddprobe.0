Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AF4712CD8B
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743974394; cv=none; b=pEwaqCAcimSqZz3WBFwHDAuUROKf5UJWD19UtTOHmWe0tdfLiEK2K2EXTCfC5A9Sy9iFanC8RSSCxgjftb0YRCIP0tUlbxDd0AM+3KIt9T3zrMWqzGapmbQzoDWuU5WvhsRXLa69vk6DZRSJnJegjudEoC+dEX3ouD9v5wg8OG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743974394; c=relaxed/simple;
	bh=79nKSNIu0h4bHIiVmRLpW84Tz0iRvQR48Cs3u75OcVQ=;
	h=To:Subject:From:Message-Id:Date; b=VsPd6bZVoO6/xrVhXMN8PmepMAwnCsGvavtvRZYHCnchJybmtfpWzsFAaHt6dwiDGJ9wcvrDiK3SuigCgGrrBKoh7H5RgLRmpFBgvtg31itvu/0l7GQ87/h/Qt535Vvha3t+sgFY5Oxh6+vEx15w3+t0UIoPpNo+Vu4BcR+QfPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u3+SbOlQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u3+SbOlQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4844C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743974393;
	bh=79nKSNIu0h4bHIiVmRLpW84Tz0iRvQR48Cs3u75OcVQ=;
	h=To:Subject:From:Date:From;
	b=u3+SbOlQqxQGXusQOHkfrzDgpXA6GoktDCY3va77rLztSMjwDk8t4DecdWx2bqQiC
	 3BLMFIaJgkLI9iOzeuICcLoY1ofQvP9g7EY245AAzLdOyfT0lJCPrHrsEAODNF8wQx
	 r7XwLvtSt/1ITTbfqBFSPXi4GIPbbtutRKmEF2H+5BjyNbPWhk/6CMqZnE4MGmKp7X
	 /I5hqcA5J5AontKEGSeF4CPAizuXc4y/4bI3vF9D3P9e8jXnTHSjmuYPHftHWbaCL3
	 MJ2B32xh8Gr0JO2DPMw9vedyDVVLcJNbVhxopkA9LO7kmV/3miHi6AA/Dj5gJNxRKd
	 gbuaq4Us8Oj7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95423C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 21:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397439360.25968.6123280353054369350.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f6d1c908d8936de73c89c4d52aec55832127907a84dd82b52edfdb13a0b58b5
Date: Sun, 06 Apr 2025 21:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743974393
