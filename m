Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B41D27A103
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762134594; cv=none; b=gIcam0t+Kv9AGVoFLDfgfgxWEyFGhcnA+KSJumWiNPZZbzREyTtouAdm17eL4H5umL1q8WOO+czTAx29Dv6pXyjdRMCRpt154EZBW7n6NMWf59OjdJdNOhRPxZc36aubI5kQe5lGM7/aJ18VJBYmT23N1PvMhBQsWYX5YpDx8zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762134594; c=relaxed/simple;
	bh=TSv+E+NNK/sF9fzc0Pqc+IomBLptjA+8zZELUakTw/M=;
	h=To:Subject:From:Message-Id:Date; b=E8bViqxdnmHrgPNXD0Mf6y/BqSYj1IdcBMyn6o/PaVReOwx0n6DqKSRHXTY+ug2ujvY3KofFaQPNsgkn2WGVRywBvKTTxipIR9JanE7WSxVxYrfFS+lR1dM3z0Qt077rZYvtVdnsN6XnYONFQ6v+aNK8ar3z7ZFLO/A67QjIv0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cgvpfq8T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cgvpfq8T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3762C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762134593;
	bh=TSv+E+NNK/sF9fzc0Pqc+IomBLptjA+8zZELUakTw/M=;
	h=To:Subject:From:Date:From;
	b=cgvpfq8TbefkYHSQsmp4jeITDTHouX0+Ud8eEb5Ip/LaBF7+ok+n/8HRVxDANL4ZF
	 XWVe1Mfa2LjRvNxeB0G7ZDU1BuX+Tv0wUmeuZtA0zagOtTW33+Z6MZs1v4jtZ1tohS
	 7AJ32r0rAb0HiQ6nvcxZyDs4SzTgK0YmaXjT/y3EKHImGLP7xWI0S5sapVoWLD7Efq
	 DYHPY5LgSkdzmDh3T6lwsv5bf93Sgv1nZC/Ij3Mhw6FPtpdydDDSGyo6jPVf4s7Tje
	 8PeECz+HDTXOXkq7BGDU/Pxs0CoWLTFZWXEXH7uRZR4eN1q1LoUHuM+B3UhV2AfkI1
	 AGS5321q6ZWfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 927E8CCF9E3
	for <ddprobe@lists.linux.dev>; Mon,  3 Nov 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176213459359.31719.8953434262234755219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a7b729e110941a8f5b465feb6b41316460a5ae14a5a994bbc0b0a3bea7810861
Date: Mon, 03 Nov 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762134593
