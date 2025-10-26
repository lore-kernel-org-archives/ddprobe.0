Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AAA321ADC5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761448194; cv=none; b=FDgbQ1Ik72hMoAxdYtftBjM/KWs3obUbr1+0RXeAUjT1shrO7at88HyDDZwwhDY3P6q4LftSSAMR61/Okk0QiMFBZtNfBVWRdCgCqAI9w7mTJahirSREIz6TmsPW2KZ5f5K+lH/vI4QdUyg4Y0O03sxWH9e6So+5Co6+6CONFiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761448194; c=relaxed/simple;
	bh=T8u5xOK9p9BxIavAwAuTEdLOqz4Hckm984CL+L5kfV8=;
	h=To:Subject:From:Message-Id:Date; b=hfuhie7praTxKGt1TgrsdlcEqaBJmgLuD9fjgFriEQkx3YTNVgy/3nx6+FmAIt7WqiImZQukFEFqc+dlUxskSrJdNlssX8AJkaeGAtkK0Q8RulIYOnVUHX2iVbaddux2hWVazLMVfvS0YzKMq8s0SpeK9w6LlQQgF40Mp0RwH90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fLZMj8pq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fLZMj8pq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60D7C4CEFD
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761448193;
	bh=T8u5xOK9p9BxIavAwAuTEdLOqz4Hckm984CL+L5kfV8=;
	h=To:Subject:From:Date:From;
	b=fLZMj8pqmew9MBrWTNFFaBLuuewKCmJAi8WfziSDYJGTRaqT2Rvw8ZixqcwCK9bY6
	 6yjyqpBcMwnEH6+UBq2z+Z794ZNADd/s3I01q1iHAIp61idiJXyhkhquzVVw2c9ijY
	 jwITFv8Poc5eohPODlusAMj2z3SQdHhO8CceXmCocePcQQyy+sWsjelsp/tPOzSVPc
	 zQX7LZA5YWQf0Cy+MAOba0ozCTG9Sz/S6RAcvhK/6xSHnFPJFblmBotBfB52K+sOvk
	 xwkkQf+y6hH2DODzthUWb1IygPzws55AzbGA5MuZqjZHptTcRSFp94bPU0lZWP60Td
	 eW26Ie3IpmaJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946DBCCF9E5
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176144819357.21914.919652099140814835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 279ebbce5a497ce41ddf4a8796794350c7866195e272af2f704e02eee69c64a6
Date: Sun, 26 Oct 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761448193
