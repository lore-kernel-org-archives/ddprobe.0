Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73A32391E74
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790182234; cv=none; b=INRxHZFaH1czLNn3wDG5H5tL/ms7SLdGsakcOfqWe8QZ17cJYuaYNhUCt0lHH/npJBW4E3zfBb9gWoaHZqYzwioc8EGeCYdyrYsCeoFOv687XfvpJJJwJi7vGEiwsO1a3m5sxods5z47zioib92pjQiX2Ty9YXPnLa4jx2C5BK4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790182234; c=relaxed/simple;
	bh=aefjZCCpAEP8n8JjW5+fH4m5+XvUe1MzFzNLU1I3vYA=;
	h=To:Subject:From:Message-Id:Date; b=ZUNtEOKro3XbFV7UwFgkPFTvkO1AMHduqFMbSOe4A+qK3AHDpPxw5wIlgt29PH+eSAIQXC9tsaUfGpnB9kkLjjKli2RSZgy6AbDq8uTZyxJPO3kU5l/p+awlUvilU09DvulkbiAlEMy9cUD+kuQeGYByCYqZAV/hX5F6KsPfyZ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A4fAduaE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A4fAduaE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 02B43C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790182234;
	bh=aefjZCCpAEP8n8JjW5+fH4m5+XvUe1MzFzNLU1I3vYA=;
	h=To:Subject:From:Date:From;
	b=A4fAduaErY80kOEsda1w5rklR/SRLz4Q+gDi3iiZOynJByMg/5O7cn6cI4KN/ob4I
	 Xw21IDPtp9hcefhhVV92Zx3W4YhNGbMJ4iIbNwLY2dHKSzMKLIVF34amjVbORZanJw
	 /7uCKhiBr+/NDmtl01kICWmZPhRrIDWBb6ZC8Vn/O6tVZMKgLTFAMmnYVNx7mT3Y/L
	 87ibwtOp6qwowjYWnPQrcDj4yob2Lgs4DpqSNMRQvVECkn8l1lssw4oyif1eoLpTSi
	 wCIHR7SJjJREWH9hS3xWEB431ocPJrF+5uF7s1LpUlsHyCdGjOcBYx7tp9t7hwUuTp
	 UT9lV3ARYvU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9FADC9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179018223379.24590.12963323175862421412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a0595cd0d050979d6f7eb2734bc79379571ee5da0380a84d09285ae16e4005c
Date: Wed, 23 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790182233
