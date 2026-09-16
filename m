Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 628153BCD3C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789575034; cv=none; b=aPS0FN8DjcqDDcWlQPpKUhe7IHe+RbtICaGl9ZXijU7YDLvHmexLr9q/ZLK27nw7fd7tCVW4m6D7NtdtgC3yfMyv5wLLoy21ADgM/hA5ZTNtOUMNvkkFEe86BlkBnEQgEdgxkYUEvLwVzPgWLRtm+AueRf16lWw/UShqwwuhfSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789575034; c=relaxed/simple;
	bh=IZTXpfmg1LwnSmi7X/wCziLcUk6OxuR6GxFTTm5Cp9I=;
	h=To:Subject:From:Message-Id:Date; b=M1gzcLhNZJxazt/zpA/oDycb0nSGXg5BWrrGXB/23+sCDa/4Dxnh2NIIeBW84eGjIHQrs5c/xrKj2MeBDYv0Avep4oGqaFzjZN777AvUMR9uYYUI3nhyiFzTmpRcUGwEO5jkcgXnkdqUgFYyGlkB2rHFTFj3nlv7+oLGVP9dP1M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MFzSnf70; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MFzSnf70"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D61D7C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789575033;
	bh=IZTXpfmg1LwnSmi7X/wCziLcUk6OxuR6GxFTTm5Cp9I=;
	h=To:Subject:From:Date:From;
	b=MFzSnf70auFlCwdoihZlm3zRQT6L3y4lz2EgGub75ZfkxNJxeG3ZobaCFZdi8e55l
	 XWGktDrhkeNpmEGGxH4NcHzlAjLarlY7TB8+arnk3Y1BE8jWUhQkg+HgRNGeAx1Jvi
	 cTguVvepPD4qenaat/wQGIb5Q0ut5igbd5yFmBgFL/a4uI2AHn+eybm6KwoyTDucfg
	 AxnvyZUu9uOcA6CYrMcLJWUC7IvRXGCpU9lf4pangootoFVohAt8LhCa3nWuJKIATf
	 Ul1NN9MGfEll8ghNQNkElZI2gukoYplU1SZVwOOCf6oi2VpctPRNVAnndtetb5cnYJ
	 oZUdZgXp2xRsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4292C982CD
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 16:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178957503372.16615.13895949862561701268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67f9cd9537b91844763ec4a3a82eb352d5426c62e934595a308fed04adb4c6f4
Date: Wed, 16 Sep 2026 16:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789575033
