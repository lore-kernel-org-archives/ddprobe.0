Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BFF8C288D2
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769559233; cv=none; b=FW1F8qvQ/po3UxFKurnMtBY1mq/+9vLuFT9bHqcGSTem5TckPKYA8UJ6LFmEMwiCa3i5xE9JZv/h5IVxt6gDMEzI7W5fsmetUJaVhcclES1rjk/BcpFbQ4iVmly493iA9g31ooWK0S1mTSPBVpf5B/gmwswkm1beQw4pUgABTzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769559233; c=relaxed/simple;
	bh=pHyTOtEXk7kUbRH2QZL1kG3/obrxgjNQ184Ebtr9USQ=;
	h=To:Subject:From:Message-Id:Date; b=Pvi86TSz2LBFp6JjQp3EiHTcF2/R9322yhQlx8UgaKY53kLlp5m+80w6Khm8bXE5TPWBrdMa1DnuD8DEFemg52CIo8naECQ/3hPFOp6EMskC5a+H7RwytGTuENNIwZJDCcLeQghE8lMnYW36srxk0VgFlIgzML1uDLjbawosg5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kOAgTsgT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kOAgTsgT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22F2C116C6
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769559233;
	bh=pHyTOtEXk7kUbRH2QZL1kG3/obrxgjNQ184Ebtr9USQ=;
	h=To:Subject:From:Date:From;
	b=kOAgTsgTjLJoQLZcULidHdXqmGZ7mR2tKSegRlRaaY2Pg5uotjcEDsovh9HonoVr+
	 Hes2aQ79yNaskDalgOhs0n2bezxJpAVN9BHJHm7n+0b1vMQuCDoQFBgne37/YRqL+G
	 iJLLCDBWqGg59yst4rLyvK+f7ZalhBEmZjQDPactHFjYcpRfGQT+guVzYh4GNkmY1N
	 tA8ms4ogb11KRp+6Ci1VivPzFKEAfz8Nrc7HNgJEKpf7MO1ETDqcEWvfO3sslUfOWt
	 tK2yJJXoQtXVst86Ammzg7+YjqcGdldi4W/sA2rY+oiYCxdPYt6rneTw2AdkHCXBwr
	 cBhEppflLD0zg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90A9BD2FEFA
	for <ddprobe@lists.linux.dev>; Wed, 28 Jan 2026 00:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955923358.21717.3014756496339576158.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 233da35e1e0ef4bb9de8963390d3642a915af917b9e835f7ba64cfefdef47e08
Date: Wed, 28 Jan 2026 00:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769559233
