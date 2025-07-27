Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31CD321B1BC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633194; cv=none; b=gdKXndAdOMwWPzJt9d8MvytKbrJ6xnfImjlIgQPW6d/riFoYyKf7NpkeuGSz74BnToRYBWeQOb2ZQZCSJPwGJIUgV96K1NynPSYZLoKQ9vebexh2dXaRNkns/iLoYhU6GG1Wdq6PO5LJJanJgR9RQRYOpXVdXRDUZCfhDJ2xWqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633194; c=relaxed/simple;
	bh=cCIR9JVQoROmSDGs3FlcvyHhzKPGMxnvmLLM7jKqirs=;
	h=To:Subject:From:Message-Id:Date; b=bVEV6qKoeItTB8odPQNwx3KrE4MA7RFD6GV7tGBJlPSzX/DmSwvOPe8PQhaL1GhPLFn8fng+VeMAq6dYp/Kfu241K61g9qFLP41a1RZZ6nqXdV+4pHVQe9vA8vqolNs6Kdn3VcRWVT1lvGdbZCeJVWmHpcrG9vwihKqUKilQiCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dZzxP03B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dZzxP03B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A25F5C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753633193;
	bh=cCIR9JVQoROmSDGs3FlcvyHhzKPGMxnvmLLM7jKqirs=;
	h=To:Subject:From:Date:From;
	b=dZzxP03BmkDpqHLNlnG5W26UdSd4WtsiUtfmDSB8Gxdm+CSN458TTQVqxkc5RFUjy
	 dMirz/bspSXBwhyoAs8XDpLI6yL4/32aL+H4ANJ/9Pzp4q+b9EH6ZH5k6Ww7qtfQho
	 xEAlObQyDY8wV2U1BhLMGOZQS2loq4O1Oe/okNbcShvz67ARptsmFaWiFy1wfRT+zi
	 7lJKn4dSeSfcKlROTdJ+S0T7UZjwUKqALErwkkyTM1wSXOLPaAeUXpvGpPKfOxKR1M
	 AcvSTP6sLGkSNZ+ooPPMO73PRSJKj7D0XHSTR/qcOB6exzIK5Xs8OLof8/OmllyAhz
	 ZO7n1eXEPJWeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEE3C87FCC
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175363319358.30206.285938598908889024.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aab52823001b190410c8997d4c46e3e3b7a07c498dddfcfc16b83fad337dfb2
Date: Sun, 27 Jul 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753633193
