Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 684D842D740
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785415234; cv=none; b=rXQlxhGfzZ1WeLawcjxW6lyjsTIPmZZu2JXpTor4Zn4+itpQEJHTqI6I58aeumTOa7qnIRGJC7cxLlLTX8vNPjCHX8zCLQ7coKo/QS874KUiOFLUz1/Oi66nGZtmBsWf/LqmArLo1LOyY/XrYKV2DQBgAzvdtRKKlLKD7m6fLHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785415234; c=relaxed/simple;
	bh=DDnUmyZ4CYr9isBIDmXThppa9N7GiQioQgoa07cQ7Pc=;
	h=To:Subject:From:Message-Id:Date; b=uOWkcJq2x6cGGD20f0MLhbIh/FaLQsUOR3SvkyEvPNl/p4M/28GD8SqDeB/ccwkHH6zfYkrz3OJCfPrfd52tPPHgUJYDLw4BqthuE1Qs8WIAHwaCA4Px5qbJYau9o+N2P1si8XKsK0ASo8L6wx7etHeVAkD7NjN3AZJdEP2T3LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DGv/8F8i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DGv/8F8i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE4B6C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785415233;
	bh=DDnUmyZ4CYr9isBIDmXThppa9N7GiQioQgoa07cQ7Pc=;
	h=To:Subject:From:Date:From;
	b=DGv/8F8iQNCN+SEdFQTZO92vloH68bznjSH9ktY5UfUsVUm1F08x4HgJawSzSXBle
	 o+zmMMBeXNZ48fJfK2eq968pbTRbR0TlP4bTRJHXlZ1jfSQLdz+Cp5x1PBrOtEFWvc
	 14w17a8TNwOgYGweLnFQaVe9gheKTt6Q2kZB0KxdttYYGNRhbaF/bLphaM/5wN+IrY
	 uxu1HHUCPSVOb54rpUiI65KIOW75CKUnRLqkKMptDsbRPlI6bO/nOMNkw95G41bTB9
	 UUVatoMB3Iln6cEZQ023wvNyyTadGgg6GY73YDHDJIvkB1cXBM+PZpErGnrMkCqbSB
	 Sit2+0L4BbvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B766DC55165
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178541523373.369.3228407233296968883.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ec948135bfe029231c4455ef5006281109fd7f2263c3a8d3d08fc2b67fa6ad5
Date: Thu, 30 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785415233
