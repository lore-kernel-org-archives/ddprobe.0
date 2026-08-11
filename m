Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39A461714AA
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786479634; cv=none; b=DxDSzgUZ3Dv2R7tntXx9vu347Bs50mtK8HzwYyFH55yo0YbSReBjdRC4jz+sMHqm+743zKb6WQUl9IbZFD8epmKo7rQsJh6Yf1fexmGI3sdXP0qiXcy82tdCzm30b2vMyOrQZeeVROvbd/4zzzteT7mNBB6eEDLzSUvifT0aYlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786479634; c=relaxed/simple;
	bh=lGsPm8tkm9XfplB4HoDxe2dTWP7s8a2+PC+qAQxn2pg=;
	h=To:Subject:From:Message-Id:Date; b=X2Nd1hL+96G1qlKIYqLbsKsTKnd4PqsTHruiMXpx7/4ZwJyj1LOeUc4i0WInHoLJqOcMjVlKaHgfYWOEk6Zk0+qz8qpWwMqHLBucqXW+FLHryMD89fmk+jsynMe82BVzP/QUv2jmM0eElLL4lCt0JaT2cTmzZXfKKLWFLs7MO1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pwBzd8B5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pwBzd8B5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE7DC2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786479633;
	bh=lGsPm8tkm9XfplB4HoDxe2dTWP7s8a2+PC+qAQxn2pg=;
	h=To:Subject:From:Date:From;
	b=pwBzd8B571qxOhdPJNtrTBHoURkp8ePaQMluCTBcReVr7RPifxyKH4n94chlQjeLh
	 74kFEve7t4BkGY9hF8LZSY5tOlhdei0y39q6pvwzwsVbYogkG+IRslrDEWw8gF/sMM
	 eteE1LEz3h5NWHLRf5G1v0LdCfHBwEF/B+6M+Tm9FphLbubGHDiAvDqQyRVxN8Sem5
	 wvQ+7dqijcrNXMTLSa+etEU2+ran8wz7I5JExePYCF03NwJIbEeBitHXcwH7CsXS6m
	 cQPNNlD1oa4vUiQdVCMvaJQoDJWngx1rlcMnRQcMihAk9FqRC3rEqg1OSeVAxo6NLY
	 X8u6FIAwBFXRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94B3C5B56A
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 20:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178647963368.25158.2757074061857820944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13345bfa3e19a9558776f3b951b9b1fce99c81461e36290992f021dec1740657
Date: Tue, 11 Aug 2026 20:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786479633
