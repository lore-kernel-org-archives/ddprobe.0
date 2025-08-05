Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C7D827A46A
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754407194; cv=none; b=dXpbcydob0kYjrII0ElCXkgqrWjlcU4tUBlBdwMSjrgFzcbSAxgcSN12H1G2EXcUjfmes/2DwYV22e0opOS9PxrxiM+kUZayu+ojumzoOU+L9G4ErHSemhmbNrJCq+6A7EQSsHcBeyeFjf7EnRMIn7uM0nfkKJSR1NTn9EvjVEQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754407194; c=relaxed/simple;
	bh=Y/Rn7aQZ2poTnJXhxoK49Lj59+UP70oyNwjqAFI2u48=;
	h=To:Subject:From:Message-Id:Date; b=qjk+x1qaeIyNP91hs//lZDHfrO23+velS6uIrdkz0bmYYTERy86funMjySfJxdk+DYRVTDvbH10hrLeeDRAYJviKgSEbAs7SD1iEneNn3HvY+sJfZpjMzDuiODHZHlhPINK+2koZHBfIeTxbldtQdh+4m2A4l+BQ3pEXGnaonjI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q2YHmrZ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q2YHmrZ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DA9C4CEF6
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754407193;
	bh=Y/Rn7aQZ2poTnJXhxoK49Lj59+UP70oyNwjqAFI2u48=;
	h=To:Subject:From:Date:From;
	b=Q2YHmrZ+62IIoJrcel7ujSgTiqdXgQTFrwznZPAnPXAItFweaevw6RJ/jAugBiwN/
	 nAMXP6Jt8PB4PQc9vM8ELfPEber2+gt2upR7DUt5pmau/nbx3k5l+Q3fRG0JN/CT04
	 dQjlXGbqEd06huQCWTdD0zzyI3WZFFQlZN1xw6mLwnE31E3QFb4OA5U9UUsvqKWAND
	 fXbfW7o9jHyys6LlyT7Vb8FChwX96wVAM6zIM1h0yWKeWi0p7CAc5H+xwrXV8o00DF
	 xX5Xx9B3Wg6M3HRLzAWY1W8un/s61C7TpbcNYCgR17rNSX93c+pMUFCFLbM58ya0uA
	 tPHXGN8o/2RZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC75C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175440719357.3855.5359793552021078769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3209b8b92ade72288c04283edc34c1a429874ff4dee3cc9553c66e1b1447426b
Date: Tue, 05 Aug 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754407193
