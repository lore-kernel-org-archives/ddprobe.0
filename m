Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CCE18BBB9
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758368994; cv=none; b=Lrl1s41P5KMCYs8hI2P/oATUQ+Aa8+N8XEiQl4a8iilwfi42NHhbDgklVxVF2pV/jqgK84110cfMlkzJfuou5VATB+iuz28Xi63dvYsebh865sVoNTh5wo7w/u+P4uldf2hT84RgSuLdpKW/EDKryptix0mFVNf8+d2rfTvcRco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758368994; c=relaxed/simple;
	bh=2z+GlJChfU5dgNvMvNC+dFbKZ0QWTLlt14h2U2Wlq0E=;
	h=To:Subject:From:Message-Id:Date; b=kdXcop2OuxtYpT7wm6/QHPgvJZ2CMBWERgp2H6YVgbKB6xK2Oq2OhgrCPBY78DcfogqpsLcLs9LSd/+YxizxXpHj5O/i9TMGUaxR/C9otTb7CIBXDWd1FdenswzvrI5KSBYt6u6G60VBkvZZqtBMOxPENh0sOWRiG3maq4WoaZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HmfGSMrG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HmfGSMrG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1483C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758368993;
	bh=2z+GlJChfU5dgNvMvNC+dFbKZ0QWTLlt14h2U2Wlq0E=;
	h=To:Subject:From:Date:From;
	b=HmfGSMrGDScTsV96KEjVV23DVgxe/aqF2/HdoY/kPWjgGJeRJXLSqsq1prusYz+gj
	 Ghj1gNktA3tczZv6hHt8Dcqt6v7q8TKaHlacOYTcZn5s+lCccfpSZRet5xQTyjOdj5
	 LmG9qgo49ppmMd+GO5yXm1wSGENjwWYqD5blRW3g8xX2Xia4qIvuv7j1KKg/wyfYCE
	 Jrfhgp05+LIygfWSrUdsBJGdxd/0+qsPKPrescxB6hJ27oHzEuH+yOjp8yeeUvK7D5
	 cspRD0Y3yc6QvsqGCEM4yrnbdwbe5OdQIfdZTYKeUvOfpfxth7EywdreUeZZBtkpw5
	 mhymfvMVcJVcA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9073FCAC597
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175836899358.9899.12069040918531992668.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66f13d83072704fed01bc78f34cf769e3d6be72b00033c3c2085fbb57a323561
Date: Sat, 20 Sep 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758368993
