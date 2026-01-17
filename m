Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 398492D661C
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768618434; cv=none; b=VlWdjglyUE9x/f2VLlMCbWTCObFIC20H40VxWitufwEkWIqgPkaRqjiKobUfHzO3P8AAnkQXm/UUBt5U+l5Ru5Xt+qWTaAk01xwR08z+k54kO1+sdGaJl4Q69oEwnoWerFme5T9pibouvhq6sSfu9mP9G2R5ZZ6+xvWD9bw/dNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768618434; c=relaxed/simple;
	bh=+qRjtLqVrHM+4to/HZx78wPXXKqEVYBEtkzY9NkjVcQ=;
	h=To:Subject:From:Message-Id:Date; b=DcdXG5gsf4AV6OU67A41lMS5/74jwHTvDlamPrAIMZZx3KUcNotzp6uxecR8lfAI7vzkctvYymuk+AL1nb1eALnOEhVdcsNlGEnJemR6zkzeV4kQN+Aro00LLNkAr6lewcR/0rEK0a8cGqDm6HFCHHRfVs90H5mUixqF64Sr8u4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CMfXzNwy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CMfXzNwy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA561C116C6
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768618433;
	bh=+qRjtLqVrHM+4to/HZx78wPXXKqEVYBEtkzY9NkjVcQ=;
	h=To:Subject:From:Date:From;
	b=CMfXzNwyZw5URhpoIzdq3qvPG1vUZ5mSP+me2yQDQ5Hw62Q7gZJFD9eEv+iwTy+b8
	 nbggFn+KxJuPklueV5aOKdXiiJbwIw0qX9tx9CWv0KoqwDMYE/kg2A9YLgX2JeONUE
	 yeareu39vIU4uQirjd9EkVmBtBAdSqNupTEu4uk1TJAL13DVbC4SHWBVY44V4d/03t
	 erPDEuafTPwkdshGpPr2jZrUnVUSPOba9aBRsZ+59xznZcYyeveQ13ac3NofpsXJyZ
	 EXrMlLAwK2b6Yi64qq6nWJCnWdLNan65lKGvpz15cXJqMdi2KTfjxfhkBiu2WB0Pkz
	 HYFl/parsahUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95DC5C98303
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 02:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176861843358.12479.9061264810933132449.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3df51b68b3e87c3e6f8c1acd33b6cf18cbf95c46fc4df4f0cbc136294ea67e62
Date: Sat, 17 Jan 2026 02:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768618433
