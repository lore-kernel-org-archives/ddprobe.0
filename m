Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F36B37BE84
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785309034; cv=none; b=WuxTWYncX8hKIszXQ3ZQlIEB2BZ4OJa5srcY4iTgfA74QiBUP5lJkf+0YpLUdiyP9ib74WgWZSqmvsWhNldeySEhR/ohoQ4hi551GfGVzcAwt7gTQ6YhLQbinfBg8qvIyvWksXE2Ri7M0BX3NuVzeB51173d5amdMYAPMSzJ6rY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785309034; c=relaxed/simple;
	bh=oJBsydXrZZl1LxKSuamF4JsOYFCkJRUXYA/wWCEUpac=;
	h=To:Subject:From:Message-Id:Date; b=dXbBDDfj1KuHnYPOQwR/qy6NGTCTGXXhoRvpD5KC9igthNFFWK+taoBQg0LeLo6pSXU5ubCw+IdR52xDHhqvKrtWTpd9CzAovoXA5fBoor/hpllkll4XqzHkzVk0V77TsqEL3JcJU9CnaqdcilDelJUVsduX8DWR09pPkUuWi0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSEUkQ/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSEUkQ/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBF8CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785309033;
	bh=oJBsydXrZZl1LxKSuamF4JsOYFCkJRUXYA/wWCEUpac=;
	h=To:Subject:From:Date:From;
	b=sSEUkQ/kcRcpa9XzlRZQv71FMmINvh0H7EjVGBrLUjQQilvSUPWZFVGMUNLDPPUmm
	 kJuxM5DG3ydLAe1aX4+MehFwWxYZw4W6RJPCoJp6yNLvJMKPo8VpcJdGlWRSQbbh6y
	 n0mN96G4fhbotQPFAu3d+AIEDz+ehuiBpqPKnDIjLN6Ft8CUbGYmJOKak9Vak1xWJ7
	 JgEolGwlz3Opg7/IsZmuRa6aFrIYcdH473edq/nXYc16uD4s+JC/xpS1eLMqi8sQss
	 j6fPoChTQtyE3XGg9x/WNU9qqJoyZ7Z2XQ3vokSgXqJg/+nq/4zShvTvhH6aPg93hE
	 BIAHiYjEB+Kqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9147C53219
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178530903368.18204.8090493173119525893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0084a28dcf6125eec7bf57f8f09e101b410ef14fce041ff241c265e856eec0e
Date: Wed, 29 Jul 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785309033
