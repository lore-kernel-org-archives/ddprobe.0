Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E961F4169
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754267994; cv=none; b=Bo+XY1qodMmr9xbiwQ/wjId2Ql5I2A7jU0lrkMZxvfa4kEW9OV+UCJRPcq+O5d+YMgACm0Dgo3s8sAvTPOxJqdmRPJcCb82+rByieQYwoICyO1AND4HHp0NiLiP1UpY1hvvGRpH0ZoobyskOMyPnwqE67I8fm22Avq7gV4HLiAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754267994; c=relaxed/simple;
	bh=rVDQqDvCnL9OfjIKMmMwdOUYytD1HTvI14mGGYO/TJE=;
	h=To:Subject:From:Message-Id:Date; b=IFsAKMiFtAV6LI5ek83F4G4eoXvwB+gQ+DhErfxM4la7u0Qj/IL06HmInRrYKnFe9m+xSn16z2HDHry3r2lTYo/xcUi9aNmR/HrUAccAPjlg2ueKVA04Axt1fjLY2+WQrEWOHOkfdFONZgSacK/tsTv8dS33ylZ/6s7diKyzPC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IHihv6wb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IHihv6wb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA560C4CEEB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754267993;
	bh=rVDQqDvCnL9OfjIKMmMwdOUYytD1HTvI14mGGYO/TJE=;
	h=To:Subject:From:Date:From;
	b=IHihv6wbfl3K9hr6y6ZaOmqbC9UV7HtYKI4TUz8qnDhPZdurVla6ksVy4DhMmre31
	 L9m6oy2kz3/iDatA6LVVFf2j9NWWk78b81gNcY/FN/x++wMTmNgxC4ut9316cjQZtE
	 Py5Egpv41W+curTnyi7nHSC+ZDj/89zAay28KOEdJ7rtj0pmPj7rxlrHtlwimm9N42
	 BRnyCK7FLVhEgY+45QuNKidl0W01vOYLjNLxHPGbU5T2UQBBPRuipeDDPqswAAwh6J
	 3vuv+1+d+z2STVk/oiP2YIx2aeJ32vx80xFCvUi0o+gIn6pKwKGJS7qe5WKHbPmsLN
	 +FpJA5BC5neZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951B1C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175426799358.30560.17074246146177939895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27063facf849c3962870d2843fc63f0c0c5a35b2f95c709da9de132f18d8ed9d
Date: Mon, 04 Aug 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754267993
