Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69D9F1CAB7
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718675303; cv=none; b=cb2suaL3bOexMdxhOCa6NTzLL6xyUIzsmfpQNTSNmsqYmk7igx4G0OpSAI3PBy1y9cigft+m7Gv77GBxW1S6BfotOGl6CUjpnn2vYbOs5mzUNRGGcZNSRRdJi95TPXCDCkejfQIFAsffTk1qB36OjpEjnpfKhfukuHanTbSf3eo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718675303; c=relaxed/simple;
	bh=slaYqXnMyqjDMCRUFTyGTmNwUKKF8Es7pLr50kkfRrY=;
	h=To:Subject:From:Message-Id:Date; b=FIwmE0MGktqpOlVTcZX8GLoq8v6/0YDCdcZrvlH8Z4qdK5s7UcmZReR2tX4SjpcX7j0N8v7IVjssf3omZQ+77xPAp4+G3zOz73oh6eTPD5Uhwkhx/ceMrUIWlcd2itwAFy23r54eYvFwVfrDZKsfkhziQ2mbcq8ZwGgkMqh/kdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dBoEppq5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dBoEppq5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0107C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718675303;
	bh=slaYqXnMyqjDMCRUFTyGTmNwUKKF8Es7pLr50kkfRrY=;
	h=To:Subject:From:Date:From;
	b=dBoEppq5SOlfYHMy1BYtqIJx+9xg+tzljwC/r4HmrW6VGQz0dioYOhDjX5Xtqzi4L
	 eu0tZvZT5Bw5+GNbXeNhr4VWveA2bolqvFWEIls1LJCDhiqPROlhEvzwnNOraqPR/M
	 xV1+BK8/M5UzDMf2E85nezguCmLbj6EdWQGix1RoWU4d/rZpSMYnR7NbcboFaVZ8F6
	 2iJp5x3RNDX29dAL2iKHM5TlrzpXmhiaTunmJaQl2hg0aAwk4kYBGvI8tYGWYvfJOT
	 FVPchJO/0RuotJKhqilB+yRmAiJESW16V0hJwVzBXY9G6zs+NIVDFEc1MP/vnN8ARP
	 jgbyoU8p+YXGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB28DC27C79
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 01:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171867530282.21936.17023655461363948285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b486c6945fb0c80d2951685a5de5ae3769ee841ee01c2bfbfddfa78c83a6f597
Date: Tue, 18 Jun 2024 01:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718675302
