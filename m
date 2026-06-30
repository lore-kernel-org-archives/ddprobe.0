Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE211A682A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782807514; cv=none; b=XLAkj5K6bqueLqxy3J9Cg1CovLUT2hl1oPOM1Gms3SvOXP8ErdeV0Jf3LQcETWYpklA6CwOL2QP0HtmK0JBsrHMoyUzbeoLDcg/1dNF35CciiXwLnHjng2PCeuhVtGs24leNmrDZR1Vqyp6OJSQd68p6uS/qNMuMZQHt38NeBPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782807514; c=relaxed/simple;
	bh=MujQwgBlwkJWTOmlpkL7cVpUKn4IKcX6dGB8Xch5ciw=;
	h=To:Subject:From:Message-Id:Date; b=bJn51MQr4Dc2FQoIh/YwQu1a39OiO++3YceQdVYDvPllQ7+AbDHxfUAou58u7Dh88It7NERdGoiKUcke2wUSrlAdBiSm2931Exm7y8nMJDjhe8d8Vtkr1rCDzBk5GDSBlalLSiJr2xJB0RMfBAnzodffJqaQInS5OYqRPH5X8mw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SJPejhCI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SJPejhCI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1327C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782807513;
	bh=MujQwgBlwkJWTOmlpkL7cVpUKn4IKcX6dGB8Xch5ciw=;
	h=To:Subject:From:Date:From;
	b=SJPejhCI5XJKQ5xI0IvyOPzEaPwx4rCFUvUss/MTBUunLKlou1AMa23ISrKSqf2NV
	 ERE6xeXjWfbMmEH/6Dhf2m2VJeHovkxHTk4qWSUvcrOgefLdW1E+gPoEvRjMB4wvAT
	 x/bxWw8j58PcjBYSCbDBHpY+AS4/rvtmGSokmmzJDBAm60w55pNhmkupps/xthOQ+7
	 OjVw8yLg6ejoIJ3H6xZiHI648ltcFwhSwZrYUZvbBFtuZqSnI47jGZZHxs8ZVCAcpL
	 Bl2xM7sSH4hp9jtBpXwPWM3W/O8ikl2qlox31JfE3SXg+OXNrzfaHsuxR/iR6efGBg
	 XtcqdJ+/lQhkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8AFEC43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 08:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178280751368.27885.3583701455148867154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2929c9317a7af12c3314c97f834e7eeff47523a594755319850d2663b3050046
Date: Tue, 30 Jun 2026 08:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782807513
