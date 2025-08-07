Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095BC238140
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754565594; cv=none; b=Ge51sh89z1F12iHLcwuBwUCvxertOBlMpSNEUlrGoGLI30RKAqrqy+srAuC6SHNsqAvEsG/wkY0jukofFqmx+rUaOE+c/uG532YrN8mECsvU0sNZVolScVnEmNXvFTTqziAHPZ8yBjBxJG2JIiIf5DJRlxB/Iovq+0esRPDXTNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754565594; c=relaxed/simple;
	bh=wfcgxkttb7peGcAm/gHWAwlueOPL9HiXGPcTzCbwNAM=;
	h=To:Subject:From:Message-Id:Date; b=Q1taWpZXpBKr03ZV1dR/Cr73aGkCg5xKkBdgMorWlitbSzOhBBsiJY63lgtqgKDwemo6ryAhSuuZxk1HhSm3xXiJBj5CCV/P9FODU+vpi6acW98KhhgBX6M21boRDMbCR8mvZ8Ieh39Z2hWZmWV3Bo0nshkQwBsxQGoxvfwUdLs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=noCRDS3J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="noCRDS3J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FED9C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754565593;
	bh=wfcgxkttb7peGcAm/gHWAwlueOPL9HiXGPcTzCbwNAM=;
	h=To:Subject:From:Date:From;
	b=noCRDS3JcjXlqkjyQ1unyGOxmm2x4cVV8etKWKDNEFnpZLmoJ44LmQegYwfVQuTQQ
	 hkLZPz9Y/+K+swa+UKrq2fYsFoysEORw/8W97PFXTk9jirSN/zJqwVxghL3RSkTcST
	 ziwup+twjeVTTCOpfYlWyZEVlJfiGbd9AUK3KZ2s9OGgGiCRc9E7Sh/ykOc3FCClmg
	 AO2j1AiFbYkIN2daN1VNxgc+SLjyzrTKDJ/16B/2QCV6CU2ofVWKSf2k/GsPxo1Vpm
	 kOQum4Z3iOU1+q7oF3HgaqK9RS+zJQIIUXoX11U90Yx0ZBb17ScXDSjZk74aNEKBrf
	 QQC2e7duWs0ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9030CC87FCF
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175456559358.15050.2892542312817285699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 687a72a10fd72e32b34e5751f350e402eadb629acc65496ce7299fabfecf4372
Date: Thu, 07 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754565593
