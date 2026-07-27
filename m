Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D84C17DFE7
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785112234; cv=none; b=I7BVw9jY1zUQga7o3ETWHyOFcwo226Dqj+7JOOOvQwszZk8fvTRt2cVmMvglgMAxWl2rimI6CVdqHFKGJz7ik9sEdGsB2Q4TE8IWUB1VRLThg7fTXOd7Yswj8fZSU1RZ9XgvA+ihAdHbL21S9zMQ4k9pCaBzyfSYOOPsoUJ8lr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785112234; c=relaxed/simple;
	bh=PkccsEdrLpVxsQsEfjCZSCfy9gRFVPhz45Vb8OJ+g7E=;
	h=To:Subject:From:Message-Id:Date; b=HmFtXQs7DEVZr25eJOc9LCgQqfhIYVZ3QJnr1VBVMsxt8CNEzr8g3WGQd/HTilbIkH2vgisR6e8pUZRAcCwU9YEn4c/g0QwzE4gNGdDAQNJCbNFJhNTL7jcaZDXl1tgPy2y8U2XdbmWrDwmOKzFlu6WIF8+WeeM0cH6I3w+RRjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uChaofKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uChaofKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BBDC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785112233;
	bh=PkccsEdrLpVxsQsEfjCZSCfy9gRFVPhz45Vb8OJ+g7E=;
	h=To:Subject:From:Date:From;
	b=uChaofKMGum2bS0/5V9BdPftUz1TUDStrGI+c7bRagdVkQtVYD62zsgzc8yGHGX0O
	 llCsK32HnZrrsQQPJS3rXp0CfLrO5AnXPLn382oqg/dSL0zpem62rAcAlQOxC6/RVM
	 11vGXEM45K+ZCzwRHMh8CuhFGe9BwEOTUNeOXaFTDc6dyr7/bXWee/44tPqdDDQGS/
	 5/ipEHdP5F1BwhBqK1FENGdofjaRywrMUaWF9lAmkWcsfBrBLt9Ko3vKU0BLkjIN2I
	 q+rXL/hOLor+/JqcrhM88Ak6TTrSyY8yb6c4ab8cDTv/T5pbPitZNU3K8in2zDqQMc
	 0IamWhpxG442w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0191C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511223368.13634.14545839912811656778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b878122320e8dfb55a93ec88b2ac0e415a2cd417f8e543b10995eea35919094
Date: Mon, 27 Jul 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785112233
