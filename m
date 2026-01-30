Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 07A7FD515
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769756034; cv=none; b=HVbYbIh2K2Sanv0n4npdF9tU236Pvh9s2M5OzE2+skLdpKd5+CbPhBFabFDhkuTuJKTVDFrs9bfxXd0H8D8bwpbBs3NbSRIgDq2ZiL4a5hMbR+eEsfnxFUnGU0eMz1h1Qzk2RENKmgKpPV4KGPQfucMlQ44ZojlFeiPNG5FkW3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769756034; c=relaxed/simple;
	bh=nD0mlB+TfNdSgP8LU76gFJP/b1RtHKpxXHrZhNQzfaM=;
	h=To:Subject:From:Message-Id:Date; b=Tzbl7HdsoJNC8ta5akIKBbhe8oWXqGkt/n291FVhOYbyKZTHE1QGEpOpUYvUrskJgPAbQpeodugepoyV6NKMxmcDfamusaKwdJolSBr8H4OegXLDh9gkaM5MPOUB+TcYiqi9pbRZz5EfJwqo/CgKzdvupaVkJjUlvims7gjxPSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fkztl0L0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fkztl0L0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4992C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769756033;
	bh=nD0mlB+TfNdSgP8LU76gFJP/b1RtHKpxXHrZhNQzfaM=;
	h=To:Subject:From:Date:From;
	b=fkztl0L0Rtrv3gNNp4R/m8wJ8WgTc+EgMTYF5mOx1gpTFx7OyY9kUv7+u1K3hFKeE
	 TRc8A5aD0w2EfVfACwvejJKq6QuIflX2iZiwxh1UD4HTGHprsgAcj/0OkrI7GRdmIm
	 ho6FP0gB+npPpY6xlk06A5Y+CA4Nm2sC18ZPT+x6eRIdoIcoY9MWHhoifQlSL4f/yz
	 RcRh49MuPfIRfxWOUl9wB6I0tUPky1q0lOE89U40xYfgRgTfSG0Mm5HaC1q/9hXhfw
	 NMJvH1as/ELHaUH/J3eBW+B2EtmkzqkvLsvXn3DQ6dcKtzlPI1mtLA4WWQ2vz1EFgs
	 ekBYhDcAbo+Qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC06D73EAB
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 06:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176975603358.32458.7621089820347285942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d33c4f158dd78131e4f0b3d76064b826a6dc74962c8d0f0525d4ceb0ba68f84
Date: Fri, 30 Jan 2026 06:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769756033
