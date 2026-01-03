Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E97D35975
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767450834; cv=none; b=CgqRTbG0rbAFHxLmRNwKWzC6GcMuZswazh5zfyZkChKq0Qq8bXGHSy1CD+ZutcyYEPXmEDac7t94DanZ6SnJGOPA5vPiB1zGy4kzUSvycTYR34Oq6h06Wp4lkTauCV1b7Ci1DLC5VW+kEHQsNXygkV6dwgrhLx7PMMsFYZ37kcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767450834; c=relaxed/simple;
	bh=QGiDC/AohYFdblIiqJjCDscZmNWubdN9Lbu7vA4qkyc=;
	h=To:Subject:From:Message-Id:Date; b=ZxNM3M6nB2aLuRfJcqJ15vTCvg09dzP9RqGmnKL9yPpYszOuJTW3YGvAGTO+qDhblTRwJ06+cQ1OG5UECuHsXEwzuK3U5aQu3V8pgYBdp7af8VFH/nJdGkIGFIMxBSiU1wTjzqtRGRzmgj4my/1BtujdMvDunDxTVffJVDjLUUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gr2Q6WeJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gr2Q6WeJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56B5C113D0
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767450833;
	bh=QGiDC/AohYFdblIiqJjCDscZmNWubdN9Lbu7vA4qkyc=;
	h=To:Subject:From:Date:From;
	b=Gr2Q6WeJA72kGS6EUmvMtp13qBBl4VvwgN0M/7ojVAwXcXfNhmxsCcp+o9T8M6I3O
	 GATrsB3/YhQLL/kt7IyAxZvwJj2W9JG52siHNE0RD3as/CNNSnePy/2IEFe0o4BkDv
	 e7Ry9uLf5SBfA4UxB9AQ6jxMQP5HtluJXmTOaSId1b3Q2nE/fu1uUDkdTdr+1cn9T+
	 juonDH8LLXcgwSFZEvxRD1NBACj+pppuWl2dnZd349Pq4dpE9aNVemKgHoQM57Ttt0
	 qlBHcC0XXzYhaA6E8O6V2mvbA+xGa0+s2TvW0tspYt1yBnJuiugPEgxGNDKPj5sm/g
	 82esGo+gezQGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94715FC617E
	for <ddprobe@lists.linux.dev>; Sat,  3 Jan 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176745083357.1309.15988533961534328070.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a655fe262ea43e1e4ac62be8bac6743f3de58dea7eeab079d8dce7df3df344aa
Date: Sat, 03 Jan 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767450833
