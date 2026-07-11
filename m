Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9C1625
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783802914; cv=none; b=ueOHjOww/xKVrTSuxhBVlr/cByC2aXhqjKltGFvWBiHPw45P5sTVoeFCszWt6ijcd5iO1z0h7kwbxAyTCCeC44vymHBUPSIOA6afBhiMCt68MiN40EGv0BQH6zArIBov/sGpdjEhJWNdTgqEVZrcWbGYiMpsXwzbY/7MndnRODI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783802914; c=relaxed/simple;
	bh=aBp6nZNUxn2jXOqJpjaCIDeusJvMYAvBnowhuw2ltsI=;
	h=To:Subject:From:Message-Id:Date; b=gG2YmFpc/7U9rnudu0w4Tz8YxfFfhL6tv71k9CCsiUmBJeDRysqqb3f8E4JDNaAbwG40RUowMkSYf1jKAKI0dPTrnpKBffK7HuB1+/wIZxWflh1IuAtnCQ4c4l+cLgK/nGbp7oMnBZWcsTSek8lDAgyIH7wtMhVRYxOUb5MIoho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZirLvsWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZirLvsWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0463C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783802913;
	bh=aBp6nZNUxn2jXOqJpjaCIDeusJvMYAvBnowhuw2ltsI=;
	h=To:Subject:From:Date:From;
	b=ZirLvsWSYYmp8o01T6FnyxvaQlbp091tYbx/bsisSPZINibPe9TM+f+LzPkiWgNIP
	 ukK+tpg12oi0OHFFo/2C/pn4g/sPi+VWDjtUr7MkyF6QU1XsKhx+JrgGcFPF3P+UFp
	 K/3MwPC4gMePlw/RMmqNw2F0km+81CakMu/n6JhjzqX7LsFWBmRgFNg5HsvOBUVwm/
	 zxcFzfTzYt+Qr1RnziUI65qZ6lPvnqlVYdrQu/O1ReT29IUu9fSKBGj4XQD7xxNpFD
	 ShDc4x9UbhnJDJK2BW3TJycly2jPaZFH52r9OnBt7xP7/GTI/QPnCBgArAv10y7p1Q
	 HgJCGSXMR1j/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2CCC43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 20:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178380291368.1114.6227517631532067097.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b95cbebdd22b85ffb5e2ae4131194c2e40fb87fb598684079a8808380ebde31
Date: Sat, 11 Jul 2026 20:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783802913
