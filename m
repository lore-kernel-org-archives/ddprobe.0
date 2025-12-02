Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1576F2D46A1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764703374; cv=none; b=BiuORtL+76jow5GLpQTtCIXyA06EEHiyNCKaYemK2EllXOvKvRPo9mYGf0jWD+pyoxiunHidVbdxlpJNH4dqHNiuXUbsqCIIau8T6o67OfVTytyhtx29OmiVt+3+Fcn36nutNrvMJceAGcmodNXU0cRk2zB+FTnqB85E85Z/EsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764703374; c=relaxed/simple;
	bh=6zH0/Eaa37VcLgbpKFsax7d+uyKUZpF50S/Q6bpddMk=;
	h=To:Subject:From:Message-Id:Date; b=o0CAJX/qftQAuq3mclHprNz4gLn5fDPU09Yb+jG24/S2xYdwzgs1UgeqfU1eTTrOzn3z9y5yXfneVYprJJXOV8iYCmBSwqY0S1gmezQFKTNjXuMD005ZzBSirKGac/t20nqLf77dyghtEpDC7bcxw4dVck4oHUyUaMwUiB2iZgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DRCnFs00; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DRCnFs00"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A79B0C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764703373;
	bh=6zH0/Eaa37VcLgbpKFsax7d+uyKUZpF50S/Q6bpddMk=;
	h=To:Subject:From:Date:From;
	b=DRCnFs00Ea0Xx0nbcGzwCs03DZUr+PB4s39ZBZjW+W1AK0VrC4oR9Pmas4B4q0qNP
	 4aSJu1sk3VZ0wuL482zdaAxij/NwoWb1p77dzNdB/0Pd+isjGBv/gjizh1vJsVmSrP
	 /3fhxYNs45nlpCUVn9I+fmoOqmJPi2UtMVhekJ/V1GpexEMz2fVq4oqu8C276P68C1
	 B0NgeZLkWHmhtlh93TpFhpqGY3zN6t9AGLdpwwABSJzL1b18Iw/jYuTC/trDXpiw/4
	 w8oSa+66uGt2wiUwNFA6arCtjVe8QllTD/y09n9hFKRzdBc1aw0Pb1AJu1iJ9JnaDX
	 4s4fLZyMSaLbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CDCD12669
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 19:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176470337358.23948.9609051454698914064.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e032802f0147f9b39438416d116d01bc0f7c374083e5c89c36ead0743200348d
Date: Tue, 02 Dec 2025 19:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764703373
