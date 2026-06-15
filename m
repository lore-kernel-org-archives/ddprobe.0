Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3777F3AA9EF
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:56:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781560594; cv=none; b=BlOEXwnd0+HlDb0dUlb6InS1idi0sNwlfjQ4ezecUUiT4GEgQi/wxPd6fW5HQLJQthpFoSNccEtC60a+gaz9uYrii2GN48gsVPh4psSsCJjAp3sIxBtQjSAvynFUS4uKTIluB0Qr0et1NGORJFzVMutqlKv+poOLcSjW1kd1tyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781560594; c=relaxed/simple;
	bh=p/XN0QZo8Fs27zsuyx+0Tboij5+D25NJt8rl9FIzGi0=;
	h=To:Subject:From:Message-Id:Date; b=GSMlX7DdIkBIJKjoyarNBlOeYGlmbGlFqnx/n1MItXsF4nfZGTdD3O6/zDQzjs+y8PKP3h2m1tOdh69n8PQVanXtqQvHXQ4vOrHplqB6uppOQlf4FBS8BZa7aTnorTyhxQ1aX63UQZrn0VZvbK+CMu2IbapxNoyVjr+uVJMh+HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TdFanPsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TdFanPsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB2C3C2BCB4
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:56:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781560593;
	bh=p/XN0QZo8Fs27zsuyx+0Tboij5+D25NJt8rl9FIzGi0=;
	h=To:Subject:From:Date:From;
	b=TdFanPsBC/Qr8xZxWrtbta8XRkL7uZ4I0SNOwFSxpoiXFy/ZK7Wi4Tmus8riDW5hI
	 d1PwTvqz8BqQOhYydf7UC8Veu5nYNsxyiNRkUJieNuQDtdlijEDbkj1sGcGiY1BTPc
	 RNoDV6qsBGWM+9m45nE+R1bRK19hRYmmlZDnK7keeUi5avG8Lp5N1B74XUntzIYYg7
	 9GrrXRZ6xyAGgJpgdXinx2MLRfeSJ5u+rpnM734EmaXRqpUAidn9xfmfN1jCOthNHa
	 aH2xZY2MVjAJVY2kYovxrWGKLoyUUYqL/GhN12fNZphYx8MeOluv7BOAGaI1W570cp
	 HpLS0t5BweIqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B11DECD98CE
	for <ddprobe@lists.linux.dev>; Mon, 15 Jun 2026 21:56:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156059369.24508.9791225839269303488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: da6db16c88c35e429c3247034c5640e0ade765e041e55c534547adf26f3b3d88
Date: Mon, 15 Jun 2026 21:56:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781560593
