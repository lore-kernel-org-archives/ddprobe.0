Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E9AD8F70
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728008754; cv=none; b=GnAc0VJ3YSnL9zV2wO9Bb89aBXGcU0svCT0MdsnpohyngX58e3szEP4I5Ns1TtKmU0ZoNSDe4xIePIMmyUmMeCKMS710MK913VJ58v9mlJFoJ/Z0IQcJbwojgvw4Rb5fqtbmSsgdwygZcLTEK217gMax3oPok+8AFDmicxvkYy8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728008754; c=relaxed/simple;
	bh=icHNtPKQE73VdYxfPalEKD2crMqbPnti0KyNe0xmC44=;
	h=To:Subject:From:Message-Id:Date; b=pCNAWC5DzXttG6CKZ+d4B8WF4gaR7FnblT8DK4PWy2VmBjn8DQr/ZbUFs1S97/rN+T6SII8CH0DwNyqqMm1eB/8jyTSWGi3YqMJhTRlaCUf6HfSRW9zm0lBFYmUkXKc2klcPmX9Fpd0JNXLwBw17tJdZJfB6NxY9cquvnDL0VfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oW+Cn5cU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oW+Cn5cU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD32EC4CEC5
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728008753;
	bh=icHNtPKQE73VdYxfPalEKD2crMqbPnti0KyNe0xmC44=;
	h=To:Subject:From:Date:From;
	b=oW+Cn5cUI5Mzjf4nomZd5SthajAlCmJQF5HCXpTsyzKC3t0o4n8qSwZn+zQUm7pcP
	 LYK3A6oOUer/Yi/2U0Qt2SawAoyEx0l1EvxUZYtYzFPWaEa3BxNVsJwKXpt50bV6Fd
	 O4gzjoGWrf836XLyfZWFfnbazL0l8Gt/P95LKzwNv7o8qfKzgbqDYhHT3UtMEle9C2
	 7mPqvQSdb+JqpzezAIGLv7vUeGK6Z1S/EP42HQyMuhR0eP2flqhLX7AFImLEoC5Jyl
	 MGPiomW/sfh19yMmdCx0CRuwT7ARJS/tkdYcgfJxgbdkUldRgdp26l37zhGTW+rEv5
	 huNMiQ7Vv/CAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B879CF34DC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172800875362.4609.1867187978561685804.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5fd6677f9e68d90714d6042916e50e4faaad22fd5fb0ea5acbf7de988f12e9e
Date: Fri, 04 Oct 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728008753
