Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1624A288C2B
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769837634; cv=none; b=VoCI/avva9/Ufv+ne+HLN3kkyFOyI8lTsQIqVvSbebFRYdgYNoMhRfeDoCAGGfQTcXh2bepzhUpb7uvqjFiV//eJmLgq70jsXb+YfZKgVqlv1DqfR1oJjVyT90YTgzlE2FnZM+/ZFqBwNlRqqMKSNLEb5v2y4k+FXW+PGSqPz+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769837634; c=relaxed/simple;
	bh=qusO6jK0VBmlXmKETG0XMv0w2bf+kpUmh+y5/cgOm64=;
	h=To:Subject:From:Message-Id:Date; b=ZWH6Y2dS23ZWsYH+Qw9htUuwAhdzkz294S4Ge/ikVE0+ehYoxBZ9Sp4Pby7lhKf6LiIPGIcamTOuFT5n8dWZNuj00NGi4rFLMhvhn5Y4FavyPC4Z0DGZfPmqtL9cyfn/MunevBeIl4HyiHYlCwhMaKWvK90TybLPDgHDKGzk2s0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o6QNiM9+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o6QNiM9+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1731C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769837633;
	bh=qusO6jK0VBmlXmKETG0XMv0w2bf+kpUmh+y5/cgOm64=;
	h=To:Subject:From:Date:From;
	b=o6QNiM9+nVq2j72uEJneeGNTLNq7iSQ7Z8lmu2YEeU/MjfytLmoDVVlpnU38ymKav
	 ZX+4sJjCiCHivNOniEay8kuG6ovp1WTNDM3ISKUBtTUGRVKjvtv+TIyGyys3d9gWKW
	 Dkswc8FwlnYqVI3ehUrTz5BVmK6wXfLEIYUZofUuQH0UZTOHoB/vGfKT3sYUz9Q1Ww
	 RIx54B6pxUidh1peGkBqXVePwrd1X823XkhVQvUSe661GYpy+LEZakfD8/mmX9Pd5i
	 0LHRNvKqz2FVwT/fG3QaKQRyooAwouB60UHmFzXSoPdG4TAHTUu99ga9N6/gJ6+rF7
	 fyarMpvi/TOeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94465D73EBB
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176983763357.27301.15757528073350177856.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87b0c53301063722af7a40abcbaf7b7a1509c4aaf2e1ff06ed713e214f9cebc3
Date: Sat, 31 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769837633
