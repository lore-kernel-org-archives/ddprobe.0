Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1421CDF6C
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771758894; cv=none; b=rlAqR0NgbVzdC6rfCsjRUE5oRTX1dk1rFPy8ZtNHoMcX8oGN8nLhqqfhp9bV9Vf2eZ/jxonoPgSP5uyp/kRznYDQjPGTMlvr8QIo97sQiP6vJnkNq/4qtyS2MHvoa9mGTUZpDiuFKpgVL2zKq5aG1Am97GeuBN4AGHxwI0N4WZ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771758894; c=relaxed/simple;
	bh=043XdNNKwMSOBc9puGfEOX+YIUjrNebZSLrQ8KEecTY=;
	h=To:Subject:From:Message-Id:Date; b=B7yMhTlrcRwGzIPjgXsRCx9DUD2kMzriEIOvZcIeg7b1OBhLimDTEt+o1hxj7liqB7XZwxa9pjF7MejEnHOIlJUxp9yCx94CrZoW4i1QqOxt0MICxaaQ7FEn7MtPCxWgKUAMh0Bvf3zZpqcWE6EiTIi4Kq6aTsF9SOPsF+r2hOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nWLIRjK+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nWLIRjK+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1C53C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771758893;
	bh=043XdNNKwMSOBc9puGfEOX+YIUjrNebZSLrQ8KEecTY=;
	h=To:Subject:From:Date:From;
	b=nWLIRjK+9ywUMlUQRLVf2dJ2F0K9QfmeXc8KLMZRlu4ETL3dzIYqN21tTibRv0Mol
	 W9RiV+IB+N32GawP+b99qrf5X0b8xE/SKsbWcBUAcNUH6R6cATQUzCmBUDvfNZYVom
	 FnyjWwsaPmQdsY/O/I6NdOswf7IJXzzzxWJlm64h64a0ogA4f4dcorerWYHct03EA2
	 dnGHuquEwuau4awsNOJ4hFufbb/6XjO424XrLGV3cLMlYKPHuJVyskSvP09d+Quuum
	 T52aMiFcdbQGaW3Ox61XFGRGU+RWebMWnBjpEVs8rl9g0jq7zd8w4EXhcsjSHZVUiK
	 3oq6JUuzTPHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD5CC624DA
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177175889358.10264.3936777430048184486.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c75051b90f2a3937b924288ce0d00343a73da611fcd0a9e6e900d0cbfeccf31
Date: Sun, 22 Feb 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771758893
