Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 480F5482D7
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717112063; cv=none; b=q5M8jeUoc3rRVPlIrHVEjTE746eF1s4kmk7e7F5hxI4QemcMc3M8qDpVgh29S9F5NTgPWCAnVXnCR9QyRhY+3OeQy1Tl0UQBVqSAo6+WkASQeAY09OZ2Y8dZ32e07tBzJmAvSyQAghCuVuYP3FqC0dbkYlOgHbnfHiOY0FPXTs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717112063; c=relaxed/simple;
	bh=77jALI0rgLFxgK6EXx49q4zZTd9O1cqVYLO35BGebdI=;
	h=To:Subject:From:Message-Id:Date; b=JswuXvrZj1iNuC+cGbwPqso3Ilu3S9TYtxnhecLsc6IULhbEDUcM0WVc/D4JbX9an1c8ExHvQ5o+GjggTBTw4LfBmImY4lE4fEfaT2ChDiylxQlk9TFiN+Y3JPLxAJIR/trN7TBLBmCdvq8JQrrVzbA6K4nxqMgS6+9FlBrXwUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fF+dm0Or; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fF+dm0Or"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60EDC32786
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717112062;
	bh=77jALI0rgLFxgK6EXx49q4zZTd9O1cqVYLO35BGebdI=;
	h=To:Subject:From:Date:From;
	b=fF+dm0OrFidIuOrcR7CCJ4mHHYT5Aank9Lc8X9Dp1SMwFSuwsOexgtNuENH25aFdf
	 vqFffPWsFrrV6C5Cjp/JmzPxDeDqa2wKkTRPgrnsOzv9sT4VVKyhr5FnlgMr3XwUZA
	 OC7EoyAyWeMjg56xJFfHgXeKHtNgO4rRKVNONzgX5d8AkLdgcYpSeoiSjKfryj99bO
	 REkuDE5s8yiWETcpyvzLG+tia80rpNmcbS497p6TmiJzuUi306ZM+tA4ibdlY2ntQl
	 weo4zrg2Xz2TqkcWHCu4Mvmpmz+7+vpOOEuCn3M7IMIWWwg6mBRA+RLQDZuHbTG4xJ
	 yklLAnvwO2WCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEB86C25B76
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 23:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171711206277.18948.9177977734446468538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d3ca88b2309aba9ce901cddf6d1e93b120418e7143ee9a144dbfda84380e72e
Date: Thu, 30 May 2024 23:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717112062
