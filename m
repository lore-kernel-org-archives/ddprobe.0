Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369702D0622
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:52:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779681154; cv=none; b=JZ0PeW05x2Qv6YejR2FOzn0SHoSCZjoxd8f+bj3AZqsbPf+YSpN6ls9owFCDZf/5gZXclfAnDx1GdX7anNZOSkatGcFiNJRDndFYyXLl0iBfd5vK38IkM3xMXCjmho/9xveedEszeEOWahftWVnufCc3spRtFgcuQ9c6/oigGrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779681154; c=relaxed/simple;
	bh=AmVInTSwfJIaooBEISy69SPIaMzbSX4JKlhgNEGM2GA=;
	h=To:Subject:From:Message-Id:Date; b=Ymh4deMgO17lj/FW5T7ZUlqrRLlbXWwiSGqzwiOwKK4h5Dz+DCx0yyHaFYUe2xnXCIrBMyjiGYEtsurxRXMsAc9lyGD8jZ9A4viet/9y5qjOAfOquF5q3nW33U7dmM7NOWReB/TDRkhCY4vgCLyCn20qT392+ROx6BXtC4/sq6w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fbt1XfqL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fbt1XfqL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3C5FC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779681153;
	bh=AmVInTSwfJIaooBEISy69SPIaMzbSX4JKlhgNEGM2GA=;
	h=To:Subject:From:Date:From;
	b=fbt1XfqLAMAUv3EVc0ynmWs5+MOgGUpE/zriXlwr2lzeWxz6FNHlksUqYBRs3hpE9
	 +JtJJcA5qE+irdLChpa8mULeHgg0HVqyi96l3QmlHLVdEn7S0Ck8kSxXS8inaq9k5b
	 BWQpjizyx948aojdQ693BhgxVDBI6plbSKXxUHT8F9uBnu38A6t3ulf+q02Tyu9SHp
	 LqmoG7vHznhDij0uqoH1zNoACp1j93ulzTk6ufS6TV3OcBnK+DjDn5yWPxTUGqHFvg
	 jbbyzq8E6qrwjl3H8kpqW5tKP8ltgGDOZ3d+IrROIAqInTWE8EHsVK7pe0YIHtXUZL
	 6VWfSpxrf58+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3EDCD5BBF
	for <ddprobe@lists.linux.dev>; Mon, 25 May 2026 03:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177968115369.26341.17066567067194570672.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c62b5be0be4ba6e66605bc543548ff2d91d59e5fe67837db41296f852f6dca3a
Date: Mon, 25 May 2026 03:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779681153
