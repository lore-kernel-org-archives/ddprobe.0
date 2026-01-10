Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC89227B95
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768020234; cv=none; b=btZXEq9yYyk25lz5vl68ztY5g3NOIprdxAi2Z3jBd7xZw74F7RyOk5pT293PILxO3ac79MXSxhMHUrvD+gjOCR/k7z4lcLmcXROy/U55ZBJybClhQJu14YgPlsR1OB7XZDdHBx7r1mHSZ2aFpwmlAtxLoWQrnT1GGpAE6F3Be7g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768020234; c=relaxed/simple;
	bh=DTuCx9c9BhVkzPOI0vKZQARetSRaPuY17n02hTrjHBA=;
	h=To:Subject:From:Message-Id:Date; b=pYG3Wz+iUGIeQ2H8o6ax+BWju/n4A87iridZ6ebKKdGnwnezMERSirYmYog5rno1Eor3SEMOAnZhMmx/l6BTM9jJsLVApkhdl3w6R6fUkVFWAczkmcWIrbMfHNchpJL5wvfVvo97SLILPx9PEsU6rKnjLj2ieBi/q4F+P6s1Gbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qyaJ3ICV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qyaJ3ICV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D3AC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768020233;
	bh=DTuCx9c9BhVkzPOI0vKZQARetSRaPuY17n02hTrjHBA=;
	h=To:Subject:From:Date:From;
	b=qyaJ3ICVu/5rtUemwAz/L0Djw940RwExw0RyXU+DTjWJew3PcgQTJ71n/eVV8C9L+
	 My0TcQI/nPMInUb9JZQCueFjMUBxAhm03gGGirM5o44HL4gy4O/OKJl0bPBvBWM1jP
	 k+DIDt5twmjsfzRxqZOTxR5qomb9h+KDDjqrGSfOcD3cs+D8irFSQs5Uq+9+STcVlw
	 db3JR+cFGN3q6wRo5S/B6iJn90LLEgdB2m3H81LLUwy0dv9pueAYVVDN92DrfzgDIN
	 GS6vBihmPSjycXyk3uuYoIWJvE5/77+7Fux5MWLAW9l6S++eStzft3H3NGFmPojJeX
	 FVS+NbIG4ifvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978FBD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802023358.13502.1961938426506503725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bffd98cefeff0f7a7f4a53a57c2296bd90cfb1be007ad31870ff773ccc43cf12
Date: Sat, 10 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768020233
