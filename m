Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE6C7372B39
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:37:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776569854; cv=none; b=aBgcA/a1kab6BJnmj/0SyPtQ9rXxuD7HKH0pqUuCrOROzSbvIP0IY9fl66WCeHxpuLaSOoXGhFr/ScOETQ0wZCQ/MKEAW67N2MOUHb/PgTzdot2ifn6M5aEo24pq29NCazokzpMf8PC4Q/SXpjIj4P6Djs/ZAXjZGlNXMJSHFug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776569854; c=relaxed/simple;
	bh=GE1kfQ623UQ4wDE3cAv6kvWKjBQCtNCuyigzzDumesU=;
	h=To:Subject:From:Message-Id:Date; b=FgCu0rPII9o15uGVks1TQsNIVJBNbSjBcnN6s2WnH9HE/W21LxE5x0sVL/KSyAw3gRO44+Whic94VRsQ+PXGfwa3GnaMHGdK9WKE4mXnd+AZEvjaFG7VW2mDI6k0uOVrQv+90bXPc/5i76QmwYYpJ8aa1FEcbu0fAmEos1Crd6Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nF9d2hzc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nF9d2hzc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1FBCC2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776569853;
	bh=GE1kfQ623UQ4wDE3cAv6kvWKjBQCtNCuyigzzDumesU=;
	h=To:Subject:From:Date:From;
	b=nF9d2hzcuqlldidrc7E6rauMsRjWvs/6WXSrGPpXsr6hvmCZ11at7yarVcRGz7YWy
	 Eus8kdlC3jtc0fwXsmR6amhHtjbWXlej97UriPaB/+dPTbG8Xa0wwDs1xGfLXasNwb
	 9S8fgOUUBu1U6FBeoQy7YsFQ3u3w4Qhro2cjKtjlDRxlrwhKxFflWP48LhKR4rX9zs
	 g8DsU5o0eEWP2UqD0NZREQDnBRLGN/MToss5rB5bo+LMx6cPIaXENGX3PsxNXljrn2
	 G3fXUKuUfK7vDRe7jSQaS9gtuTq5yF8VY6E4rdq1xqJKXNQukvyVfwWuz5IZVsIMDq
	 s2aQHxytdI0CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD78BEA7186
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 03:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177656985368.31879.13595107985217475726.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 090632a0c38b8080bdc599cb52d7a1f82ce35932c6f8af5e5298b8fdefdb6b7c
Date: Sun, 19 Apr 2026 03:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776569853
