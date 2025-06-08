Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C0C71386DA
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749368994; cv=none; b=OUREOUNWcXoXAzRrd8zJm/G92Vb1r9GYk9dAHd7W3dO/oWH4tIZgviqJd4FSGyQ8gpSS4GAGw81LSSWictFbTDJVqRJ9S/YmrKgo8LjkHpw+MI6V7GI5bvdg1T+AnxicTMq4lDSN/1EjNQ+HIrFY9pmphfwftWd2wCH5JOekcMQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749368994; c=relaxed/simple;
	bh=raLLN1/ch2WeS55j1e/nsafCMqO00CmsJPFk0wWzNEo=;
	h=To:Subject:From:Message-Id:Date; b=oo41tUZQsJuUPctT28T1tCvhqGVWlfSmkjxOctw7d37wMOvquhV2/ma2/Z479LSnqa3YkxcMjLDllz5/ZABP6/rJauuLejCAuqBtIOUSEcWmpG6Gu39uo5+bz0NPiPr7dHDhchPheDHVZph98fLvCqfH9oa9/wNOwSqVq0vGcx8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uAhUOjDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uAhUOjDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A886CC4CEEE
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749368993;
	bh=raLLN1/ch2WeS55j1e/nsafCMqO00CmsJPFk0wWzNEo=;
	h=To:Subject:From:Date:From;
	b=uAhUOjDWQKbnNMyV58t30a7SRq0DmHB7vLAhoTFT5MpzI8ELenB0o6VWSqoHX7DUs
	 yuAaOUUfHdB7+jo0Rq4WL1Uwbp+pGlzDUsqhB492JzLpqqDWSaodrAd/D2+OxewQIF
	 D1QHxgKHb4sQ3LD6TjYLq1EPX3AqZAKGwrAg7BUq05Ys2DkEKCslP8U6RU3CXLYzoq
	 HnvaO/IW29VsHXfGTW7DY1TNuGppKs/ZpB2AaqQPpvWVlQGSZDWVxrItT0ezkuPro3
	 bIxmhsT/qNf+p7A1BCMa80fV3s1f0Xa80TE0VetB2Xos/cd9G5gt46GR+qVdlDPUWV
	 4awbnDH/KrEBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93103C5AD49
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174936899358.6582.2578609103090110436.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 729fa903221ddb198655b603376c1c5f9d969f7546d02ce5de396b2441f14fbf
Date: Sun, 08 Jun 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749368993
