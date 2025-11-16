Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09FAF63B9
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763333514; cv=none; b=or/YKh2MuZSwhYeQrdGKyuj7S5dlS6PRJPskxPawO1/dxSsH7b8P5qv6zCsJvWgpl4drzIRJ3ORJfUOzaC2o7dUWEbT5utKTRPMKcE35E4hbsiyv7vEhIvHDToghdEULrgYrA48yN+uVlYbRQsnhzNJk9Jgha4WJ5caIOBKwaOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763333514; c=relaxed/simple;
	bh=32zhCTQEjOiA00Y/sgAGKxa0alGyy7u2pUQm2WfLIEs=;
	h=To:Subject:From:Message-Id:Date; b=uPvmFZhT64CdszISJjISdetl1X7WYYoIlC1qqdhAQjgIb2WWbqeNd1d0ULtKX++lJlbCfN1x0oLKmSJrwdrlsk1bHUTAMdmKO0huPhF02aFZjA2XwUVL+430QhGqhCCA4GwNQQaP2o23mW3q57j4X2mn9Pra9+hy3b+OrKSushc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lKqtxaSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lKqtxaSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A019BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763333513;
	bh=32zhCTQEjOiA00Y/sgAGKxa0alGyy7u2pUQm2WfLIEs=;
	h=To:Subject:From:Date:From;
	b=lKqtxaSkLiDpgRcFNFhkHdFgbGE0Irjqm+TgD7eCfVXNwYMNxZpVJNIL+3uxTkdqk
	 Wc2HSLmMWNozPPtruYZ/DFz4DY+SjaFRN7R1CMFy2KuhXlAOpmYSjW2fhl9YpCwGzz
	 kdg6VbBEThGAugL7iC15yHLc67ShTmMJaUvjysIpx/fGKWZduVJUz2jUfbB4fXOJaM
	 ygsKieUq5gI/pnkBGE7TT4V0HuX3CV+lhHaJKQ1DQkRMta1LEuDzeANdqfMapAFB0L
	 1jIdNPd3+31U414/AH42N6rwHn5fnYleII53aPOm+FXSgqH9FnFGJ7FYk8vPDe8YZ4
	 ayC60r8GIGFUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C8DCEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 22:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176333351358.9998.1220512709545468542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54f3631aed7576f9320597c26638799a8234d40488227ce8bebe9781ba868676
Date: Sun, 16 Nov 2025 22:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763333513
