Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 727D71459E0
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717501523; cv=none; b=cE+yPLJpQIxm9x8t5srv/vTS3nOrcbrQLqULAPjRaYCrEOAB/Sj9WFxx+orgVVePN1h1S9LFvLDBY5oY60vzP4A07+mV9+Zhbsmn1ha3ajV137qu+ki76e9+vscwS9eUUyns/6Je2NNfXLMRTtioV7QgmLeljeYuIONv3VSdpQM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717501523; c=relaxed/simple;
	bh=TR5yel4UinPeUzMLiEj9s4ywRI1DaK9KiU1eOMHvG9g=;
	h=To:Subject:From:Message-Id:Date; b=TYo6bWlDhTb64vu0YqZC6r7GjzyEVhSpTbPiud1mAp7mTsVnxjMujcgQuMqFeslUnX9ZdFQOoAM8DA2ua8paIWvM+AdU2temFVp4f3LcEpdAJXu38bfJ6wue621qIusjSmhCwLxmmwKzvjhWNf1pS02d6TCmBMu1RSg8hetvPCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P5bjqnAi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P5bjqnAi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0DCCC2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:45:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717501523;
	bh=TR5yel4UinPeUzMLiEj9s4ywRI1DaK9KiU1eOMHvG9g=;
	h=To:Subject:From:Date:From;
	b=P5bjqnAiPqVu1CPoe2iwOJdk35drxY7i4Ea7cgCYHt/nJ8wlipVP0xsy2yB2aQ7DD
	 lqxG860EeD+oIlaLcpk8ITYT3agMXz0htdYLXuDVceLqIhamR8TZzht32GIRl/Iw/j
	 qcgDUEmF6VwkNCPu4LqfZDr1JTy96iJiiXWO1mNWWm3oz//scGi8WWBRinBO8+dZ/C
	 SbY3IxM722wwCAmq8Np5O2qv0WjdZia8pZpjMPl7kmhhCTOvOVsR6APfNRGzzrj3Op
	 L79xkGi8/+WTGnQhPe5UhwlP7Bo9D2cyrlo2Fg9y4AUQIIEB0s2RH7DKMCnAwAKQWB
	 gMNuXALsOvH5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3969C25B78
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 11:45:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750152285.12135.14459243769756950953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 937a15cc395aa70d7eae925ffb1b5000d0f1ce42e32601d3159e80a3cac66a02
Date: Tue, 04 Jun 2024 11:45:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717501522
