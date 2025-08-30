Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46EF919597F
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756516194; cv=none; b=DiXQ0c9y0Ru4p5k6gqHDBGdHQvp0ambLV26HRhuE6grz0G3wmJgDG2YIfGG/TJvAmzblbOfZEDPKCKu8XTJwUr9FvdQCT4FLuA5QtpDnQv6a9xLG4EXYMypH4jrE1zTk+APYugjuSYT0QUSzWZ4lhR2zOQuxLafLogWWB+D7pR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756516194; c=relaxed/simple;
	bh=Wv3QHOn9mXvGmA/fF0AyGl4+BoAH/LqCQOv9sT+m8YA=;
	h=To:Subject:From:Message-Id:Date; b=OC+4uwi9wiySXPlXLo/Va2Tna8wfrnGw/30XDVioQ/BvZgFpI2yX2e0hALO3wQnUsamqbSpmMVxIu5594YzZMtzcSe9GHNQU9AwXBPRfrgEt+jcugT74F9DvzP92kwJFjW9wfWx2qAlPRxvWdxp5CLGuam3gTrg8JsAEUsdHCvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qRtjNo+G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qRtjNo+G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E6FC4CEF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756516193;
	bh=Wv3QHOn9mXvGmA/fF0AyGl4+BoAH/LqCQOv9sT+m8YA=;
	h=To:Subject:From:Date:From;
	b=qRtjNo+GQtL8Z+GOws1RlRh31AcmBBPlH0tDr2cecyQhTsdVMe8e+ZQOeGIF9LDqw
	 6uXeZhFUrVnTCskNTeHkNoz3hvqN2j2IohC8yaKgOjQ2TR42FjSt91qPMEXIRyLvKL
	 eVzoKi68yH3y9tZkbVGEkJ12mxAOI0XtZ6T27eiwsShVeQv+RX14xll0slK6W7AqNQ
	 NCMAhTIvmUZfmTRh75NQlL2y7MxB33slnKTr/tfde5Y2hD98/yiWZeY3ssagqa8q3m
	 9fWXsTodPNMUbGPtPwMRi/xL99VTbtBAEoiKOxYi4K054oEeEjpu53nwvswgnprVXO
	 COJY/uo9IWtxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940C6CA0FF0
	for <ddprobe@lists.linux.dev>; Sat, 30 Aug 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175651619357.25527.16065784167329080366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bfe04d34665a520d3610fbfb81a4f4a22c6bf57a23ecc5627f273dfa4d63656
Date: Sat, 30 Aug 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756516193
