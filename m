Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE9AC2D63E2
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757665793; cv=none; b=rVyWFmlZJju64eXeMCfQ58dsYCTdbqUYY+gjn3NRMi8vycpme8LzCReeJ7YOkLhpzp1nrLXu07fqfQiEqeumP3uQWkKUXH7HHcJumqFgUiQimIh0hz0bws/hmurZ3pwnTHXBYckhzeAJyRcwIIKmNJj4WdTPWxDszn4j5c4QeWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757665793; c=relaxed/simple;
	bh=pdYBYPTQVdMiw/UDkFh+XcFubs3xKye/fSO6+aRKY+A=;
	h=To:Subject:From:Message-Id:Date; b=MNefsV5D/I41pIbq/DZGwnt4clyXRmaEhGVrH9mGf4QazzGDTQ04Qz8x65mwsPQi35QyI9XfgsuADJfVEo/jZA4JqkVagz28GeCuVt/1V+YWMYCuVchCAGzYAcEQWIpMltfQ5gS3qGHadt2uiYs4/zfj8nPLErcA+0W/0a967/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6kR590N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6kR590N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1127C4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757665793;
	bh=pdYBYPTQVdMiw/UDkFh+XcFubs3xKye/fSO6+aRKY+A=;
	h=To:Subject:From:Date:From;
	b=U6kR590NxwzGjhiwUjte8/1QkBnDkIjLjF4a8yE/6+FSCTy9SYn5CYi16SML0DovR
	 z6v8LMdBPgb2FFxiN+MR3AeaFBHdigCCqXq+ast1dXrwBSCr6ooX4WEzMfRgyAWbVP
	 01VszLCURrBswXVz4FSbhgGXOkvJFc0x8uZsocZJ1j9DZHoykWr6q03ktgyT04UFbB
	 cIAuFXTS/BRuLwyNj3HPdO/jCN+cZ5kYWrzBnnSzhPwcC4l3tVByMWyv0FYY9XO9s7
	 z2aIApSZSr93WgJcIx9r60Gq+dJoHOjs8DwTEtQcsKcLfinymyL05mLGdtYHLHMr2/
	 Idl8HimKWch4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91740CA101F
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175766579358.27652.6783029727544983724.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb8b0ec20fd234de2a6cd558b837040c16580a8071c0bb29a820d2e2ea303b46
Date: Fri, 12 Sep 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757665793
