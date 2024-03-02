Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F20A91E86C
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 23:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709423297; cv=none; b=dG1eTEQqn+xZ0rv2r0dDR85Dx0lkE7jOkTsoVKGursV4lchx/P6NKKrXENjgRirg7/6U/azyWCoV+W/HsN3r/Bh6L+Z2xRgIoRUhwupSNMg7YIbt4B4edMzN1F9SFW7KtICYJIkBT8im9WMCh2ABSU53R0234z2f9l7kffFunPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709423297; c=relaxed/simple;
	bh=w5bSzUOTqhaCUzezPPGUMVB1lhAgfsGhk2gPPvsQw68=;
	h=To:Subject:From:Message-Id:Date; b=ZLn/wnRksvjSeNxJVHPMAPfcTB0GHxj4lTQw5XFIzswxmUcAY6b1F6JTLhlIQkk9ns6/+0SrV9XnqtAmLCje4rK35UIHK5NeTGlWKWvO+/pwbsww+wzQ7P1pGk0mMi57/aeIRVocOVuxsnLu3PyW9nUH8+onPiWA6Pa9XajqRdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9B07SXq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9B07SXq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A0ACC433C7
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 23:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1709423296;
	bh=w5bSzUOTqhaCUzezPPGUMVB1lhAgfsGhk2gPPvsQw68=;
	h=To:Subject:From:Date:From;
	b=N9B07SXq3Mb4ELpjyF1RoHEatRCaZIOfqqSMHoZNzoL3/Fxh2Rm3ya9FZEfA/j09n
	 ba61471k+Nt8S55KMASN5RHnStILvv6AVFUQNuh976LPBsRNzbmnIRjT4ZxV6x2czq
	 B+rAFrWx54E0p86PfsWXTD8ZJJ67P0ENa2nuaAr+oBEnMouTMrmmmcJiNd7dvGR7EB
	 xLnHoOygP8PCqH6DZ+S8kZXtb9JDqh4biOGSzmQ8tX/fHOWYvy4LvC2Agp4lubMFB6
	 /wsj43F2yiuvTAADbBQ4xVpzutXm0fU4MoxrevNx1jke0HACx+8Fy2E1/HtM5cIX8H
	 LV3RwWeNzvi0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5EE27C54798
	for <ddprobe@lists.linux.dev>; Sat,  2 Mar 2024 23:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170942329638.32414.8240445420981528692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f9f77b34979020019505cd0aea74b7067b75dd4a71b9d706abd385c3d7693d9
Date: Sat, 02 Mar 2024 23:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1709423296
