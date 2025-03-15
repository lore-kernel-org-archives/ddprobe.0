Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A7ED383
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742014734; cv=none; b=CDiG5jKxJVlW+8MMFRXPRiy9UbMCkbpWw4g5hTAXl91sY4wPzxXa6rUPihLOuLvuo9qUz6MCRqHwUisZO/Jk9+ZUJ3ysLDkU8SF3ztsIL6l9MEa89CjU+Yo7OMkw3hgJwys6Bvy121hUuDwIpeg+PxvAf/8lF+JIyxF9sCxx9jg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742014734; c=relaxed/simple;
	bh=RcMvCHxIhMfpo6igI82ZbE2c7t5SoDMVIIHAWsLOnDk=;
	h=To:Subject:From:Message-Id:Date; b=u4PNe7n4WWCOK/0hWmE+sNzHVrWnE9DOyAQq8axE5UZUdYc3Wo0VGioIWrtSr/wSvcy905Am1mA6dMlYq8rpkBKRFXIgzlOaZlTpBK9vmZlMgwKEme2TGEiO/VMJ4p54GzQjp8e9Gy/u5a++9K/Fo8JirkUdEhgiVirW14seyt4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgbw5cbJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgbw5cbJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1749C4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742014733;
	bh=RcMvCHxIhMfpo6igI82ZbE2c7t5SoDMVIIHAWsLOnDk=;
	h=To:Subject:From:Date:From;
	b=cgbw5cbJadwBbjKfOne0UqukRh+T3udFch9nzOiLLRhlWDngi6vmf+Rc4ZljxYoeN
	 yCfV8wsfIt57DTuChslDuyyaDT5UaMfzuQkaijTmBaWAjGiKe2fdl3d1MeIlCIbzth
	 pkKDavx22GMcmErdvv3BnecC6nQFA14kxMNdQiBLmoR5EEn4BwNLWyBT50dsjsQAyH
	 0nrl64JYHQ6MvXpq5slOG/rhHOqCrdElKEGY+4U80t5iMylSWZARO70ERLcvHp5XNr
	 lU7Fb5qY+noT8MGDVTUGCmvQSvDnYhrcjz4d5NTxHISnnSS1farvs2SPa8KNnd5OWE
	 yvuz6UHTNMe8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 951CDC28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 04:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174201473358.17418.14126075907358053118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6369525ccc432b7d70575af3cf6631b9cc27bd64d23acc30d879fcfabe05185
Date: Sat, 15 Mar 2025 04:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742014733
