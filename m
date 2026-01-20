Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B664426682
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768909434; cv=none; b=BXjjNgLd7ky3QtRkVQn62nnUoItofdp6PBclFvFU6YYm/SCgVtkODwAtsH+DV1UozZwTV33OoZzeZCeuxtBx5Rk5VHTvlQFNN9GXBhasKkpn4wn4hzteJKiX2etfa0krOvI2DYIway012fLpyno+vXsZ7CNXaGBxYSECXmcW2nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768909434; c=relaxed/simple;
	bh=fsci1kkJuncNm2VXpWmcALCdF/Qt3Cs5yF4mIXq38Mo=;
	h=To:Subject:From:Message-Id:Date; b=MxVamwzBMSaBxYQfftF7GlzVxLgoAuL+V7Dy8UYzGDOdAuLl2AH5Wf6WzisG/LcLS2yNC4CZ04pmBCgOw5xNGkwpbSzU2ZTKMmz8pV8xMoMgN9uFJuUktsPeVl45ujG74W7DekIyrBSPfTKTV0Jqbw8RPJoX5jtxHhcnOkNud3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cl2YCqfP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cl2YCqfP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B89C19423
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768909433;
	bh=fsci1kkJuncNm2VXpWmcALCdF/Qt3Cs5yF4mIXq38Mo=;
	h=To:Subject:From:Date:From;
	b=cl2YCqfPGCIXyrqVY+Z7atphyA0RkecgS+txjv4pdo/Q7MRXSfOTSEc2/7umOxMcr
	 KV+Y4dPljZ8AQ894GdOsuYVZ577kIlh2ii3JCYHoslmwgkQTx1vXCFmtpEvIiS+dqf
	 nPhLJzLHouQ28x7BDwXEnc71kwQko+J9Y2usitRbs9xSefIOwv0tikb6iu/WoY50dH
	 3JlMk1stRhyFt1s74YpF/rhUyvfa5MHxQB9WvoAxoqDlK1bxJN5W3Hh9g2VRBVUGXD
	 2xAiIjnI0gkc9E/6ygwicQGNramGy/rMQ9eRMsKJaVj1xKKQ8GNQcTdkQ97DRZuZu4
	 ANbaQ1W+pNJig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90328D2ED0F
	for <ddprobe@lists.linux.dev>; Tue, 20 Jan 2026 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176890943358.11198.796959443567038278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e139d068b4c1ddcbf298c5dcc9df04e6be3070c32d6262e0188cea1d3576185
Date: Tue, 20 Jan 2026 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768909433
