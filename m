Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0EC632
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754179794; cv=none; b=AqJAG6McF9Gz8vs1uIrq1KTOGuI0iNJMLqv0UD/LK/IxHzhPbHRiYaU7g605MSj7zXCdlQsoQmL/1ZGzewPVv9vWIcSZoiXrYAvr60Wt+Hi5/D0xRujcTntEoOTN3rLrEZ/i2KnUaXdt4Ca768MsyvL94KJ/tOI8stgbElJE84I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754179794; c=relaxed/simple;
	bh=Uj/uI3GAi+sR7ojEOXRRp+0AqN2uhJ07S1Ulk27tOD4=;
	h=To:Subject:From:Message-Id:Date; b=XCbeVbredtkN4sAPF3w3tkNAkXSX+HpJc4gRsHk5tSNjcID0u64RuVV1lQWHmGI0+KLpitNVYO8UfqTAhmWsRWRNIhOFb59OGc1VUV+qouUHIC539mAmq91YCKZkfxvzc+Fxf1cyL6pRmB4CvNoqbp03r/7ji4HHhM0xk3GGQVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Df3jShBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Df3jShBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2344C4CEEF
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754179793;
	bh=Uj/uI3GAi+sR7ojEOXRRp+0AqN2uhJ07S1Ulk27tOD4=;
	h=To:Subject:From:Date:From;
	b=Df3jShBTyVnu83NutW3vY7KjfTqxTRyP1aAslMnJb9SzGcI18iT0kaynAd2n2EtUB
	 7+jlQatLm/x0IUVvjuDpe8eBYL6TuQSaLxnMHZfJT0R1lJ+tGf2GRMlenRcdBLh0w6
	 Ny5zaUg5RjhqChmB87n3JCBLN5lDpNt+xBTIZsylLXcFic/LEn35wPvHXJ2jcq2Y91
	 +y1OI4QezvBkYZf3Jicgm8J5I4VVlYwfc+s8j7Vinu1ASXVoeZ84jldw4qhXm92Y1f
	 B+R9HNPRQkdG3KK/qrIU6wpDs0biDN4yLtGw2FIevZFUeYNkgBCcjNVz+1f16hlR8h
	 d2Q6PQdSbCbIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2DCC87FD3
	for <ddprobe@lists.linux.dev>; Sun,  3 Aug 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175417979357.1188.1276925905588783311.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f77b183c4dabbb63f81f52a8d040bcdf755547561c710ad99304617c0b4e81e
Date: Sun, 03 Aug 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754179793
