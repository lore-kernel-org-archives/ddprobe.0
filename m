Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1F71FF7A5
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748262593; cv=none; b=iHXX26eFqDMTrpg/wSF7r+tmQEtiUtXpaJD85wwUeWNxgT88k0VdcohHDMlJTlZ7bucezoRWOEIAPQfsRQZBeiAk1XWXZ1XMahI05CFVVO0OmGcIPpMEU+C4Uj7dpO81LWLSukBgLkTZo3fUvk6+qw37yyv8hkRmM5N9L4xbSaI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748262593; c=relaxed/simple;
	bh=PnuZVtpZHrfecdv+ItGnyvemFGBHPsLNXjf5HwNlIYs=;
	h=To:Subject:From:Message-Id:Date; b=RMTTAxgFmpSvK5qYj6ntEVgvy7crXxI4sXjr6Ug6xt4y35VuAem08IRcrqRV9V0y3KONRVsJDPWJ3LvARJCaqfsr9ffv81PNWm2Eb0zhUZy4avcYVLCOItKpr3kS3kl0DvNoAQXrdRZGXtHEZCH8mts2OimK5gIipZrbl74oshI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=APEatUis; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="APEatUis"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE18C4CEE9
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748262593;
	bh=PnuZVtpZHrfecdv+ItGnyvemFGBHPsLNXjf5HwNlIYs=;
	h=To:Subject:From:Date:From;
	b=APEatUisjdEqf+T0VqSBwmNoKXNkvR66myxBqg56bT8+mPxFl8OmU/M/g/pYW1K3w
	 5WqllF5sufgIx73s41RlTWSMAPWD8vQjpyBrhz4UKaLbL1GsPLuftn8EYt7n8x3chu
	 G6P8FZZLWY1j37MhhgSNV2U4BCHZQdk8Zcz9yvPewubkZWTyyeMxv5mDh5GxnYByLB
	 CoQbDYJvHr4LNpC9o7RGLyb0nNRNcpQUw5h6/ewa7BwBE5NBQ+xcPUDdUFcI5LUTct
	 dPXliUFDcJS6T5/VvUorHZ4Bi6ikytbaFDfExqKISIO34Nie45mY/IwnLIm/qxFXJm
	 F946KAL1GXi3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D2C5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826259357.2014.646679136802820174.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2c01b35cfade9dafdffa82748023929eb242cf4ef4a598ae8d12b74f1e8489f
Date: Mon, 26 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748262593
