Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D2CD380FFD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787724034; cv=none; b=lk1b0/5BDFj/600SYIi2Edk6HWA2fCfkcK8WHZzsbA+oBWpeYyULaAqd15VVhQKh27fSmBC1mmHsPZY3jZ94XONgWQpHYfYHQxqh9ZIH7LOvTFDgzxVhY3Xxx5XFdB5nfs1MlRx3RV3ZECSDvzS5HGgf0v8vzdVTU1boRHRAssA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787724034; c=relaxed/simple;
	bh=hAVpxhKDNTZPaZkdG4lI1HsHWYa0i1GJ6ACKB6Xp/PI=;
	h=To:Subject:From:Message-Id:Date; b=YSHYP30gGicT71it8U8drBwC/vc3SKz3wDveNdSWZ6LSZLIn05i5XpulaOItHIsyn4fFajGdjPV4gVA5btSpNWM+fE/aoKMnA15CYWM/i5d7YZqWrTRBtB4DvtvWp8kTZBmYhANsEpVgS9HKcCgIdHnArqf1S+4GQhsSHh6Bg7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GpK1wGN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GpK1wGN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0591C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787724033;
	bh=hAVpxhKDNTZPaZkdG4lI1HsHWYa0i1GJ6ACKB6Xp/PI=;
	h=To:Subject:From:Date:From;
	b=GpK1wGN8Q2uNC3xDQuOtQor/zHLzDBfip3OVTO1aBMV6NoZ3yy49rLFLXK//wwt3S
	 KoYKbNe0AHSsT7/O/t5a0Eh3cHMHWMikwt54xWJybH/w1NiVCrVDlAWOEBT7UwxEH5
	 gvUX8iKhrWYIp3Qb+1eBiZI4mb16SJZb0KEcq9cGeQFmJM0N58TTOjyyy8ArOPO+K5
	 ZZuZzvy40EjPq/Bz9lbrEutDu61aqwJGuYa/xKrFf+rHCBnLRZPIISJhlfCm68DcMH
	 k+4HBGRYiZZ2pPHwYUxLev08WcR9I/G+wSS+8QQHVMFE8SdehSBx/8D/LHSUQH770P
	 DG1IGTQR8+KwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD2FC61DBD
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772403368.4980.8407749780554185963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6442f78e0cccff45d71d904f62741baee463e9e6075b9e4a70900df1e27db86a
Date: Wed, 26 Aug 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787724033
