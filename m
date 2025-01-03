Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377681474D3
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735937754; cv=none; b=BxWJ7fGo3oD7Ch8cuW2Gb6fJYqtcvzDzWwme8qZYWjEf1RcCkZUJXDni39WAwpgtPm4MQcSkNklOpC3GKWba4JXf/aHp986Mm8P1U1l9Aw7cJjv6sY4AYBvRiAIDgn+HIrGevHidOGbSrez90kBOcrKD9CIuv3+lt0ZlOhehY1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735937754; c=relaxed/simple;
	bh=6dw4vAAUw1UxKIPqBgSZazLCFg3rfehCyW5mpWvU+oI=;
	h=To:Subject:From:Message-Id:Date; b=o1E/kXQpBrbrhXyzdkkRWfqyRQ2ApL2lz1q78yVk5Lu1E+1ujQUjpqieKHVmxX+mj9JbLnhnon47bAyGlk0SDjArljxkd8p/xUu/CKHx14OaHtd6OMKYeJgxvC7qevaCBr7ZJjlqAMLfPGjibbKVFQkCvZnFG12mzxcmbtWhfzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UumCoXHK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UumCoXHK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACFF0C4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735937753;
	bh=6dw4vAAUw1UxKIPqBgSZazLCFg3rfehCyW5mpWvU+oI=;
	h=To:Subject:From:Date:From;
	b=UumCoXHKjRv71CcuqLtdOHVdYr6M22K65f33EKUREWP1vIJ6Tl+QNBXvTw8IC9PsV
	 ivp6a9nwc4/vn9T4O5BzRfl+X/5ZTvQM6IrC+pOUyziLqXPoK6lcfYFm/NK7aBo70I
	 K1AZVjq3mA3QueGteemUbEXKt9uVlvi/eD7pTnKShRbql11T1pkGnE31z56hX9u6Cv
	 6GBMD84IuOgHuPAjEXPOXKiUK2gVogooghcSjGjPYtXK7JUZBwR6f1rx+CLNr2kSLv
	 sgc7XmCdGwWAwRKFrV4AkfmP/Mc7b7rJiSE8M4DSQ8KIPlRAps/LttELtws/TVLysd
	 mlR0eV4WfIFiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AABE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 20:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173593775359.11723.3723976119577718184.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8d9b11d9667622ae9a8d67d4904f5f926ebc015e64ab2497c6b3c2072893b96
Date: Fri, 03 Jan 2025 20:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735937753
