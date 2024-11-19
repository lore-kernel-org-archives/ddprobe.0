Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20DA31798C
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732006554; cv=none; b=am5PWTvL00bxwuwVBSpBABptr+6UF0oamzapgJS0UiubAFnAqBM5wYA3sieyRLHrP3wuX+TjmFFKcIJE1ENaQr4P8DdA+gfLYhoeni/dMG2ophNK6G4fMEKnqpdzMBLOoz2xGPGoVqWilAhpTiwFkXPrw5NTQcJlMyquhhtfodA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732006554; c=relaxed/simple;
	bh=EdDcFP3rEUoLAN7+4QwI5cTJ4c0SZVe0NeOMnA6AHcc=;
	h=To:Subject:From:Message-Id:Date; b=renanBatcqTROTtma4BuLAIPZWhw0BcMhmFNL9UCyY++6wCoQT6XBt4VQgM1sjPNkD3Cw3rKCk/ZhrcyLN2SJhNtk4jmVznXZfDUMC7awsOft1xfIQIBef6mBhyylrctDmIo7ALeboDDAve1jqnwJYC5TM9BX6kEfTXqRuoyVB4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cewP8pRV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cewP8pRV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B6DC4CECF
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732006553;
	bh=EdDcFP3rEUoLAN7+4QwI5cTJ4c0SZVe0NeOMnA6AHcc=;
	h=To:Subject:From:Date:From;
	b=cewP8pRVKbGiGOEYrKROf4xPJ5UY8xw0zjr8iJbTnbbGb796YLEjSdGx+MM3l8UV7
	 STMZMYqyuBoUVpUziPKJh50TkjZ3wqq5Tmr/GK1qa5hADDbPxcUhjDZRxi10IncuFq
	 qO1HNWy/hS8DOSX4gS1q0B8yfyzc1HVjGKr/D6rcrnevgp0TrxhG1Sl1B5QTOmAgAN
	 Cyg6rmyW0AVejS+cnWI1wVHtBLGzh0SA+xAbabFHPtfhRgdTbZqk5u2nZt7J/o4Kj3
	 3VwicpDcuiUjcbJlbjqVMjcF8w4kBU5s9UqzU/KqcwS5z3ci7/zPgc4NAeTUgOdHfb
	 /tXujPiqG1z8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956FED6007E
	for <ddprobe@lists.linux.dev>; Tue, 19 Nov 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173200655360.30552.12534610110990265367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 379b48d86d569a8b46cd7a0c5ff5eb08184356cfe20175b37a5695c88ce108f1
Date: Tue, 19 Nov 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732006553
