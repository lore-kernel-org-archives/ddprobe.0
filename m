Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA35367B83
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779265234; cv=none; b=di4EMYhjdCr/7UGJDxbOy8o1GwH8n1HdpFUGg5X9QQgm/Tp86/Uv2chfntIvFljqIUWkYr9z+K1033brrncFl3bP9butBZTs+oM3VuMJUSDk587uRXifmxQY+HTl0HfBYgipyzAluVj9zKIPNDfyxfq8b9Sic4f6Evq3jH2d8ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779265234; c=relaxed/simple;
	bh=EHTxyrfUKSYDyK0C5AiC+ohFPSK/yBwuVXtc6/92nkU=;
	h=To:Subject:From:Message-Id:Date; b=tvHx7CsDLKj4eSpoE5fbbTAkkSGo2F2sLLNPjzJ0nGI02pkkzdspZet94pvZOJ1rEe9W3R6WF1QmKFMyE9mhrw8OmGW9yXAjI9goF8DrwsQxmBlZzVTwWh18BrgDv+GXCCNhoe6GVZeSUSUhu6faVCL4KaN4JRhPwrG0ORelaZs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MvF/oRyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MvF/oRyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3148C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779265233;
	bh=EHTxyrfUKSYDyK0C5AiC+ohFPSK/yBwuVXtc6/92nkU=;
	h=To:Subject:From:Date:From;
	b=MvF/oRyFgAvYwdF6M+Ows4quzbr2wFklUTJujO39YwMbsDjPqCq3Vunxs+FNtawL1
	 WdBM2Prj82dhUJbwz3EvsKd/XRg5Pkbahp4txnM7jCbONYaTbCY/GYzo3LbiIPrydN
	 f9m/Y2/j9a/PKpQ5NeiZ0SQ4Papqyoy+OxSk2I5xjdHIrmJvYm8e7dC1pM7xAGZrts
	 ZlQ7GO5KFmDro3TjMi3gAMi0RqeZO8UuDc+V85BpIbAmPFF8Nw+b24LjtSU5yZ1ZoX
	 Qq2z4qS2exV4WJQpn6w6D1LqlQqVqLHRueGYU+WrQGsaFcoIlh3zhU+PWWlfkU1bTe
	 zjpbjtIhuhofg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA771CD4F3C
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177926523369.29657.5645881552055131667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 996de807180551623042a70b7669680a78d82e4d68a9d1d1635f8f0604216bf9
Date: Wed, 20 May 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779265233
