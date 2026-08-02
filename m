Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B13522576E
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785706834; cv=none; b=GTlp35Dp6eJY6Ubq1U3JJOGHUEXV+ze6zbLXrfyKBwxwtS/iZqKvtBsC+h0b+bq6m0TCUfBtbjheWoTWkuBZv6Hf1C/JwVFeR0oeMluykI0bbbOirBTz1N8SXn4jmlzWG/1Y4ZXFOhX5cdWVmBxkU2nHehoobKpzUTe/IEM2zlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785706834; c=relaxed/simple;
	bh=K0q79HsIeFg9aR7Qr8ibYoXepdtW7gnZK9rr6kRDxiU=;
	h=To:Subject:From:Message-Id:Date; b=MxAWzSXMqMjTk8egvPwB++Mux0UWf9QAd7hERdlbGxFnO4toC2gwLL4ybOOmSkwY0NXVh7MrkxgpbkABQ3zTMr3vRX4Tj0UuEuDMbwwk4A5h+MThNbGaWwsxidmhQEllKd7NtrZNBxz4Ta3tlMgT0XMay5/VI0aBBUn5XdwRBrY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAicHrkV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GAicHrkV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1411C19425
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785706833;
	bh=K0q79HsIeFg9aR7Qr8ibYoXepdtW7gnZK9rr6kRDxiU=;
	h=To:Subject:From:Date:From;
	b=GAicHrkVL3eNm1Ph10/aKP1cOBh2+z0Muz8DFO5psqTLbzAKKtaV9qg5DdIISP3Yd
	 bzDMFlO3OHa6W14bgE+RkyoJKTrcPcR8kntSz2O/9F5I8yqGtXKGUF1qdHl0a+M9dR
	 aP+fD9dAdt8qgKl07hCLrt1fgEk+NgGUbVNWRStsLndC8YRKkEzAtgrcLafszrTQjT
	 buhx+2nR/iwSC9DHx5Srw4m9MrOVRvLyD1f38uCn8Npgbg3Dug3IYS6masFec1Xw6G
	 GISFvVE1HydikL4ERwhaeVqqlmFZf2fboqOBNOenvwiL6SKPu4YBwp8w1zoIy2zLif
	 NDlWByYYpQsVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEDAAC55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178570683368.17891.6248012382801452785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89218aab9380c38c78385408a493862ade2d8966fbe3054bf7b716fd0da95e7
Date: Sun, 02 Aug 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785706833
