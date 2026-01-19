Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AF19376BC9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768831434; cv=none; b=DwIATCUY4rtg6hpXc16Jz8r91OGRTcNhOyUANG3kACYrKBMTN/NfFf+zj4Qz6+zJQfBojRDkFudyl5a3Oy4WtL4JhJfDXhA09IZ+IuB9GfS2BurwdLBhmXhOehRdT8UEiZMJDRpmVNN0Jyl4QDsff1duzYyiPFxNN5b6ogStjFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768831434; c=relaxed/simple;
	bh=FK3pR/W5i0pKkL4aockWd+nobTKnMbbw9kItCkT4kIs=;
	h=To:Subject:From:Message-Id:Date; b=MyQZBcBM3jpbXucen2MSMRDVQq6wVzWWNWLXjp92Q1CvFeXK6Qupyjrz+i0xqm17SuSjEUNs/0DEF7VaPJUeip8rRjyJH/1Mv0ffebiJKalhDrVLXBJRdZ7wDUxjLqCi8oy3OgDI8FmY8RaNh9BO9Kty9p6k7xnMtjIcBartc2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=flUMlO27; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="flUMlO27"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8DF9C19423
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768831433;
	bh=FK3pR/W5i0pKkL4aockWd+nobTKnMbbw9kItCkT4kIs=;
	h=To:Subject:From:Date:From;
	b=flUMlO27IAKLrhN5yoE3HneWcGNMTmRwUSj5OWHBHGl0/ZR3W4wtYWp3HJ7A87E87
	 Z0sLyHsvJxMSha9QZ2cUkIpzWp0j7zRJ2DixOVle+hyEzMHVTYGt2SHaGNP79A5CDv
	 95ry6GJtg4esNH31wGj7xdlcopcFJoZu+nGcjDI97UMt5X9rh95K9iUBp+QGCPkxVB
	 MCuY6McbvG8uDzesA/V38YHYwRo88U7uAcvi4I9uHijZ/N8EvqoBKX4vqsuiNUQVL/
	 PQaIVAHiws2z6cYlQcRCOvbs733wGNhRHzRx1ED7Xm9O7QflXHtGOk8pUyWU437Hz4
	 Llw0PKwj0iU6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B72D29C2D
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176883143360.15485.3592998538867557165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a90fd69192b17e13a0223e698db62feab31bfc83a49b05ceee9bd906923ce0
Date: Mon, 19 Jan 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768831433
