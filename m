Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11F4F302760
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762457394; cv=none; b=l4JvojAOZT+B3wRalFV5VnD0b8FKn3JKyHOCBVHMCMbPIKS9RyQIqQ3wYvuVUE/B0LXa+wnJSLLCPgiKHiP/7DeOGakmXh4a23s8TREoSX9tCwW9FALfkSXMF7tMgQK7FCKYo8tjYOqmLH+3lku9CWIebmHk6sulvE2Nyhj6ZGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762457394; c=relaxed/simple;
	bh=4b5c/F/PdyZZNUScx/J4Rnd+pJ3QlV9U6TyK4/eKKdU=;
	h=To:Subject:From:Message-Id:Date; b=on7Y+u9kOGIKcJrrDFjFWmWw39c9ucmCbagL52YScHlxgscWw/9/laBJ54xqwJOCcpbN8US0pCEZLky9UGKKLJddiph4THGf0z9BAw4Fuapa9RPDCdT+UlRZEYUiqkrrvOx6sxsf+K4daB6WQzj7MBBOTRangG9qgAyCDqPk57E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=glN6dH48; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="glN6dH48"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5448C4CEFB
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762457393;
	bh=4b5c/F/PdyZZNUScx/J4Rnd+pJ3QlV9U6TyK4/eKKdU=;
	h=To:Subject:From:Date:From;
	b=glN6dH48b1rNwb7E35hA735jZw/PH1l8HDZgzHGsRsKX6SQ3GBDPL2D8ZIwb3FULm
	 5b6utKsGyUrTfox3300erMyxLw5VStCu3uQnwMygfzUNT79JJ8PL0sq89OEwkyjOes
	 CFxurnVfqR5efhDgy7yNZAxBLHQVKbDZrYFzBe9Aqz0AoIGthM/P4iwcKCLx0ibimr
	 h3uyn2dNkEo+/A/Pf/aYGsxRE1zQeUb7GqVSro9RjRh4WOCWhrVQJpmscFEMsdfXyf
	 iSmGnBqdyRTy/Ud2U21ZF0LfD5jmTf6vU+dxmMuLD+ZSTd5RPiQOsYVIdlT9yyQQew
	 V1kf2kzRycq0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93737CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245739359.28576.15662555211798723023.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f36bc2ca9d5f5fe7b1de24d81b5cf7bb41f49ec06b9c04c5ca4d1c748f7e0e2
Date: Thu, 06 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762457393
