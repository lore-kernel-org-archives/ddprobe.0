Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DA121C84DC
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769297034; cv=none; b=mHDaXlVEy98eqqnasviRdP7A/pe3wDEJ8ulj+KgVG1SjWz7c5TSTE7gd6/QTDPVpBAiw5ghpgIVlGtu73k+MbIPtAAJfyxM0BRdsFeikDCAONLc1jjxVizduih8tkuYnV6qTBkGTNnLbgFLpwQ6UjDEZ3y4t0pbZfZuzpfBOqa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769297034; c=relaxed/simple;
	bh=O5G/Y5HJop9mIbzqSmNrf+kMotJOHQFMeDEjUNoBy+4=;
	h=To:Subject:From:Message-Id:Date; b=pifvl9bBUJ0HN7bEF6CQO2AFZjrRztP/vbWk8amPKwYgB4wO3a2JAWfnMal/soHN1p1sFxg61TYx2jVYW0lU474vp7NAeZ+lKGt/xfwDta4lfEd90bnEXlWM52e0CdkAaG3HFWIS9WjFX01G+XbIT6SN6shwT8fuyZT6shWU+co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmhZNUIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmhZNUIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F390C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769297033;
	bh=O5G/Y5HJop9mIbzqSmNrf+kMotJOHQFMeDEjUNoBy+4=;
	h=To:Subject:From:Date:From;
	b=pmhZNUIcQ38dDgDBhWMfGDs6NLXq9UaohQQQYoX7ExIa2x1Ut87EQcpddBjZd+sVV
	 VOCNt2G20tmpSGHkOOiCKwyiK6/HNCM/6Ni4Ijr5uhynt7aaY70a/VWlwEvlAnzIlv
	 CNaW4HH2XSqC6+v1MpS+J4tV6+ULFdQ3XL3xlnPWNQjasbqJHmt21ZWtJ/5yNOWtLq
	 uGuPvbP4Y4xEP6cRtgDkHL9D94Q4kN69hyp4ApPYnRvDGkQfqI7CI1hAfBy8IUtUqL
	 V930s7mZ+seVJbo2MAMYuWEM4IKnQxCPAMqn8eM1cx29csf0Z3ErPybdvmOEUOVyiR
	 Xr4te6+2F4MyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90095D715F8
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176929703358.3942.1973009597850997851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d9294b09fa8316702d95a63e95e8cfc51f52d1af696f025d683827d50565bc3
Date: Sat, 24 Jan 2026 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769297033
