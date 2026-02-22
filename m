Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AFAF356A24
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771779294; cv=none; b=NBeWKlKHV+2IsCcT9wzCBrrAxKVlkyd/5sdKLUQ+AaLULDhabF84Xj1T07ebYSQZIMnf0e2sW9scHVjYBT7cK0nnX+3+jV70WmI5Y1GUpWFDL1gR1D/MqWvTBGlRbp0nhYklJQILwwgvFGXU4epYkjiokvq1/iZ+oxhILb+e8wM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771779294; c=relaxed/simple;
	bh=3e4/NKEQSuZYWsy8Di3+DHewhFpSTpdAdhsRQVGXkW4=;
	h=To:Subject:From:Message-Id:Date; b=la9Jz9unQ2EWjQXEuo+gY6n5XHMfgwxto7N9ngFow7kjAErnIDUXj8s5/4UV3M45LXqVKM2T3jSJoudqWHvuxhSC2Vv7fqTmdw+mPTHu3vg47xWXo7EwURQfH8rjCgs0l0RhwSHwae6lHHsjazIBUhtak45Nm/0H8aR4UKYqTNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B0p7uHmR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B0p7uHmR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A56C19422
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771779293;
	bh=3e4/NKEQSuZYWsy8Di3+DHewhFpSTpdAdhsRQVGXkW4=;
	h=To:Subject:From:Date:From;
	b=B0p7uHmRLhVXAyNNFGI3/bVvas+GMf1sMvcpG22eBkxxICAsYJJO+LZb4DqsBWeCe
	 giL14L9rYHt3Zsh+K7j0YWto+OkyWaO68BSL8D8HXsBdWakIHx3bqVz7V85dNP77/U
	 nROgYGPSfC/FFnxGWlzEMXTfrDRaxl1jdW/IUHC82oWlYrGIhd6uQpcKZRx7NBHq4x
	 eppWyF5h+jXGdIQcXMP9ycJP8XcLsVUNIDDL7v2Zgs2atpE8o/Dwt9sbY73kzJfYHv
	 0k3qD3xxTVNXvpCkbV/RrIwnb64Af/HxP/yADfJBmYEixiMU5MHYslssCPQoiw01OJ
	 fFkxLu7JWXIww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978FDC636A0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177177929358.30485.15157974658080994708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f530ea949e1918c74372c1758e5a2b26b7c349e10076aa83bce4a1d04b3a912d
Date: Sun, 22 Feb 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771779293
