Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B409747F
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757207394; cv=none; b=G1dzQEe/HEOI12Mp4D1HfanSim33pwmW5iivfrFjzXBNtJN28dd0VotdPOLZPyjyP6W4WYgtDMDOU1+RgV+nlVj0QwrDRPy3mvKt5lzjLEdKMT28Z+0G0Y6si8AOXBXXRVrAZea25l7GpzlmgG8FMsqLfOKCF3Wk+F/057NfAvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757207394; c=relaxed/simple;
	bh=QIHd790Lf5Z+xslXLjeuwIzX8eyBjSQCWttGfqJ14k4=;
	h=To:Subject:From:Message-Id:Date; b=qaRFE0V6rJ9T1pdi568DHEoWfXxl4eQZ+prVPHWBgdWm3hIEsU9J8WVmKW3o2h+laGlUblUzesmMr3ifHZcBrPFST4p754wCIomS4/zMj2u1qX/j6HYmNfXRsdqCPgRKxjENoslDw14aW2v38/Bkt93zlcoYMzKFE90lotOmLXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=afTW9Z2G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="afTW9Z2G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBEAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757207393;
	bh=QIHd790Lf5Z+xslXLjeuwIzX8eyBjSQCWttGfqJ14k4=;
	h=To:Subject:From:Date:From;
	b=afTW9Z2GFyc0PMyqIyRNCUCPNItvjgiykcckSbo0USI7Ucu3f+V0EI5Vs1kSfpb3G
	 rfvejwY8Nz0OmSlIRvZe71/WGdAHCqn+2xg/69q2du0LzQzBblBL+61CNwPK1tVnLG
	 54XVCOb554HxRa63xID3Mipmywxsn/uAhixyQWpqbpqtqzLZUWvglpBc6v6YZeuhYt
	 x2ZgBNb8NyZCgif+VJGHQDDm9xhfb2ysFbxqvyInbXnleXO17OFEi/xUNgpP+iqR6Y
	 WlXbdaEcIP7bi42nmdOpMpjWmUpV40my28mIZnvkTzFU4ITftxaA1DVyq0p3u8G+W0
	 xCOHaOWE4BlBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F192CAC582
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720739357.1520.5975136183508505908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b307082a9f369e2521c4373d7e71ad719109eb19adae107fb75287d6b242b208
Date: Sun, 07 Sep 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757207393
