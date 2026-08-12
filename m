Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27108349B1C
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786525834; cv=none; b=bvvp5uJINouKL3RnxDB8okTKQqOJfX9KDA5J0lVwLgryg+1VDD+XNQdFfzVImYZNsrZajOa4TqB3iFc97iq/1V2giD3qD9GnOC5ERGln5ZjLkPqpS/ynA7EVq5opFv9YLFoI1eL/0I9y6hVaxlzC5FUPu2LHHkMQkRgwaEQVrEI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786525834; c=relaxed/simple;
	bh=Ma1+ERzs7Frt6mPEfB0XPHeJnqr1REVvMrhhYk0t4dc=;
	h=To:Subject:From:Message-Id:Date; b=Tz7qsjjTPHKR3npsGuanmRCPLF397FusjtWaWwmnOmFhzu1EEeKoqUjhfnxfIuf9fpkdLBCkW9EUxNur1bkNMkLTVF+WwWifMVJzED4WNaWB8OkbLa98CHoDs6xqL7tgQSf30SAvsWlZ54rrXIXIjxqlVBDm1S6FXTleBh/U8Gs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mMt82d4u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mMt82d4u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB67DC2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786525833;
	bh=Ma1+ERzs7Frt6mPEfB0XPHeJnqr1REVvMrhhYk0t4dc=;
	h=To:Subject:From:Date:From;
	b=mMt82d4uR1r0XK09Ul15PlZBCxRA+B8DMM1w2PqiPEhMoHf2ly8RkjqzkKFWrBzca
	 bWjitH/Gq7U+KGr8I2G1Yk+67cJjBgI7NAByb0rgI5WTnTu+yT+416QtBrdVuRMGDa
	 LrrslDLuy1xmdvKGuoHGf4J+chKwAsk9ste4+61W1ocsThEar8/J8d0o6CKlccoqKk
	 LqSQJDcZCcwyCZdZVoBZm+Yfw8iFWXAvPyyta7l5j3Ldko8lGJHGf/b9GZagB9BpmA
	 RSHIkN/Z7iieB2vqVIa9aDiGVvJRyZgpm5lvhjvKMdofRMXNbM3QxHN/i8uuEWSHNr
	 oVveZSDwhbPsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC87C5CFDB
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178652583369.15333.11057683164513010630.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 00318b711a25d1acb22fbc89ecf7c888289f070360c4c79d5c4ee4960c8bae25
Date: Wed, 12 Aug 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786525833
