Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E8834DAF82
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792410034; cv=none; b=L7guHlheNNq0frXdLq78WisR4VZSRICzpf7M4bdfQ0B+KSr//PVLhMH7/NRJmJkxcReZ+cQSq9S0KkQxjgwyVoxov7MD00LO0/lohOA8pSO2lyiI5zqhFZshAHC95eghlreNKgt0yNGQAfL9YkK8FHc8vlJqxM+zPHUwAjLg9rQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792410034; c=relaxed/simple;
	bh=6dto7pP7N00y6hBQ9A/XLIzIfcl2A4egqT7cmwAaLlI=;
	h=To:Subject:From:Message-Id:Date; b=fzowgu/VvL4gEXOLLHakNnmou9dWBD5bxEugGAm9zDXv0APrjhRIUtbSZkFoC90tQQdBJ3vBanuVjb96yc0UNg9oxGM5/GeTw0/lyBHMrHAU0QVnxjUEIrWlsGmDt2bZsH/UXugc0KeDPjUQU8CuhaD0B/DJIFsYjtamfVpZkW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRR+F1om; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRR+F1om"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFA19C2BCFC
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792410034;
	bh=6dto7pP7N00y6hBQ9A/XLIzIfcl2A4egqT7cmwAaLlI=;
	h=To:Subject:From:Date:From;
	b=qRR+F1omzHTjw6JwnU1Nq/oRGBX7UnwPQbVFPJNeyeFmMATcX5PbGYe87ITTiu4Uv
	 3EZTkCg53KeScd19x6pB9Z3pKNZLGNqCBHjKYG90HG1NzPxCmQKbFNLtWJjtSkQebx
	 a6Tq8pEhM+PORM3D9CyEa2LqaMdqhE1Mevrm5PwOEVQ0NQWCK4ojNpHBrNG0VgI0Py
	 8BX6dZdpZq6b49S1DG3oV1DwBf+hxbybaqK67T79IqDBqOrTLL/O7BeSio3aJB9aSd
	 fH1mfb65AhvMhU1wvG0YhrGwOGDL8ywp5fizX8NF3yRWGS+CVJ0iIiOyO1wP+erJqX
	 A8VFkVtP/OgbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE226CCF2E3
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 11:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179241003374.31877.15966230736633368461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eafbe6085190c51a34e098e62339c87b6edbaffed53e26fe993d92b44a2e3a6
Date: Mon, 19 Oct 2026 11:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792410033
