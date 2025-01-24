Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41D313595A
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737709554; cv=none; b=AhaPEw+lV8sxiveKtfvVKLPbyQNUDR8zk52ZpjJnOhSyBiSPzvVfaPDUq9btmg6o2UZFUZSatlYhtR0dPDyV7/0J7W/SGpiEqoB/Fp/9A8S9qdQcmP1Xeo8p2H/Mms1v2cwTADoA05CKjKK2vHZTx6ynZwaMu10WBfCmvTOcg6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737709554; c=relaxed/simple;
	bh=J2SPtDHCVh40d3OCrBrYGJnHCVfH90Viz9nm1bfl5e4=;
	h=To:Subject:From:Message-Id:Date; b=favIqQ8j9p66mvwxZ/scjkxdfCA2p2DoVOElPfYY+iLdKrnUygsHtLsST3TVNHuQ45BG1uJeMXReW79jgPcQhBxHfCB1RvFVUsP4Ll5MRVHJ4hZ1bFwqqWrw2TYU6WvBTj79/Bseq9ey5yn0Fq0KdrTNpOLq5UwD7a1xi+KoWCQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YTDgK0QO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YTDgK0QO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5DBFC4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737709553;
	bh=J2SPtDHCVh40d3OCrBrYGJnHCVfH90Viz9nm1bfl5e4=;
	h=To:Subject:From:Date:From;
	b=YTDgK0QOnLIcP/4pghpcyRzzsXCLMsk5lEJ2lmTeDlUR83ljm76vZehvDKuTtWicr
	 3hdCI0g4W9pwmlYvSfe+LDBItowblGIAkptA+sOnsKS/7h/cfYqKxWtJydB2MhkWPg
	 U7+VNYgVO1kU4vZ924szp7VUquWJJGGpxfp1tm4qSwEGqb88ZcUr/lwGaqKVAlOZFT
	 Ms7jXjgVwfjEV9utrUPnReBsCKozOMWxT/neYYXYbncYpIx7YGzcI2l4vOECWUXQcu
	 mkhk2mLBiF6GPNC0STTE/MxosQqPHdNpsLscR+99BjGq6gezl2R9ALFth3uWjSAbkI
	 HlhGRrowKr0bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A782EC02181
	for <ddprobe@lists.linux.dev>; Fri, 24 Jan 2025 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173770955367.8535.9521272840956610765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ff2da523768faffa878d9a2a37e78fd33e15c57e9f67f7a6a7dab9a24ab0740
Date: Fri, 24 Jan 2025 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737709553
