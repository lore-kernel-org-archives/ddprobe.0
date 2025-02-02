Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549F44A04
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738482355; cv=none; b=u7c2dr3RRJZWTDNfBtr4ZWfARqq6eClIuPe7DwYK302tatalAgb5d8gfIUsWZw+JSzhWDVXkjQFl2R7PmavvbPISLxDSX/DaF8tUgR2OeP+PhRRGu2KornvPBW704BOTY+oIL62rAtUrIIM2P/QYd5JJPi2QDdJ8aVdMe5xS0fk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738482355; c=relaxed/simple;
	bh=t3zO+MAHhxcs+Mxd1kekJeAcZ530r2ZMw0DbI5cC+2I=;
	h=To:Subject:From:Message-Id:Date; b=u5zuwLA+TfSAODjmiIJTvbttjYD07n+7DjvuYI9zUIZzQqqmeMKu9BPBob/sACOmk8P1kuHMmLJlGB0XixQCGERPeHtBQ5/PMn6q7ZB/GtjqiuSI9LkhWdak6smJIWhBsR0VagPnuJbMV3+T8VNf5TV4djsNBq9Qg9+KT67XgyM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ViMqswKc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ViMqswKc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD627C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738482353;
	bh=t3zO+MAHhxcs+Mxd1kekJeAcZ530r2ZMw0DbI5cC+2I=;
	h=To:Subject:From:Date:From;
	b=ViMqswKcgbhiojHeFa+oZjXW+RdbpJIBrjgJyYbP7yKKZHVrew5Ty8Z5jlvO3e2EE
	 I/EdyAHxlyoZ+o6DMfRyI7wJaf+djr1avmjfovdLaX4qyBpqPaOiLlTOXBWJ1PhiNo
	 UuTJFf0B2H7wn1Yt+BRrcSpSBdi4lpiVbYeRfZnIEhafxy9gfKzyk6aS2xpraLpi/N
	 rZYgsPj0pd9s//cnQVglIdJdi4AfbWPpwhevBLm4przPJvd3HnISv7dQ/130LeN3pR
	 MtsTbZOK/1I/l2wZkkFGrvMPIHn+vBmTKqCr/bGPAG4laMUOKEB056UDUW/cwv08yQ
	 Ak4+kodfLcYTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D90C0218F
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 07:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173848235358.17087.5780510565978850842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b5b11e7d187fd1a07a1baba68a6a36d469f95518360069d5cdfc29c4d1296e
Date: Sun, 02 Feb 2025 07:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738482353
