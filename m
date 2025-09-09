Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165CAF9C1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757381394; cv=none; b=rwa3pinldvaAAG6DBVayXlua7LTmf3z3EVLIU7BXe/T49b9VgjlB19plOcAeqd8hAaM8h747fiGlTomFpywyXa85NRr2SqZG4cFplOsH0uaOfvFwsAZ0eefZ78dMrEv26AkKrtUfvarEoCYdPelf5gKnqAtdAxLSfaDTw7MqaMg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757381394; c=relaxed/simple;
	bh=+epR6ILOlKB2sogOODCd8Q6tIm7EQlRXI13HWJ/AuQA=;
	h=To:Subject:From:Message-Id:Date; b=VHP6Genmo+sNyjXTb2HxK/Z0uPiTeI8ukErcP/rPYPVaDRHZ5iIO3MTKpAftGz3acQZ1UKxGznlg7QjcFMNcpTVrFDxokWAddk3iJhXFkhaki7zNwA35EAdEb1uWU5nqDns1bzJAWmlLkxqpSe2s63QQn/nzVoJZkqWzBnha0y8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ArEGFhII; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ArEGFhII"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA0A9C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757381393;
	bh=+epR6ILOlKB2sogOODCd8Q6tIm7EQlRXI13HWJ/AuQA=;
	h=To:Subject:From:Date:From;
	b=ArEGFhIIe5dCsMyEk8MDBkP+5RHtCEfx3w5x0TKcLim/3QW++ovrUcEBhgmKxa0Ep
	 8uAhFyEcpO1Ut3KLinFpzf3qzxW45rPp5rKrFAM83L7JfJjQ+0Ct4epSrJYsz0Wkzz
	 heRXd8H7LSd4Fgxqqg0orfNtqskpvkMy3HWWfk1Udfl2vBlQKMh8woVeI3gFg/+NmO
	 kkofPolHJs0TNqXYBO//hkb+iXdfiIXeEwsxy67c+u1SUvpvM+04Oe5LOiCjpHLuWr
	 3JqglwYlg01Zd7QWrAWXXUqVyoIR+Vsef2k6eM8ZUkd1eE5R41ILg4uPZP90qNCsBk
	 caF7GcmXZZP+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96AB6CAC581
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175738139358.16874.2219542089305404679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a373d57e0a4b43fe2f8973d9f0f54f383dcd7369d61f67ae5ae07a89a4a05d
Date: Tue, 09 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757381393
