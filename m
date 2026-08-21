Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B54CE43E076
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787301034; cv=none; b=RcSAhvDDcWP81UYyh2kZNPcxj9gXG/UQrDjv3q+Qr41PWsZ3aPdHmI1I54K9wTceTEcUtG5JtZEO2vEzeV5TwAPcXFae+bSE0gJJxyjyNcKFgMEZsdKST/kF+YSHPk43+kXCL22ykhOK4KEKJS8ZBHEaGhU3PjRs4Mmq7D6k4YU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787301034; c=relaxed/simple;
	bh=PeyBnadQIUdG4lYdOShXfSIGo8+irkcxkINC0idRn0A=;
	h=To:Subject:From:Message-Id:Date; b=a7sCynS5PmP+Y74Becjsqhky2s3hPxrP93t7HAfsgl3XefplR62U/l70ZmPgCvKYBv9AlUEsXC6zFVTEcz7LPqyjE9/yeVlosv4CSC3qJRzFyvc8JYLkdgjAm9SMX/YBkM/Nj3M7Wni/XTxG0jytI2acSFW3fJd/JrZQ1WpXmzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9gLKOaL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9gLKOaL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9DEFC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787301033;
	bh=PeyBnadQIUdG4lYdOShXfSIGo8+irkcxkINC0idRn0A=;
	h=To:Subject:From:Date:From;
	b=E9gLKOaLJpHuXvaamot21QToKGnt2JZqQZ0j9E2nOJEbq4A1ewgeCM1Z8dMkOv0Un
	 SDtCeq2hzbMpGHAqoJqIpwgNKMg4Ac0g7Za5YF8cpXByUGrl/J8WABNBgaySvappcU
	 A9c0MqlyKr33Tqqzr/fWqC6GDvtVhp5PrOuacxwQ0bkBxf8/3wb6n2YUDBv5HiQKIn
	 YB9By8IdmukCmm0nLHDWeFpQ09w44/kacyjMhjJ/oRMuD17SBLYWknpBqsfRxuWrmi
	 m8AdBLBRUW/WXgpX6C3IqbTWBfQRY84Zhm5WVTACXSi3b8Rkwr2kUEg2oP3lS7Mo6w
	 ihAGDNuVOiBAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0BF7C5DF7D
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 08:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178730103371.28994.17670152257222102852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 247e8cf309702c3dc3f2ae156d15f50f139b95bbc3e17c875195b68e6e20f786
Date: Fri, 21 Aug 2026 08:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787301033
