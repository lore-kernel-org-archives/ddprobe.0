Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57D0228C854
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784923234; cv=none; b=mEDDms9xJAygydsU1f204ggsYaq3friitzCBHwjUMOpL8eScWykMQuHnxf0lgY1tOwjrhY4cj4qeo39H1q8uFZKWOnprN7XE5z9v+owyQeezbt1LAjoJgJLs1O2CPtl545Oahjv/H88YZG9cJZD7q/VCPhYIc4cInlxLurBwEr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784923234; c=relaxed/simple;
	bh=32PGep0KNXp3Cxk2muE23QZZ+5o/7vhqEjuXAFqmQnA=;
	h=To:Subject:From:Message-Id:Date; b=ZpADHIHdsaTArpyPaJuj3dJdcgMm2msRBLm7BLrxuTH7Ta33oUQdsfNNi6MC9z/V53XTJhbzkNXW/40P+2VIzKtF963SrQEZGP1QauUJ8uhisNi1HIqUUa3ueQT4deaqZUZBe48D2DQl78C3Bf7ujF7HMTxBlbzZ3x/xFjOP7wI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fu9lrS62; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fu9lrS62"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2768C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784923233;
	bh=32PGep0KNXp3Cxk2muE23QZZ+5o/7vhqEjuXAFqmQnA=;
	h=To:Subject:From:Date:From;
	b=Fu9lrS62ol5bdHoUcYNuLawyYQyXtRZgZIr2pTZIR6R1BMcZAa6SiRRzu2tVpuLLc
	 1MT60xL3209hQ1thN/kCcfg4t5UQ9tdjYCfu/Al66KSi+fbF+ukeM5qo1e+bR5pr8F
	 JkWY21QIzi8g/0EI1WaHBdFrS7MEZ+DoI3Ur0lUHfFM7LavRtpYsq1ByE+EOMXP2N4
	 lfQnAdxYHlr2CGOduqhaEm4+O/OemIqLtR5543O2UHYXe5oik2A4YnoR6cpb05a4Ch
	 xPH3pBdxhRCaxa00u+RLDkzIOB1smcxtxterKarR3ROcMS4GvfoK95U2W7kaZfE7Yw
	 fQBF2TFpAcoCA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB9B8C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 20:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178492323368.11794.9248006250643129054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30c69ee6d5203ff87b79b81cfd7397ca8357a29a974b7f0e1ba743b09d294c51
Date: Fri, 24 Jul 2026 20:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784923233
