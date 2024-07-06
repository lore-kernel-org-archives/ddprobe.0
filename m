Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 839B8360
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720226123; cv=none; b=fcpdcLIJt+/tWrOEZesAO/RlHPO09ft5zfNPZ3gStIWjjN8OmeBlTxmrYm2X4weslAK9DHI7ZK3ToybNWjuWXXrYm1Cw7dvx89hL5h6L+SNiLpR+OatW1QnDUM8GY4+zVt5LVx1FMn/0IiuIo+Si7OA+tcZN9k0zE/nqxl1Bsss=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720226123; c=relaxed/simple;
	bh=A0NqwY8Z0IxtNu8VbM3NDj+xPjHMDMFysNZxu1CpHR4=;
	h=To:Subject:From:Message-Id:Date; b=ttHJwwtn8GlyuKisEkCmBVP2jgXpPzwtCsNXE+g8XBCGXAESGn7AQBYawu1mOGdM/wbYfgNQV4ljIMmxPecmUytuFiu/SHobsDeCEqrJrMN++cGDoYbKoFs6CxCfT27KCfGXG1zMObU2gE9Vq5bdMkl4OHf8yOYhB1rwTiGoEro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YBgyMGZr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YBgyMGZr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC55C116B1
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720226122;
	bh=A0NqwY8Z0IxtNu8VbM3NDj+xPjHMDMFysNZxu1CpHR4=;
	h=To:Subject:From:Date:From;
	b=YBgyMGZro3nO346gLLfFPyIBfg911uvAMqlrKlkoKMYIjyEAfm8oGMjxMwta9iWpq
	 dVCE4FdY6D5f6UkwIbtTEg1APcEpYwFUqrae8xqBqEgHB2ZYba2FtoBVbezEQHwdMp
	 czxCPkcZCdy2DUwwRlumMmGfxypGdZJb04gvAp4Ws3vVi9CBFfYNTyEhhoP4TjLH4g
	 Adc0qjlN6fKMCkbrbJLlfIuyMZzprA5DQ813lTvtU8N0JdApMt+tab3xBqNulqqH5I
	 tmO+WimvyCJ0bC/ENGIQnXsww0O1+R0vTeoaZxSbhW1eaD8k7VAlrVDTND9GYhXB5M
	 cjga4+w7y5Jlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA8B5C3271E
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 00:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172022612277.5455.6335173518580602572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 99e859f3cbda64bcbb21f35951c8c8bfd964ebe37e3494850099528862e79201
Date: Sat, 06 Jul 2024 00:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720226122
