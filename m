Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C660E309DAF
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772162093; cv=none; b=Lu/C501Pjxngl3i2OajZULEBYIVV9I8xmqVH6Aq9YSU2aczE1LArMr8GU4OQVIG7JPTtaAq0VVIXemg0anq9bfjMnGQnPckPm3pNZBxx6ieRhHMypni2Q++zVpo+jW5k/CFkNXkmuBNsplOh0f0ID54b0jrske0vP+OmGfjpmMw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772162093; c=relaxed/simple;
	bh=OhXPGz25FM0KgMKGqaKMan9aqcmuGM4hWY9GHBwnFyA=;
	h=To:Subject:From:Message-Id:Date; b=nRuvOcSsW7emeccLZE29h2H0zBA8/Ga2iHYqB9DzfHB8X4MxUOCvX7FPFZClD1QyGkmp4klBx29BMTdrnhmI3RVhK+Z76lpFHfHWhL+r9n/xBijzh8QLtkTQvhnlqvkhgxGwu76a9UUnUBBMm31VV1nf517kcG3SMTyub2r1YlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BFLNukxG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BFLNukxG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA257C19424
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772162093;
	bh=OhXPGz25FM0KgMKGqaKMan9aqcmuGM4hWY9GHBwnFyA=;
	h=To:Subject:From:Date:From;
	b=BFLNukxGouS94F/VJ8whBXQqRBOx8Ev92g9EDuCVvepQ41LR8FsYnNmZYY0LHyPkD
	 s6oAPxrBOqXTdndDdvehAV2icE/5g3XmvYgcmfRgtBCZE5mNtnL7yEqv43qBnuN1wT
	 R7nAiTClrTv+jq4yeeYONQXElFO2pHTXABgHH6xBb7SJ/dBxe5qfA9laxAQlxWD4lR
	 l9ze2TXv9DVojFhPptRJjzQ2lseHBJy4D7yacueqkkD4BcriuYvBHsSbR156erCqkZ
	 k9FP5qh/TMaEn7op6c5Wo1+g4o6tRApcdqZNzooYuxcThzjwK1hySLpvPBpc/D5wKE
	 KP0nY+M8u5omQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93AAEFD9E31
	for <ddprobe@lists.linux.dev>; Fri, 27 Feb 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177216209358.14399.8166760057428878438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e7073d1ae604619dec4d0d5e3d52b30af8813e2d1887acfc7472a8374c94f41
Date: Fri, 27 Feb 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772162093
