Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B8B34362153
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785947434; cv=none; b=bDGMl1FX+t8x4V0yjoSX1dcCc/mmAnApFtG2ug5Ipfk5BJ6NuKY1c4iePVusvGhxWfS522DmnW/hOcKSuLv0QVzEtoqexV5J/vQXh+AZZOWiw2DglS7NCt0L+k9gPbXtyh5qUIaoqGISDaFAeMA3OcxWPYwHTUr5V4rYYR0+IiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785947434; c=relaxed/simple;
	bh=/deCSbaLKTzc/zhCciJ5UI4gfzE/MlzOa+T7kI7T2UE=;
	h=To:Subject:From:Message-Id:Date; b=Vi7dvBJOrOkrAk09iKpHXJE0UVr3uxHrknuPPdnzrQVju9ILs1QEQAiWl2AyKzp8uYH9IrooL9gzcq1RCh7Zr+riLeXHwQLndaY5niujvq7O3TaQksims/FTFNU5WcbcgVQ7474AiMt67ntMuuqnLan8cn9jIwvecDVrIX5wV3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HG1pxUAw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HG1pxUAw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2396C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785947433;
	bh=/deCSbaLKTzc/zhCciJ5UI4gfzE/MlzOa+T7kI7T2UE=;
	h=To:Subject:From:Date:From;
	b=HG1pxUAwiqp+TgqXmGNjAhc4sOxDOtsChW8LRLbna3S9m0WYFfv/PIXhJY05R5MXb
	 jHtSYrO9+dgR2DhRpcpI+1XeaAjFINi0vv39FdE1jhf1opB3587VMKeTwAg+jXSDrb
	 bpWF5OygJObPI4sULZlr1kuAQ3wWOC+Ue/okn9EHi/yeq+y/F6y0/y1/uy5mclS0xn
	 GIFFAI0wZ0kb9RfmOQU87TCpljN22rqUgGPNqg79IyoYesmXxHigWkFmotleT4Rt2t
	 Yf2jpu9yOfzUzeVpuWzuPRvUAb3zcFjzUnZefK+SEt0PSjnr15aNDiTfxkAEUNWRMJ
	 C2+94eoKd6DLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADF39C55ABA
	for <ddprobe@lists.linux.dev>; Wed,  5 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178594743369.24405.7955086462796959135.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6acfb7d4e6c16d41e8529a686ce6aac62400e168cbd6a5cba5e63a47c997e89
Date: Wed, 05 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785947433
