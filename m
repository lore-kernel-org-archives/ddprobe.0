Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CFA2C1788
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763721714; cv=none; b=lSKL6nqRIPEI/0Rvc/IO9rVphqNOquT1YxpLyLo8ne5LDwjySQSF9KGEkf7HtGifN7Qu8LjhtbCRdC59YBg42IDNxGLbaZSZW5XTAtg87WMMqQxifkg7UA2SPTE3WKZN1ndpEGJ3vyZieJq86447a8SR6s7H7OKp6jnBYdvqrWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763721714; c=relaxed/simple;
	bh=lThK6MPZprPCrd8fkpwxPs3zB1PpY+X1DQg88QnIbjM=;
	h=To:Subject:From:Message-Id:Date; b=g6e5lXBFYVMMi25/JGOCvrBWjHyq2VJLb7JpHS03ZNXXC3cmC+mk92P/9oXysWkQpG8KZ45I6CEEVYO+2sXr6k66qXqnf6OPM73B8xXeOyisS5bJJEYjwvNUXfjVxnmPj8YZBhNaP8+JnXaBaPDM97czCtCsGSnpuQbXICSuUpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8MjcVkJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8MjcVkJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47AFC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763721713;
	bh=lThK6MPZprPCrd8fkpwxPs3zB1PpY+X1DQg88QnIbjM=;
	h=To:Subject:From:Date:From;
	b=u8MjcVkJubql82PZZT5lEzFvm8kVbnwUbTsHaF5wOH33OtPCT/NPIxITCmRP4WfvL
	 9o2vlYEoo6+ZWIXShV0LoB5iFv6A6wMIY5B3doYNoiUW8Tm4IEofHMU9c1kk3BDTFH
	 czIs3046lRmUMb02/Bk/rtHCiYwYJzTDnPmmq60XRguac69cA4j1w7puT/dr+3vKA4
	 WkQ2WWHFVTfjbndXQwkabbjA5u/X+WFYTnkt2aBTsZ1NFVRtAOQH7K11tfFu5eSpgz
	 ViPPU+buXj/Rl3HfXgrsRp4xNXjQY1UyWoPY0CNJ4gQkE2lI3CZ3zOrc6ZAIoK9znB
	 UllJFOCavXkpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920BCCFA76E
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176372171358.336.5551052855807486588.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f4a6bfa7cb3b1fad6d8d0fb892cc8a6a44a7aa753ed993feae0539b302bab0bb
Date: Fri, 21 Nov 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763721713
