Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFFD28BA93
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744658994; cv=none; b=C7bj8OhBbHBk3Y2l0nyL5QiHWJFjoR9fkh9iEIusZoNCX2Sq8CaieyKZICHXylYqqHh9MCSwI988bJc87O3qngaEQvZkoI5o0TOZUOSGXf1+XahKxGbcQ5vGBXDROUfdsEVOGjTuoOVGcM3tU8qQnWBU2zvQl0nMkyyUSYuBWSQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744658994; c=relaxed/simple;
	bh=RSV1SPjusPKFbpmq4Bm9EaHdFLFRECeJ0qu1IJJOOVE=;
	h=To:Subject:From:Message-Id:Date; b=EYYbLUqTMu2GmeshXNw5RNKJ+Mt1jr598ibSHJINBg3L2YwiaXAtkPsemx3nQmBFtZKwsNFktQXtOgTfCyvgIABE0mupSHE3NfgHYTYGw1YxFqFxP6olFzSWiSfkoH1UoBQBpBmHuSHZGFtg1gEZSM9SWyZyJQx3kfMeJPMmA2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dUVM9gzg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dUVM9gzg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B156EC4CEE2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744658993;
	bh=RSV1SPjusPKFbpmq4Bm9EaHdFLFRECeJ0qu1IJJOOVE=;
	h=To:Subject:From:Date:From;
	b=dUVM9gzgEzlLDdlDG4t9qoVb+S0AzT1e2J4GWbYhND3Ufq0bN/KGNDpGGsMr2t4Zr
	 tMeeRaoh/a6UQ5OoJcRKKUKUuI+MwPJYjyBTEHDHo4RyzEBnRbc7Sio5B8ZtcElvj/
	 Q0YEQVrZ5xWZYjC49e7HiIHkwHDP6AGa69dKT2HZ42cEnKjRWOVxZsPURUeL8mlMm/
	 9X6ocNECdnJg9OIIFsmnsMc8oopnOCTw4Q3T4ey/IImSK0ZthrndW6zFU0NEdIGKAG
	 ljwVZM+/aN8lddIJ8pj7DbNHK03ACYKxTQQYKsJ3H0JCzQRrtD34mNB3teF5OBz65y
	 TJMcF+GzzIgxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F5DDC369B2
	for <ddprobe@lists.linux.dev>; Mon, 14 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174465899364.25692.10171366114764754494.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc4292818b52e971b23e6400f6ee3c28c324b2a9d7a980e68988887cd350d033
Date: Mon, 14 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744658993
