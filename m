Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F8092DFA2F
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744723794; cv=none; b=RRZHdBCc7aeSJx7lPW4HNRAc83P/rN/dOVqos+LPQ/leLtKfXFln/pyA861YtMVZV9YpLIBrMqgAU7eB8vYfHaFk8UpHKBZW+AdKZVvOHSHK/EL+gUC/Xp6jMEmKqlaBpS42uWGRZ3oyyvDoUN9sGZ63zK8gabkEMCaoECstIb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744723794; c=relaxed/simple;
	bh=dJpQk9m3/NMHmZ5CmvBocFINu9YYj4657apyl9DPSnc=;
	h=To:Subject:From:Message-Id:Date; b=EmTbCstubkelxkOoWYYwjSH3M8IgEXJIsT4f/Ve+Kzxc+1TfayrotdJoAvI0BrnxiEWdOXIguwMN1/iTXGiM/k5yg4sTUFPVyL5+NgW+Pq3JRvMZ1MVrMMoH0CUbYDujYLTLdltiZCvtCYTcDCeBZo49qNvJmVu7fyJho3jCkto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KFw05uIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KFw05uIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88BEC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744723793;
	bh=dJpQk9m3/NMHmZ5CmvBocFINu9YYj4657apyl9DPSnc=;
	h=To:Subject:From:Date:From;
	b=KFw05uIb6H+0064RVB9boed5Y/i4264UVGrqMH/2do/6A/jJGBmo2SVpK2WoVoMu+
	 UbuxCtwTn+DlPt9jk/vxm2IJLm567TEmusdZoiEQ7S4xZPfmUIklbl+nc4bBKFMB2n
	 nQqMNXqo2HUOcXfsIqMHCfReLJapuESr3CuLazi9+/8Jb1ksppdlmGzXX3IplF78Yo
	 3rgiRfQtc6tuhJO0TmupZx4xW3RTeYdJnqzV1LSq0TM18ykGoV1czkxWeUjlgoRPke
	 uKJJ47mUYcs1AqWqydo52cVjad9+qXpgtG6mFnnuxp3871XGOc9RCpoOiDwT7ihxkd
	 Lx2JPpRvB/b0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BF0C369B4
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174472379359.17139.408232219813110016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee44f3a210cf5b9d1e0e2c990654ebdcdaf777ec14d313822dd0a0a3e9acd210
Date: Tue, 15 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744723793
