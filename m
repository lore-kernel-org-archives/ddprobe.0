Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A8627E1
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723860954; cv=none; b=S57w1D381PcwyZfZ5u0VC5iNl2cgKIcgYizXXmSaGAM7PwX/Q539FViuxNiNHUxoRN2JH2xguXYF4N9kTmDZdgt0i99M+1jhIn8HwKgY3dca0KzeU0yEirl4VD7tkwNi6qo4dUIwbRGLqMfrGOzYQolTOvrEg3+52sBoJ/WkADA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723860954; c=relaxed/simple;
	bh=hmTXRuJWNoNw+Gfa37nGDCKY2lphOauH0u4OitpEm0U=;
	h=To:Subject:From:Message-Id:Date; b=FqCswvxuIhRytMppDZWAdYVWjwl3R1t4nSxLntw6xStveNlztKt/cUg68RuMV99dQB199JCYg0uO9nD3vxJSLiwMzImDohy40JDZ6k0PYYdXOunI80JngoyZ4uvdF/PMwqFiIj54tvfuGwfKOhYlzSvKem/FQltTTJI3gwRMKZo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=osTVV/de; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="osTVV/de"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1923C32782
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723860953;
	bh=hmTXRuJWNoNw+Gfa37nGDCKY2lphOauH0u4OitpEm0U=;
	h=To:Subject:From:Date:From;
	b=osTVV/deORCb4bXfipXTS/sFc2sedFAnhZr+2iYAG7hJWMF5nrZ5AJenp28cX1P2Q
	 aaUtGVJM1uB5FxxW8YqSvn+icNKUVwwer+uXeWvSYtOnJY2Jf9tHZu1ACJzy26Dz3e
	 lXrSbwvKgHpSuSrIjkIOgd6Z9uUNTtSjhVk4f0zb7DshFenbIMqCaOsbbS5vygQ1n9
	 WlKMI9MyCNe2I352aMqPg5BqgH6gewEZnvBub0nj3uP5xrfirxrp3OI7yk/kGxHKLH
	 INHIWJkpIZo1/sZlhfEQXBcGKkyXYwQUl1XsEBN6q9d9PqJQT7yibFFvEgKSsEaAkk
	 8WeCUOobdVEhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF79C3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 17 Aug 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172386095359.1633.9381679648689876395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70df2be386ce1a476805c3df7f3d6c690913d582d035bda37887808767dcd565
Date: Sat, 17 Aug 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723860953
