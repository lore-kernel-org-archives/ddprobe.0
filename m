Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16D9726CE18
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752565194; cv=none; b=pIc1VEEGxNOccLuJBLGnj8jo7W5AArgtFauu0C7ZvgSvHOtB2g4WT/UQzWRfRJk37xUTvttddSnlBOHFldirRnUB4ZEs7X9X5cM6eTv+jUFa+7G584R7ZDOqpGLOlKdoX1YQUSi4erpRjKxM6hrPhNsNYb/RqbSvMGBVK7sSxW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752565194; c=relaxed/simple;
	bh=fu8BRFhJhCyyBlgF84/qdQ+6zEqrSl6fFyEE/6//n14=;
	h=To:Subject:From:Message-Id:Date; b=bAGqDN0jMrUuLDJfkCj3A5/ZUUxlQ6P4gqdxUxmm4MUDjgENhlncnhKWWij8PdwwhY0tvkRU3AEyF+FICZVsWoxzGuWfA72viYO8Q4fgLqXrggb1v8/EWkYZKsuiETVsVD+OINKbDieGaq32fVma2sAzkmZ5WKiUgOsR62giWvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vRVxL/8s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vRVxL/8s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1251C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752565193;
	bh=fu8BRFhJhCyyBlgF84/qdQ+6zEqrSl6fFyEE/6//n14=;
	h=To:Subject:From:Date:From;
	b=vRVxL/8sD/qC24sCw+zCSqr0kUxYIQTVKdASQDmvhhNKu1kTeK3P/3sPTVuQtlSnj
	 c3+OQNUTWzDkTcnBDbtgpH8uPcbhg9xDe5rTPJ7gBzGQEBjQl7cTj8sHyHDrmmbmLV
	 vWjAe8fKDN5TlBbB1C9M7ZEZcSQVFLMBoEGidoRx5WuKUqloNU3neslTK+Gc4Jl3pz
	 nEL4HMc4iAdME4elymDEEeUdF1aWI7/G0dDnEQTEYUyjAQaJD+r0vs3LF+4lILBpTZ
	 p55IEus/6fqL3n85E9/N0fIy2208rjB3uWjI+jbnGG2ubbBUGUABzwwj3Y67kYoEaw
	 zSE8DrfeMm8Ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93758C83F1D
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175256519358.18512.17837835461459312683.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8dee2139a8292d5686392f44c4a10421aa343fa42700009c66f8ba02e975869
Date: Tue, 15 Jul 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752565193
