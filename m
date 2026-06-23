Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B51A3D47CF
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782215794; cv=none; b=a5/D8BBqN6dOZaUbFki5RkCCwSH0NeHHRQVXdmxYIJ4SHm7tNORT411GsuGGKdv37JUdj3vnPQ4CF7CYB7eWhqwcw4ba4YTvlJUpCrrYUzavpOrRdU4SPj5DE52c5ZtLW2vbYHhMBMc4I18dB5081NO9R+x24deOjQdaWLNFirE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782215794; c=relaxed/simple;
	bh=NwLXI86Vkxe277bG0V+xK31JGFZH4ynS935/3pkIXWU=;
	h=To:Subject:From:Message-Id:Date; b=mt4YtTYDjBVn/vYwtHP9LxUGTxFrAZ9XAJDL4JT6JLHe+p2iKlaU1JiIlDP8MbnKbRHa3DVTyY/YRXx6mnIlwXC3y4PZHcNaRXoIF80W0feKzY2zgnBvrOTs+xdm+bR+eCcF3yfU8fBaOC1xHPvinTSc73+Cy6PMqHwDVOWJvUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t/QYZltE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t/QYZltE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4BD1C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782215793;
	bh=NwLXI86Vkxe277bG0V+xK31JGFZH4ynS935/3pkIXWU=;
	h=To:Subject:From:Date:From;
	b=t/QYZltEk5wtHFPSuGRXnjSHoaxEV1/MuNuhG8LLbab+yRFaZ5SIX3X35knyyDNdy
	 RizkBPZ8KudWXt6p3FolzS5c+RN3hfh3pdVLSLobFiF5Cy2Zo8cuDp1vNmJba0v9uj
	 fqXvskrqVgtpjUmATWmD9qaxWFHenQb+0eBCcDFpAaDmv7JH8TCdKfaEPi/zd4PvlI
	 puR9hq+hgbrix1xLVXlefoMEodo7x+lW/Txql9rKdm5qFx7DiLbe50dwICj8FSBrIg
	 G8jHOMWrtT9pBUmKuxe8Ixm25FBLIw3aEHKaZmy3JxKgS/AKFvgS/3y++O/0lm7Mte
	 hKtD2WV6CDlDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABAE0CDB46F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 11:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178221579369.9770.18104759280137002102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b20db7eec541763881d02d7f94e5a2df02aad4cd05b1866b1f534e442df6d4f
Date: Tue, 23 Jun 2026 11:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782215793
