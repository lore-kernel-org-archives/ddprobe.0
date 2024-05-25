Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F3D3BB27
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716636863; cv=none; b=WVdVCEIAUc01O5UZdpudd5eoeZGUAleX2LJXRCJ3YVwYvVVQXCPIgSuE3m39R5Z0Jp+mvyVmakUAIWue95x4AljyGGljt7RiwqufjeB4jIjDszQvDNXb+SoLpe/KX3MGenun50dg4bFunGdMkqCBhf7c6Sg1uj9iRQ6fHQ0k9dw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716636863; c=relaxed/simple;
	bh=iZhFG3HwFMaQcjFWQp7oiAiaa1FB7yBb8p8KDSuTyBs=;
	h=To:Subject:From:Message-Id:Date; b=IiA1ofDXnrO1jVTUm7TbqlcyvuP5p9fMxkBGHNm1FpzQnd5pRotCSk374iPYLM4dmWdhMW4B14ZnZy2Pgh8Dpa9ZvCHKC3HR2l/bpAV/icnqhfcoEBTOifar0j8P2S4niuO9zI2UHdkoF8yW36T5skLz8ArL+5srLld/l9h32X8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mstDH/rQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mstDH/rQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA94C2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716636862;
	bh=iZhFG3HwFMaQcjFWQp7oiAiaa1FB7yBb8p8KDSuTyBs=;
	h=To:Subject:From:Date:From;
	b=mstDH/rQNhJbMjyB6mZaPuBoEduPkQcyhxs4JZgyJnhVzZ3jsaQPUi13mjO4XBlEk
	 HCzVDUITBva77/CwbCzLxXLs+NK6U/wB4Lgt8oVK1UjoWbxzWYzaR5DCJVsJh0HCdD
	 TbpZh2OJ6el3P26lkaj/x8Ys2/C/S0w+Yt94PpPXtw6NBRE0DslHcaSwc8LS++ndTi
	 sIMrgCY2cpITPzr5DOxu6tectoy6puC5m+Xw2Y7WZFGZeOd1gHDr+VNZPOhxq+GV/K
	 p1/hwTGGZ5iYuHmxmTgq2k6ssmG2QD7JGooK/mG9AJMM6gWMvksqoEegKi7G6HkRNh
	 xtvZe7tOX1MgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED67C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 11:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171663686276.16612.8642368109040487395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8319c74b52954317c60f461e88622e07c805642889ca2f678b8ef7e9bb6f7780
Date: Sat, 25 May 2024 11:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716636862
