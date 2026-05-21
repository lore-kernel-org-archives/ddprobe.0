Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA43A2543
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:52:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779407556; cv=none; b=O2LlFeSy+PkNaWSIXSlSOHAiIP8zFXe1qkDnkkZYXh0yJe6bpUkqA2124HqC3As3TJXPaQp+jYSNRHfx/Ihg63kULdLECOvIUpw60/oeqym+InKXIwOJyIjGOOn2UtjF8MJJ2i9DHCAtqQDfCOZG3e9mILBsSR+roJN6h6WNagc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779407556; c=relaxed/simple;
	bh=koV9yKoPjnbXV7vclACb21AlDFA5YFalowz3KjwBCTg=;
	h=To:Subject:From:Message-Id:Date; b=VOJDlucAL32ztytEpEvgZP8QbQJc6mbAKt1kRdP9pRRK1jFJMkPSptxOQG9OwAJReQR4yW0rOcahTMMPZsLeafb8sgJci5tuO/TrrQSIzlUuav75qvZAeVckBD0VvnFNgz7Jibph0bAzfL1iVF3z/CUSdIbxpRfRGScz9qvQoDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pdzhPYct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pdzhPYct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0840C2BCC4
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:52:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779407553;
	bh=koV9yKoPjnbXV7vclACb21AlDFA5YFalowz3KjwBCTg=;
	h=To:Subject:From:Date:From;
	b=pdzhPYct9H9WF9kZqEEvL7qwNZ8Ok6onkKNZj+omwCP7PMJt1AUSor8OXufABE6EX
	 P1w9bnQ8PQiRLHPHjaQUjm52h5JAckJYFn0e9Box+f2dtL94hdnnqebCXchm95OPyI
	 2BA5Bof+D/EeOOJXfOIdBkoTWf60frmRQt7gi2Sg6nuXxjRbLaOg2QOO27CbCOd3hE
	 tsAUgG4M7O+HYJcud8e24yyR3cUCHpH3KwoXCOMNS+iRvKElYq+aLPiLdAYqmSBcRu
	 iOWZXHNjRlxKIIXdvgsLksrj71MQDrz1mlUYM2JZy+Lrbt84aHmUa0bGNzrvT6Seb3
	 +mcmlqsYQloqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A87A3CD5BAF
	for <ddprobe@lists.linux.dev>; Thu, 21 May 2026 23:52:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177940755368.6649.9325253612810002661.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79e129a61fd6b8daa2ef5db09c65b5bd9ffa9a47927f08fa27050aa7853ab930
Date: Thu, 21 May 2026 23:52:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779407553
