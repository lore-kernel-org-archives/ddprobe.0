Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 356F13594D
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736046354; cv=none; b=fOmL7v5sT6OpYoeLE7Rd1ka4GuIkt2u03BA1pUYduD31aCVJq0+sRko6rD1wWSW4FqmZ3Kq5OyZ32KzUR4jHD+aBwDut4qXIxFgzge2xNROFMoX/5ICFGbNGcXYJWULwPaK7ZynmttyFFQog9uH9jwTvy3zfy0LO5HGIbxWvOhk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736046354; c=relaxed/simple;
	bh=6ZJIJJ8IaBuKCzRRZuGASJk/3hvswcLKT95mgxirtFM=;
	h=To:Subject:From:Message-Id:Date; b=kdtSn0NbN1MNmtcl3ukUwjmhrFmtbODAFmeP7K9qdBpRBvfwiURAn8kXfwRAI2MIrbyOOPX2qSM5Ow6/5Rm45kBWYdChl6u+QoR97AjfOvLqpse5SvEl8tIFGXLY+o+b15b4nKXCnhuGyDr1LuAkIOl2f3Fj6wJtpsvVHfrhd0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a9uxjLMk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a9uxjLMk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01C1C4CEDE
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736046353;
	bh=6ZJIJJ8IaBuKCzRRZuGASJk/3hvswcLKT95mgxirtFM=;
	h=To:Subject:From:Date:From;
	b=a9uxjLMk1sEjWxUL0mNeQZDTfECNyiEpZUAw7Ttd1LYsyHaBKGIoL7wPpyfdLhaoS
	 vS8tKbXwU8ACQZt4yRPIgCuZDmK/Un0GTnfqxJLSgDqPw6LM7OoPK5h549TWNURzWX
	 0jFViFiKg0y+XGEEl9bS33UeevNKZGCbhtpQPhpl/+xo3p6ur+f1yoiuffJhT9uzII
	 wJ8+9KDaeA+wwZbbyYnoh/tyTh0cNHE/QqKnY8PEA25X2QHe5kUn/TIfGLi3L3pdc1
	 Qx5tl06DJg3drxlT6kA4ujbloVciMdaZyH/iFAgiB09mmkptyLGKi1uVfewOd1pjJj
	 Z/g1SqLdE+jzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971F7E77188
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173604635359.16178.3415085763282171842.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f0da5ea16fbac1866f7d94eff1119f421fc74de3c8633e696f62b246b6ee94a
Date: Sun, 05 Jan 2025 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736046353
