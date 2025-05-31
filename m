Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F7281411DE
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748734194; cv=none; b=BCGSj4F3foAOZ1oyCrZ/0MFO1hWBEtNiehfGqgTWbdabC5XaaT3UFngYyJOuD5OsspnHXlr5NOJSVSBrHghl56uzK70B4wom3u3QHZqpHP3DRJmlM990vVtSVNYAiUgbhgVLqkept4laEytuXrZx0FkpvRBISFzvm+o3kURvGVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748734194; c=relaxed/simple;
	bh=JAc2tGOKcC6z+EumVYG7588/BZFM5EMjT7Z0f0F6XeQ=;
	h=To:Subject:From:Message-Id:Date; b=OOab7dMZqJ43uFz1mKrU40cLZX0gLyRG+iJ1yakDeCuKl+KlAGoTWSlDbFtkftlTs1/uB5NVdQ6mI/xcEeuq/LYSopYpqF1oTuTiU+ENiPfntaGKrIW5txgEriqMQ2s5mngbq1kK82q3Pv7pEPQ56Zqg/VpPHoIXSLF7q3NC8d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPEy0VTb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPEy0VTb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6533C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748734193;
	bh=JAc2tGOKcC6z+EumVYG7588/BZFM5EMjT7Z0f0F6XeQ=;
	h=To:Subject:From:Date:From;
	b=gPEy0VTb+MzY06xoPLHXQhsTtSIiDJyAo7E+EdeKBcDYrtiTXP8vjwSDrDO6bKR6f
	 v2Bdcy2tmZ3AqYHvk6HfGeQntPF1Ypbl9Cvelfol8HGQqBV5GlSogZA6jN1fzMSqft
	 bQK7FmO+lxaP8E+bYNcgrEnCo2SJF2Wzx3xFRmg/5p/KLwYLE6PDQhJmIPCUOs5Wqh
	 E3cnFpCk0uy20IgHQyct+URinisEMK5yYRWDdNtuOb82ww5iwfQ8Ywl18l4MfYPEkO
	 ou6kUjZ4HVGh0BMdTFL3yJQAed4RXm1DSHWhOsW8aG7U3y4GhcKhUfYFAI8SuPQyiB
	 FU31UvMZ+XYJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F32C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 23:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174873419357.19139.1593461096910175451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6123a43fd8360e3cd55a31a96c23f981f3ce2ad7d062f37393d080d7dda999a4
Date: Sat, 31 May 2025 23:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748734193
