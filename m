Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3881B15574D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720562183; cv=none; b=NFLIWQiLdks+5Cd1BoS0IZagiGzqY3fSUr65m5QKylIYYZdBS2kuEugZQfsy+luNaR9OOyBGvmHYkZ/B6qQk0X8RRBQP7d9ng1VGygAoxuP885bRN6564BcMEqwuzdGVCdhUqsOmZ2i1TVbptJva+mdKjsUMX/+gAkJf+hLZ/Tk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720562183; c=relaxed/simple;
	bh=6paBFEWoWsLD3IdIg7/QSYSZHeuZonj2nB00bWhtcoM=;
	h=To:Subject:From:Message-Id:Date; b=WlXtM0pDdFh/aza3ih5qt4OOHgZeazgbRTKJXlXZR+vRZyP3w9mEySfUGEO2J0C9IgmWZR4H/41Lm53z5X3kpW6xq19GNXZbk5mpK3V73ibM4WZfPJw//kbRSusxC4Eyw5pD7Y9jPUXpWwMat/QklZTKuoJnsp1TwsIQdTLEwL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l+z9DnzM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l+z9DnzM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7CCC3277B
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720562182;
	bh=6paBFEWoWsLD3IdIg7/QSYSZHeuZonj2nB00bWhtcoM=;
	h=To:Subject:From:Date:From;
	b=l+z9DnzMvmrt227sAh0H2FUonnFZ6G5BgQywuIa/ivZheoJ16UAoOEDasNGQeRFP6
	 5KSauBce0zuy10cFgCJLDlSZIRFeZkrPjX2ZxQa1beF6Q2FDQD6UuBBCXAzmGAmE5C
	 sNEd388SgiQwwld6FJitinjbcMFEbsbA1DulvfrDDu2fawl+ADnKsfNZy3FJdE9Shz
	 noxaIg0qiNPgt7/iKWNxekWrdBCzBAFMa5X8DEHuKrCI8fQJiyoOOi1APpNFAUJP49
	 XfyUajn4X2pk5kDtGliLcHaKLIWprb2MPnR6dm/zp4eDQOhVhBsLUoW3Rnwy/pv/yu
	 3rIoPq07O1szA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB4F3C2BD09
	for <ddprobe@lists.linux.dev>; Tue,  9 Jul 2024 21:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172056218275.31442.17512635737531053532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 731ea9b0f1fd46c26645fc87a17348daa4f06ba53c30fa6bde52b3c9d90e6ebd
Date: Tue, 09 Jul 2024 21:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720562182
