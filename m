Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32BCD14287
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726845954; cv=none; b=pVF94myb2n4/Or6SHw/AKtYK+776/Yahu0uoS3/j+bpXn7AVnMlQpfPYWalBt5Tq1Eyalf4EjAthO5DeIQhmrlMLt0HN5P/Khcny5OjoVk3UU/augycjJ9JqoJ9SwNXR+Y3XcJ/jlwSjlQGeR5Vz1En6qcBe0vutH1+ZzKJvbpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726845954; c=relaxed/simple;
	bh=U9JOTE5fEdZWyudOUCakKvynUuJhcz9KAJmGsMYEng8=;
	h=To:Subject:From:Message-Id:Date; b=Albfw4HFQ3cJq0zsPwnkqrHFUKezuYlfjBbJlZPskuw6y0BQPXZhyTGBl3oSbHJLptVrLgEGrJd4SKCLT/a8lE/Qd1U0Y67YPbeYnz4qTYHWJsOE4irvHP/1MGQgUbgHxRe/uakEGtiLpiAI8lhwl38KpokCvVD1iT9mN+D1JNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RaCC//rx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RaCC//rx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5831C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726845953;
	bh=U9JOTE5fEdZWyudOUCakKvynUuJhcz9KAJmGsMYEng8=;
	h=To:Subject:From:Date:From;
	b=RaCC//rxmumC5LXYGkJvTTIxTrkY8B8CxB/nCEIE1GuZ1uvVuGyg8PYVDN0wpnTbE
	 H9SLgSxMPvSrILBLI4VSjzrr8dEHr2393lmXWAz0n2VLnmSvKwZ2ZBI0uVAeu103cZ
	 OP2YgaFdGqYv0jggt83jPCGPdPR4OgjyAIxQ2ouSgYTFc1GkinRICObLQ3RECbnsHY
	 aFirrnrxPnrm9AWmiladNKxeWHSmJLKYuI1x9xxK1mOUuhu5mcCNVldSR5YBrxgRNI
	 S762bIJJv17CqSyYZQDthRt8x8MMp8AamYs5U9eqxha/ni9IKx8nWsJEtvawvfifrC
	 G8+T3/jBXxRuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91858CF9C51
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 15:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172684595358.2602.2330982902053239603.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27edcafd5c1cb67d69b73cf5f504e47e31fb0ca3b9e76b9d87ae389c4ea893d
Date: Fri, 20 Sep 2024 15:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726845953
