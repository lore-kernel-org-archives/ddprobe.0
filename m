Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D22B272622
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778373514; cv=none; b=gaDY/RwGZQRGurAiT3yUyZ/T4wGDcGrogfjo0uhlVK3eGjyDbLMW72lVkq/utQlQ0Jz8Slakt8gXgaPVXRFLmODy5a8WSPXErXLEtm2cLMsfbpfMF719KNMJWst2pyBnIHyHLCMXfc6B0gL82PW6+nXEP0jJoQJJg6RC+OzEM3U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778373514; c=relaxed/simple;
	bh=VFw64Lc3jM6ho5MiT9jKoyNIu+SNwgGN4r9RQZ14TAw=;
	h=To:Subject:From:Message-Id:Date; b=Hc9s25UiNrohxdSW6In8Fdx/pe+zxhot5KBhmQhySyp67RQyFMCl5iztH8p+OYpRUEIMcLZrBRX1t7ybUuiWrgjwQcvZF1F1rxKn6e9QZikzFsgYFqlMouEZKYjChZQ9+nbC0FqNk076qIyPpTCwN+uVlitX7maTAtbgXYYdKPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d4vOQ1ih; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d4vOQ1ih"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 22F47C2BCB2
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:38:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778373514;
	bh=VFw64Lc3jM6ho5MiT9jKoyNIu+SNwgGN4r9RQZ14TAw=;
	h=To:Subject:From:Date:From;
	b=d4vOQ1ihvSoP5wCKINjHjAxV0CiNyhUYNfR4SNzm8Q6BsTzbmxwWfhD/apJDbYyfF
	 Vg3HKaoRJhYMRSbYs+bIZEynJ0PtIteFxtz6cP+cFOWGQSF+XyCCnO0JXv9MYQ6LIk
	 quiIeh95sjNbrcvGiTBWyux0mXro05ZetWZmhfK4pYQmIJtqhoJQr5xCW53J4fKy2S
	 YGVeQER8V36A6xeOVal81plAQ3TdDbV9uBdZFEE3Vi7hdOU6pS0dHvflbMDEN0sS94
	 SxtKmf+13R9RgFfHoTxTAj7dm0PrGLZiFrIhQFtQQ1xohXt8lWXUNkVaRH/nOFVkw3
	 U9rcFGhecSiqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0417CD3447
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177837351380.13769.15216584408033502372.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b96ee3304b2cbf1122ff54e1d07e9ff0066f70ea469a8a9394554c4ae9c39e5
Date: Sun, 10 May 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778373513
