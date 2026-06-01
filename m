Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0E9363C79
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780314874; cv=none; b=LA9J/5SE1c+ptoLBfK4LHSGNkrjP/x2oCAmPFnj6DVjiaBGSXqla5XUxnUkuZyFqrQSof4R/P9yIWIEJI+rHN7OZXrixTGlpiAxiR57vRNGW4q+DPc+q5rsL7c4kuoJ6eQPq21x3dEXpBTxIJXupY0exVTlruNrknx47x7hG0qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780314874; c=relaxed/simple;
	bh=3UFtJt4j19yndzsXtraYbJNjqo7m4sXlk+nOHcDGFhM=;
	h=To:Subject:From:Message-Id:Date; b=Jyhe+xC5MsZQopN5EQLrf1+mGweW6GEYs5pQT1XvaLOoerbrPZvsEe+zkPdky0jVFc/W7Z2kGkPD+3dt3zrczhAomNnkICk7Adh3m7bmwl9bw1W2MNu5nv+e0es4LaVpm1gZS36+E8cEA256gDnSL0FSGDZl9B4Vo6FTQsqzPUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKdqKjkt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKdqKjkt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C20B8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780314873;
	bh=3UFtJt4j19yndzsXtraYbJNjqo7m4sXlk+nOHcDGFhM=;
	h=To:Subject:From:Date:From;
	b=TKdqKjktM+nPSVerHNUvgJUv+66umMUoQKcqyRPK/+0sDGyIwFkgGyXYm0jzehReA
	 l0dZYsNvqyyYdj2U4IISlcmROY7OBgE+zyW+4YZBrqG8C8cqyp6Oj5eplAQ2QgqkJB
	 bLrISZAA6g30WvjCjDu4G6HdCLtQEYnT5z9DQLs1b+2qylYA1ZnyHkSRZGsShQivhD
	 7NllSNJMhigIfJF8TZxcIy6d5cGa0eLXPCa2L7zawYi51l9ZmsJ5dTle/hHY+iGv2k
	 CUq92M1u/oA9ZlShHryHcWFms2JGBgMIXdOG6FeLbh3hu3u5SWTevQPdD3oyJSLt7c
	 2hcnuSNq0IMuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AADE3CD6E56
	for <ddprobe@lists.linux.dev>; Mon,  1 Jun 2026 11:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178031487369.2430.13570445327476920417.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a6ef9209c51d43fa9db0af68fac165cb22ca5fca445c9e55bdb56177104db60
Date: Mon, 01 Jun 2026 11:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780314873
