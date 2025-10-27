Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FDB8246798
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761547794; cv=none; b=PYph1fhlP5RUurv5iypE74M/VP1k9ycnkYxIjsuR8qafwDbfnrWd/t0oFd6uoXQSet1PeTowXTP4NzOHlLpv8mbQ514yyNhx4hIFIsG/Qo4wv3xfbnp1kR2acY/i02a7aNrCZ/iBdToulfjAn0Y1/iNNBn7F4/vU/Zn2PhW27Pw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761547794; c=relaxed/simple;
	bh=mL/R/9w2hVE0oPfI0Qj7CFpHfGQNzMnoS1DDvTrp+7w=;
	h=To:Subject:From:Message-Id:Date; b=NbYvS6Moii8LSPWZKqpOfHPValD74kJHYNYcqgzWwQkvLnY7qMmfbPigAsUayuu88F4BKx3oZN+pfg/9ECnOcw5KZPTUjPCR4vxFBFensnFOGH7KDlX8jFlNpLFLXSYhDHmvYaGTcT/2nvGrmSH4ydN0Tsq22YNkUQOP5CKPHNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qM8bxMRs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qM8bxMRs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F9D1C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761547793;
	bh=mL/R/9w2hVE0oPfI0Qj7CFpHfGQNzMnoS1DDvTrp+7w=;
	h=To:Subject:From:Date:From;
	b=qM8bxMRstDWk1vqw3Z1AljbBrv7tFG1AH4qTu6Pi2gpQm2Ah4VSKxQMUYgymcqBzA
	 S7XaMmr13TMnp+qXdWh6SamXSmbL3+w8P6oL9XnGake2mzKKDXmuuo9F47eos1qaVe
	 hxae+9vWzZf1K5ItjPQcdg4fzGcNpMkWotbZm9RuuFgn37HJp9xB3AHusRY18rdJkx
	 8V6kd9m81ZSBIEZ/tLPez70l7C0eYgVFl8EKHhIaRlRUyT9GdRMsCnG1V2b7/W5mrE
	 XjFOsY33U+8HQgLQXcQpPPvRHZI1YaojwQEui3GlzDoCjENzFh3aXTexus6748q5Oc
	 FUIgRiugyuwVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F441CCF9EB
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176154779357.17071.11312125724401275487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0787901f3e8a3a26aae2b76ab76e5255951052f1b2b91a8ed334db16677449a
Date: Mon, 27 Oct 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761547793
