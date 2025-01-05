Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2017B29A0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736042754; cv=none; b=jOs6IoFQVK07YeyqXIb7Eb65HDezBokShU2s80b7Z46FXXD8NsH3oh4NOmBwA/ryeFwcgJBN6PuOtBFSO50iF2ElQA5yILhoUlXzAsKCmp1x16Xkye0B8SKbMc6aFcE+w1K9mqigwsyKF6iMxKvYXKap692oZXDWucwNZMXmKhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736042754; c=relaxed/simple;
	bh=33kcw4yw0XIQQ1kQYsz+tj6YmtR8yfM0XXZ09+RaOdc=;
	h=To:Subject:From:Message-Id:Date; b=D62n8NQQDREmxi6i6llFemGiqlMIi5BArNtdgQe4Czapu2rSZXNgyHRSf0r9+s5xGQWZ74vr57MMDc4qIVNAEGSersHhVBgzUM28L496WRMMrAJkmWVEAlZQ5uAFYLG8mg+EilHYhvHhkU8g/NnyJDf7z+PBRH555b6AXbXaPSc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pIfC+adH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pIfC+adH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B05A0C4CED1
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736042753;
	bh=33kcw4yw0XIQQ1kQYsz+tj6YmtR8yfM0XXZ09+RaOdc=;
	h=To:Subject:From:Date:From;
	b=pIfC+adH77Y5G+bvLVJxEB2qnegrbZRvHhyXtApbDJcwCBdKhvnSSgTQedex8ETnC
	 N2BZWsvccKQ3D/h35Qgm8F3G+Kx0JaosENqTy7DYvwBm15JGUil16+TdjtjvdqSAxS
	 yMrw9QaNaCp9gbWUYOt37T74TczceIGo0PEJRV/uJFAlN0VloTq+me8gg8RT5kdmyk
	 +e4ZrX/BZ87+skjZUOolC38LfzcAsUFE3A33BfsEn0uw+QQpSRN3CFrtaeuNxJw3je
	 /e0b8OmeXSSavN3BR6sSJTxB3bj2AMSSDgk0+/I04s7qd1CkN5lcvF1t0tldDYSCeX
	 1FiMuEwb0psrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 967C0E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604275360.5112.6488278746442667598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22055ecc693ed3b034dfe8c953dd36660d5963a8d32c876b2440311f3f221ae7
Date: Sun, 05 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736042753
