Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD7A804
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724646354; cv=none; b=No3p+BJZPHHq2ucYC//dfqvANvAuWREGSkERcghkBCGn3R/subu0OHyJEeYD7qX8sBSS9Y2bmQyYBoGJh8u8VNJC4If2abdMdwnrvBnwhmPTSEFPkMqWGcBMVzVuN3exnHt19AEKfpnUWagIwd4pqj8g9pIHazjrsxs40udmq2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724646354; c=relaxed/simple;
	bh=Es8ji6k0/mcyWg5dNbjmbVT3VnNC2lObIaGo7PjxeZ8=;
	h=To:Subject:From:Message-Id:Date; b=s5IPXrvjI7dXXba8WSaUpOnag3qUtNSsfvBOVhs/dEXH/hoeJ7L6TIyleetOQImHP0ov3DZs291YFKShTPmk4Q8HqSlRGfQOVUHi09Q0hEMszzjGTiQ6/cJxTHbZjOjsJInC1I5e97k4z9zqrCPuw36IBeXPVf0JjU/RdluzSiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rI+xU0vA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rI+xU0vA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFECCC4FE88
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724646353;
	bh=Es8ji6k0/mcyWg5dNbjmbVT3VnNC2lObIaGo7PjxeZ8=;
	h=To:Subject:From:Date:From;
	b=rI+xU0vA5qdA1ZiIIlmYvsP1K55nwmWpnTfsmYoNkNSBVH82Fh6ikO4UNRXIgn0HP
	 6QMBW4YNwKf9l9vXE7G1E5Uhis03RVC0fBeMk4IbA7tEQRYD5E936U4RZiM0HFNMLX
	 WsmK0zbsvGr6UvYEhfLjDrmeFoSl77kKL8/6brT+CoL0DSE6CYMadBhtAvvyx95CV8
	 kSvQk3zrY4wa+CRVoTSDHZ1x5o1lEzA/AoUaLgiNUgrHuPjZ0VKewJZvAj/vaBVWi6
	 EnhpSODysfkgcbWFw10i/i7+kMKOaI1HcvAKOrC/jiRU+UjIPs0hSymfNHUCU7rcKe
	 ml5z4ikGHbXeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953A2C5321D
	for <ddprobe@lists.linux.dev>; Mon, 26 Aug 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172464635360.22687.6370124370642302174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd1a0e113587f97b6f628d02b8f5615d1aad5087bf3839ebf0b0485c4d4e3b9d
Date: Mon, 26 Aug 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724646353
