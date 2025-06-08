Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226041FAC4E
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749390594; cv=none; b=pW658HDxLpA5FfrnKaiUV42K4BvQvoRIiffWZe2yeSZnDQ7zaLh9Z2oLIybTO/CEGFVXnspLxWsVLCJK/Wvr4S6uur9qG2j5CKY3NwBIRhZiOEhz4YItTxNuZGf0wbjxU5IT6jMQELNkqur+9nqBs9Vax4gKgdg/mc0tD7b/FK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749390594; c=relaxed/simple;
	bh=xYEgXiSW8IzBasaJ4pNwvn8eaztti4z7a1VMm8vmaao=;
	h=To:Subject:From:Message-Id:Date; b=EDKHYh+icZimPMjrwCpO+kurXESZBEPVSKEw3FPWZLgYv6U/7YPu0e/oYUp64SIZZqbrs9XfuaFt8hp87mG8w4lmRk2S3r24TwAAuVIzWjh8J3ticzTj4knwHy8puQeCdTrn7ZPAIuy1QKtr30bDHbmeRRdPAQChkR4QCRj3siA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=imKJVmWZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="imKJVmWZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3815C4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749390593;
	bh=xYEgXiSW8IzBasaJ4pNwvn8eaztti4z7a1VMm8vmaao=;
	h=To:Subject:From:Date:From;
	b=imKJVmWZZxD6HX1x6fLbeejIgccr0rp4SZP8NBcKt1pjgLZii9MIURgbTb3pES5Y2
	 et4f1HCOrSreQvQs803ep2kBfBlxS+vJgG9YIVLgTtAqaJjy9o1CBXVxDH3vcyQn7Q
	 z0a5PQYP7H9/W04WND7DKfKNdSwargFfboSdPGubuoHSE3RxJhGb2rk5Ku6PicFoOp
	 1lMiWu8B/ntwpF4Sr2IAJkqowSVeseG4mB2Bo4cDBDr9pMb7Y1aHEZiwjsURipw0gS
	 uSR3Ebco7EkLwHoQqKWN7YLScQYYEOlKgF90qSy0HwQ6VyJ2vL7od2dVO7fHN8SM/S
	 ZeORu4pdyAghQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933CFC5B552
	for <ddprobe@lists.linux.dev>; Sun,  8 Jun 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174939059359.21029.1587983395801253957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c78e45544cf480a96971ecc06e490f97ebca461ebaf9772a012181e703593869
Date: Sun, 08 Jun 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749390593
