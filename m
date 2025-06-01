Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C3B41760
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748779194; cv=none; b=FWz8BIVIxPV6NgDJ9lWcqOXk3Y/NMyouWSptXhqFh4+rJlm1eqZXyT0Ip5QUWlmWhQiEnE0tme9mvE4XjRla29b3E+FUCX/GfDL7xQ53zpcds5wksMlowZMCpmMCX/LCHmFKzHhjbwtAOSLUrmeAAWEMvyuvc3UZyZBY1tIslxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748779194; c=relaxed/simple;
	bh=/cTfx9Vy1fezkONnAeeCrQtemwLkduX5tHIdO31B648=;
	h=To:Subject:From:Message-Id:Date; b=k21poIwN6gEKFfFPvCJ+r8tAvsz5ClAZjG7qOTkPubPrp7h+/4RWNGdrIF5nKwQ9A/jZE9Asn9iu0hkjmxP6bYck/Yh3IymlYTWIoGlkTTYO/VoJ9N2o8RXEypGTe8Quz4UdId4/H4/LFakQn4/XKJlqYQkZuhaTicpqStwIYws=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QuxPQKaR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QuxPQKaR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D13C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748779193;
	bh=/cTfx9Vy1fezkONnAeeCrQtemwLkduX5tHIdO31B648=;
	h=To:Subject:From:Date:From;
	b=QuxPQKaRCnw7moh5mAhGr+XAIp9684QypIMTBTg2mulUnbZrWyh+/tGlwzkAoZZpL
	 SDVdqkFxHKM/crAyibG1BkO+inv/COjIP7utas/ZyTZZ8OWInT+f5R8b1f5m6FYqtn
	 Usuyz6+8mLsSy65uDvtGYAcev25kIMyGhTCvCHAVms5SCd0TQEZ5cnzdIZmY1SYVq0
	 2N+b5N6YocfbFl9S4lG99YT39Oyl1uXXVLBPQFdqkAjq7ZwKj5JI45lIUiYM3hkk9K
	 3nhgD2XdUf9xaUVCiPIk1wRzlOolyDRMntKs/bQz7Ngm0HOr9/hB7LhYFk4Kiusw56
	 B2uHCgqglPd3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945FAC54FB3
	for <ddprobe@lists.linux.dev>; Sun,  1 Jun 2025 11:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174877919357.18755.17626361491081572346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d57116f34b39b3c5248db35a3b246e8888cb4f194ad1fa056dc3a23dc9d45c9
Date: Sun, 01 Jun 2025 11:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748779193
