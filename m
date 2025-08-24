Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADBF1D555
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756028994; cv=none; b=AbtS0wQxahiZYU9oLb22/hTkJEbuS38Qj41gZRlxqLk74W++Ef/Af+zrRC8RjqnTm6nI8ojg8yc+kRfJBxWI2jM6lsCHkvz0cqxiW0ZTJmeysmeD0SM0faCBPTKwlQ+V9/bMFqpZjffRdZyLdrH0Mf4DcsgpDswOuAS4T3QACFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756028994; c=relaxed/simple;
	bh=WpAv0KJoJwd7Qs9NgU0u4PS2+BnpvWB3nhFwzXK/e5E=;
	h=To:Subject:From:Message-Id:Date; b=MV2OKK/NPad5lhzA7cy/IL3ludN6xmFCzRqmSBGE6thj0lYC8EqbfSP/G04epml4vWSdpK60iTKSabaYlhDbQvu61KqEmJjWTldjqSTU2YAhD79zmDzickRTmtCVCbKzb03Z0b1kQ7/CWhMdTg/F4NxzH6HnOWlN3Ao7xOgDU10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WeoBLZTP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WeoBLZTP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5051C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756028993;
	bh=WpAv0KJoJwd7Qs9NgU0u4PS2+BnpvWB3nhFwzXK/e5E=;
	h=To:Subject:From:Date:From;
	b=WeoBLZTP1QyTVWNHC2Jm9G9E2fCO3+3S9bAiLHaRU1mSoRlDx+8XlVkezeaaL49YE
	 +7cfvxboxPniPnOAfqWCI7UrMDrYK3oE41bD4BBeFJemsmS5GgJzgWy7c8nfWskzvh
	 V+KHe3Cd4w5S6RYxC97IoxtV4/4hXJXaTmGucOLbQEzBnyvWx+FbNxdPkCMBwJfcYM
	 Id22+TML4zm65SzPBmgr77laUNvwAFLxa38Q7lePvAUdQSIc8oieBBPRt6AWcdsvhV
	 P0R4AudYLvUcvBmmUYAVhcQU3JiX+y7ekfeJ9GYD2k1qrpeL32hn7S+BKE5zPAyJhI
	 YJySSqaPvqh9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950F9CA0EEB
	for <ddprobe@lists.linux.dev>; Sun, 24 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175602899358.28035.13868923716931927347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 853eecbd6cbaec5089b30da4848ffb7aa9878d88d22db53bb73597f54a223d46
Date: Sun, 24 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756028993
