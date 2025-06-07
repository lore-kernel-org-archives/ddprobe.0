Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250BD1373
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749293395; cv=none; b=acxLbc4LXdr/DEEwEnglBe6FlnjPG1VK03PJGQCTLSzkeVYRK89mrrDxCg1D83nPuQk5gfkB/Y4iz3oIwb/K5/mSTHUJII1jlu2E+cKgOjNsbnhUdGUB6BuKjF8Q7q/ztR8S0w/7zhmIB9hWqotqzyn+1ZjqS/B7qhbCW+N0jw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749293395; c=relaxed/simple;
	bh=SfqGC22n3/79VmR2s21qjv2LicWuyOzwnVt1F+VGex0=;
	h=To:Subject:From:Message-Id:Date; b=icPhuWJL+ydXgJzol0ArM1Am9mNBF779AQcGr9ZBtCLDgv1cLy1XfU5P0kCvlhuGvfC07vDK5xc5j2LNZHW4Eo6tDVDz4nVOTe17nrvuP1+QrhdQfgsY0NsVX2wmOaL5pc51oG92muueG3O6CvAmgSOkjc04Q9IiilCgNYdPtNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FzGRT/Ao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FzGRT/Ao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A665BC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749293393;
	bh=SfqGC22n3/79VmR2s21qjv2LicWuyOzwnVt1F+VGex0=;
	h=To:Subject:From:Date:From;
	b=FzGRT/AoxX1pDfa+mkCRvANAtjmIC8g0XJXukMeCKv0xp4sMrOb0KWWymr88+GES5
	 D8DI2aIqNvU2RHMayXZn2HFXCUJTn1AdtZBfcwKBWgbZzgIhZ9yNDO5eVZo74f1wcj
	 eup5gKqWQWDxLUEHYrwLSXxP9U1/5HmzB7bfU2/fBplhz35PakdkvEtFbyhEVXi6v9
	 yk9qIMB8RGDse+stjyYU7AiNDOwrR17zQCHitDXBxXuMhAXYUwDbt0McDLLqevZhNi
	 geemwd4WW5FilC+jC+PfyCdF/AwcG+SDDprHAHSd1o9AiFLR4vMdpTOl28z04xK2gJ
	 TZISCwsPAS5oA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFAC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174929339357.25325.7288408262494987985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f928b988bf2ebc3b0cb567502982c7904ba6dfff2fd4e179e4d7c75e44b984e5
Date: Sat, 07 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749293393
