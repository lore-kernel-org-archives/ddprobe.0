Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A294399369
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:44:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780746274; cv=none; b=V09Q5yl3vDJ6lVrHOgEIsNZt2YbuEfjJjdIvrNDuXjzmxEk1wa4q3hR7eJ4WVC9ycEc8+NkSDeoizCU9B4t288cKk3ERFjHly553md8/6I96DuhP4G74ZRw88IBMuPVHox9Myu6Igfo+iR8KM+BjP2mC88psAdHzkHH5D6INEwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780746274; c=relaxed/simple;
	bh=HBrLq3nkg7fcVHRVQsm1GnUWZPPXSThbXyoOsnOhYS0=;
	h=To:Subject:From:Message-Id:Date; b=cOC2Nm9YVVqUuxdfe6Pdocxln6bCvFT1a1JoWCxZMRTh9G5DZIDD5J2eHQH0cQpvzj7KDvSOU7wvad+E2xoGxZdGqY9+b//95+6tF5/HYnvXhfF7msSiBMKrpmFaDfS9Ryv59rL88ixX1g0eBqqeaA1sm82dgJ5Qn8kTW3qJfM8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ede9ZAjZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ede9ZAjZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE927C2BCB0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780746273;
	bh=HBrLq3nkg7fcVHRVQsm1GnUWZPPXSThbXyoOsnOhYS0=;
	h=To:Subject:From:Date:From;
	b=Ede9ZAjZaF7rK5BKgdQqs74WsutaMEIW8T/1KYbs0m2KWEAKLIUJRn49d+O90NNLm
	 fRFX10wNZRBb6MTFHjuZjiP7cub65FlnkpV+5hFpHIijhBrccPK7ONXcfB15fmdHp+
	 OnS05ayv/nzgmmZb4YSvmkH7B6WP6OSSWlA6an1LC8gL5aBSKCieEKavPTGd0s2Kfy
	 G2kvfIvIQj1sYqlLjlDMZGV2wJLBepuwHUyIqhAL39CS3d+brnRmHl3h3n/p92wh/k
	 nYxDsauZzhB204KhSzVOgGBvExNeyLLKo0Y3U1mkrfa38+rcKHRpMgZ/uN2fIDf27q
	 dBFTm3lvYEO5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4FDBCD8C85
	for <ddprobe@lists.linux.dev>; Sat,  6 Jun 2026 11:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178074627373.28431.368695794504204396.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a3fd63d0261644179be1447a0b016a823ead18c0b92e99db64711589afdfa63
Date: Sat, 06 Jun 2026 11:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780746273
