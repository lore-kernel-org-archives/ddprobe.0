Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6EF32E690
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770122633; cv=none; b=jvGQq66co5EDnAg7CKPDZiWMhv+N8fvG9JunIvVR014sm7Qy5dBrstnPlXt+IoGj637QId3GDI1J3j74AzAUdxtm9oUNRtoEABaABQFOILMtAIv3iZBwi1QaIpPT3FB8lwM8Eszwzj7QsyGK9NVromzmiswR/55BJNi1hP1AQj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770122633; c=relaxed/simple;
	bh=LhkYizAcQkKaTQhAX9w3/Rw8ovEvgvyiFWbk+AV/W/g=;
	h=To:Subject:From:Message-Id:Date; b=g+ZtAsGhc/LCfj9vf+GBqSTu+BGVjhm4Q3KFN9mUGZqC83K2D4psuGQ63GVIPR+g5sMmcvyORtpCkfxO+5M9Tf562Kh49xjh2yD2aMtgO8XrRh1mnPidyIA3PX2kGsAZIXwITFYal2rUBNwwPdVjxo/+/9bPwppUPOeD//hY+kM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWJXn4kO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWJXn4kO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A4CC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770122633;
	bh=LhkYizAcQkKaTQhAX9w3/Rw8ovEvgvyiFWbk+AV/W/g=;
	h=To:Subject:From:Date:From;
	b=EWJXn4kOoBQ3ZnYIHvtsZqb/bCxVJ+ywJ3uU6mfifJf0l8D4fml2yu0QC4tcm/3yP
	 eac/jGDJja4uAabz4z3xGF57c86Fpf0FmL7hv8c4DzRGhDb9znKmp2zSH4vVe4Pwnq
	 Yfj/ZX1X7IXiJAD2SARay0IxP7GMAAVYCHgGnomZ1jTF6wMqIB75vLRynCDMIcHYzO
	 wjaUFQy4W09njc3dfMUBDXAmdlPa6u8j8F3QaF5ES4LUPgdHkVNfb5+MDg2YgDKQIA
	 KfwQDGUQtfWMoGVHwzljxeKIO24ZsIWNfBDQU2PnW7MWlpc/J6aA56trBRPN8Ccqz8
	 hINc6/a1UebkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94064E87822
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 12:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012263359.30887.14349706256901549185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2efaeb77a36c69e0d3066ce1951fb26122e6d74c0777044dd90e81e6633e1de9
Date: Tue, 03 Feb 2026 12:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770122633
