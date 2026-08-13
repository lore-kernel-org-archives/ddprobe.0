Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6724947A879
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786627234; cv=none; b=fdRwlPZA+voanxQsS6QnvePcpz9CzwvcTcX0wcRsPi1h7NEdsdJU3NFHGKSpgQEclE1Qj8wIhBKEKgrKTaVDOv5W3SEG4fkw9mJYLVt3GMvFRqFNaI88HuOuXTNWoukpW0m1vQAc5kkO+2P2/s9JeKifOmX7jr1Zwq6eS+atdxs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786627234; c=relaxed/simple;
	bh=KKWT0vEygLcNYB3uXScb6cUAA2DbUQ79R96OcC65N24=;
	h=To:Subject:From:Message-Id:Date; b=NqEG1Yl3DoAKQ2Qct8AC6GB2RMwD+ZhIVUIx14SHiRA6S4KosIfLeskQ+ynaeJmNqRs59ElInSc4KZuwgDCIvdSFV7z8L9tIz7jQJ7Ob3kqhToWeSfMGSmXKt5tWd8948v8tNpyVHgyrrB3MYrrU1rGLukpDQfyXREo+Pm7S+to=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SplzCgAl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SplzCgAl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC023C19425
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786627233;
	bh=KKWT0vEygLcNYB3uXScb6cUAA2DbUQ79R96OcC65N24=;
	h=To:Subject:From:Date:From;
	b=SplzCgAlMVNyF1cALRGGWnjrqZEkK2rQ8cTWOmF41LKtZCqqADaAQGjPXVKtNV5hW
	 CcrSEuXZ8Y5oxe0/i+Mxz0Mseq2mxqegLNXkWjS5fepmSYSG9GfA1tU05NoJPNa+IZ
	 srlRChSaKhtetL+F9mz2Zewv9PlEPgAfVnX8Xz/VWOqBCPr82KGDnBMXvDcB01VGHv
	 vwqwGBLzag4mhG9qaXfsKHSs0hTGJwnDaRtq/xFSCLWEv2x7Lz2hh0L0tfN8BAzDeT
	 wBXFKqSMVepcPP91m1kC+jbh7Fs0sqWBsjslQcGWzDQi5J5AkXqhHUIH824Gq/DqNk
	 /5WhnnHwWr6cQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FDAC5CFEB
	for <ddprobe@lists.linux.dev>; Thu, 13 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178662723368.32666.4991761729272887919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddf7d6d897c3771d29bb9dbe7a361af5bc58f5368e7434efb9b99e40ea76a33e
Date: Thu, 13 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786627233
