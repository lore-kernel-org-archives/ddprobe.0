Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E2D3195EC
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762188594; cv=none; b=pKLzSPaSjiktxsjMIof+dSY+3vKs8WVix6mr4cQ8doeWOiYyvr7cuP0T/yg6Wjvl1PSBVX4rowRgejtbQimRO9XsUo2mL/NbyEWwdWp5URfx3c5i3sugQZJKvkcAiNzA/mViPn1dc7AMnX2KKpDYE69J0gCWrhpZcj2HTeGXHdM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762188594; c=relaxed/simple;
	bh=NxQo5BjSUdgidff5I7Sr5VMN5TnepJ4EtGTOMSpCz5A=;
	h=To:Subject:From:Message-Id:Date; b=G+aUK/x1xkO+aaAbq4jFa21MwyWSWemwZNGDlnAfMu1dkSU+QTJMUd5tC1gVWPYzuE0ogS/kudJpUSJNpQ+mj1rPJlAdyYYeHGE0g6bQWmwMzQbCSFefNWepg6dEU8oa9/feBCWafpjFu0ev3eiqGvwNcka2P9TdY0spD42ZeAo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgpJTVjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgpJTVjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A5C113D0
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762188593;
	bh=NxQo5BjSUdgidff5I7Sr5VMN5TnepJ4EtGTOMSpCz5A=;
	h=To:Subject:From:Date:From;
	b=fgpJTVjYunWefSyqhwjZz1cVyY2yeU7G+snDvioYsgg5LKAA9hOr/yWRYifKykrqW
	 rmKE9QPgBK5K+OXasCr6p0HVHEJu1gQkhDAdK730HmQCGK4/ia0yyMGSQF9hl/YacQ
	 DMNYdMtCYH7SrpJIowWIyvcnCFXo1XVj5HaFRGbT1x4QSlpK0aR+vsfnK2x6R2c8mR
	 sdfnwtIoH8kmKIhfNWRE5fS9AWkyUXw5OtV1oDsmLnPtTvx/6GrtSb3m3tfH+Ii1Z0
	 4mHn3eG7mmE7k/7sLtmrFojcKN98ex/BYM3AkoEUYDi5X71fbSdY1qfsHuGaVlMXdM
	 9MT4Y48GZ9SHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A61CCFA08
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176218859359.30458.15730424957318919392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f19d2059946c0ec09064944bebab0ac06719f836c672bd122eef6b46ca1137
Date: Mon, 03 Nov 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762188593
