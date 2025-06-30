Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DA07539A
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751264394; cv=none; b=jAol5s985MoaQZwkIXdb38TDiV2vz7o97nQYe+Mq94oCKZjLg+2a0HtAO+sjLHdRnSN2hxBCixdLxHFBCmZ9YUf5lkoAc9QU3ShkBYit0yEhw2pRAK40ldGcC+CKStgDPHVnwDL78XWXSebErT19twu9UibZMojh42wK4swCEG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751264394; c=relaxed/simple;
	bh=9A82aqPeCh0e1PO+SwtAleSJ4uJRlAaZxOFBhCbtBg8=;
	h=To:Subject:From:Message-Id:Date; b=SfkzD2HJv/eoGwArlrLZf0GOVJV9lxRqMsFMGa8C+/x8l5tCBu88tnSb/r6D/caaQgpTuEAdckiGU/VABb11ubQjqhh0fw8oY7Ld2gGHC/sH67SsOdoaFwH0xSKZopXIvAQu6J8pu5YTD1wmIXwhc+LzjCWbFuPay/cPSCF5YMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uni1+3Qa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uni1+3Qa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1C02C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751264393;
	bh=9A82aqPeCh0e1PO+SwtAleSJ4uJRlAaZxOFBhCbtBg8=;
	h=To:Subject:From:Date:From;
	b=uni1+3QagDka9+fBaNvbP/A6SKQEj+t2t+Q2x9FXxEC2IZVpzG1/ZqDfgDt8xWsj+
	 Qfa1TNjZlGYVXTWL9ngYj8O0XiAlNk4MOJdiKD15BRf8dWKICrZ+FS8abt1wLUBOc7
	 Bsjo5UsDALwhHoCpk+Jog0CWHU2A+BIUEzj58EHkNNZmZgwnRN3cJ0Jqios+36e+YU
	 dS2CI+wQl2cM0345N1rqq4YvNlqf85nzrh3kxallDdDKL+yrCHhX2jBjcMHwRh10Ki
	 mIqOVVTHDapD1DHgGDoAsuWAh06/5+jBrKtAd7lchQDZ2tziF1SJLBGcSPZ1QrpIDV
	 sY9Rk+jIBt9Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D76C83000
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175126439359.670.8201865339416667927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be931ec4c5b26bdcdbc19d58593114ac7e0d495654cc2ca6e87c7d9e63567845
Date: Mon, 30 Jun 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751264393
