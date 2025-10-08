Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D302BDC3E
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759941594; cv=none; b=cFHamQHvreJIDNozXZuCBxwL2ZtMWrJPuBiICmYJMg+pjaLmX16K5m9I81OVbQ3CeS1YDp+SA0PY1yWtSxjJiHME0A565Qoj9IxsInMHJJqGBY8TUk+fUf3rV5pRMLtHH47+o8060BkmvJ/WgYw9UEoRCXxxW9rDAHCNTm0OKWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759941594; c=relaxed/simple;
	bh=M9tmvVx9pINlhayCM2wNCToVl02T2kwbRI4UZ7ygHK4=;
	h=To:Subject:From:Message-Id:Date; b=hOv9uYwaH1ZsF56fwiB4bShVz621hq2X8enEmcFlpEOHdiheS1acV6sUVaxQ/giTJZObJFtkkwKip1PuCTz8F/0G88c35gp53FtohyXk851xAKy3vE7VncK/KGA8/kUbS1rT2xQzepHmDgo2qVxxXP7QPoASJuQhf9i0qAGO2fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gn7pHrCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gn7pHrCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1718C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759941593;
	bh=M9tmvVx9pINlhayCM2wNCToVl02T2kwbRI4UZ7ygHK4=;
	h=To:Subject:From:Date:From;
	b=gn7pHrCuM+pFH4/3TpM14gLDw494Nvy2trqFEt0vJd4Lq5pBsI46Z3z2vsbR1Hyw/
	 MTH3ySrsGbvC9p1OoGGaeixJqpwcd9UXkL7yTpFS75VdSgnOd8d2kOlskEz1yIq2p3
	 Ml1HzEROOHCHQQ6V4iaNPigQRTH0wrlBTmpHDyUlkOSoxqWI9Uh3pHSJMI9jBEGuVp
	 zY4vC/U8ORJywAQKCNcBC+W4hHpW586q6JV4gISfCepdjzxyiokGo+LVOEpGudFLGJ
	 lhsYEORK4GL+sBRTpFxA0Bvz6LAOfEU6OOF8CQNzZAfRbE4jqY9z5+yp0UfXvMp0F1
	 tdqKTlAQCgnfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F836CAC5BB
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175994159357.22072.1242382091514139084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70fdf3700c4f43de18332183549bdfba215cd138d59b5fe530bd86a5c41695d3
Date: Wed, 08 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759941593
