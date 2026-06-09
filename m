Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D232F6596
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:54:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780973674; cv=none; b=aNQpplFu/IfuVPepi2d5W6cpDxJr0K4KBkRwZSqDn1qZpdFaq8mob53Zl9CthnExLEN0ACHMapSjqlAIMs74oZeUr7RsMN/vJRDkG3wgFqm0dCBQkPZC/HiUusf2x95ueBf/IzMp7ssrd01CbIEGoVjGmP40Kj+Ooqwx8k2Q+z4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780973674; c=relaxed/simple;
	bh=aP7YkM43i2DAsqX8VM7znbtpums5PdlZ3mXXUi5plNc=;
	h=To:Subject:From:Message-Id:Date; b=Ii3/Mn9h0m15vXNSA6cLDRVWBz963Jg9le2tGdIJs0szQ+8ejM1t7qmZBVnP5Z7HMtHZoV7irOyEX/a4K/hqf3ejwSat0/bNubDmrrq+YdGpMGbuZCUVtDQ6gPO3LMRAxUfaCP5XX6IYCxTsNAIM7qFO5xlmZM1Oc1D+sS7zYhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iJRU+TOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iJRU+TOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2980C2BCB0
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780973673;
	bh=aP7YkM43i2DAsqX8VM7znbtpums5PdlZ3mXXUi5plNc=;
	h=To:Subject:From:Date:From;
	b=iJRU+TOSWwPK5lgIwa1OznJfPCIi7/M6EAVunKc7SgR+PHuG9bkElFvgJro6YWsl3
	 Kr+7WGVJopCvNgrAqA15mYtssoVyjk56CFikFyp+hFQcyJg7jowew+L7oDOJiTNvdJ
	 Qm0m2tOfPJvsvt2Ob5hhvyb8+a/4Pw5K0Dw/QXXrAz4lk7B6TmvQXefJEZ/QVTNc+L
	 7VzerTR2+7qvF4xQT5TwgYt1bgfBbl1HKrwAFMUZ98j5LooDS8d6U8OTVPhNGUs2mf
	 1N6r6jsnBtVrTsoMzX4e/3v3YHmPtFL4lypdMIksx2Lq5+drC75C5WnNe0jRg1wzW0
	 yBJfFgxmsifkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B495ACD8C9D
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 02:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178097367372.20756.3777552443601957994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9fcad03d2a30d85dce17b01923a1f8540cdb429231bdb4a31eda72450b9c7bc
Date: Tue, 09 Jun 2026 02:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780973673
