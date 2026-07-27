Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E4F136F916
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785162034; cv=none; b=sNQ6EDOMRDugdA8bcCU6/CkCLhp3b2PPW9JKUo26hTKzfsj1/VmQBqg9r3byBm/umnqSRYmdtDd/GB2AInRF7LiXKj+vvrDMHI1rpwea3pQU7K4v8tK/1vu5JDxfrVZJ3X4VFlktJW/UlttWzW0NbObakCgksi4MofiG1u7c2ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785162034; c=relaxed/simple;
	bh=GHNEuH5c6snDEJCb8OFoDKgJGaNKPd13Kd/AJMwHrf0=;
	h=To:Subject:From:Message-Id:Date; b=lXUYnjoZ+AgBZl5JBwjqayN7jDUSqLg4qjuYIkIWHC80zBTd0kYjlw7RkOnCcCLVxpBAUIboak2AZbtpzE9rczpa7vXbzqOnrmPTpG86hiI9l2lIgV9hmU0VEy9+ZBUPep/AG4+zKECGfGPZXFOqzw+X9lszLukiq/9IuoNxf3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CBywsvE8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CBywsvE8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3DBFC2BCC9
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785162033;
	bh=GHNEuH5c6snDEJCb8OFoDKgJGaNKPd13Kd/AJMwHrf0=;
	h=To:Subject:From:Date:From;
	b=CBywsvE8Vk+HcYeoQSVMI02ZqePzA2i8AvqpBpwY7XOr1unYdZkAQHx0ZS+uANYoU
	 +5z2opCFmm1ny8zR9fHn5RSDHkZglAIEyIExwkpW1vXoBlW8vomrtCUdy1TCYC4atc
	 0xQ3g49gItM2OmQBdx4WwAhKVAqM3+RxRIXTOr+StiDKNaMfqKCF0x9BVMHie8pKXb
	 P2k29d4MuZS2Vl8iGHqwEOZsS/jgUky8QKppwOW+KGeNDdPz75cqTA3hvUKkNPm9Ql
	 RQ1Abq4OBK/JxYZSnIlD+si47l1/zGMSXVbcXlAxrK+1KGZzVqWaQFl4K6b+wr2vCQ
	 wNCGoy2/dA12A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B02B6C531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178516203371.13502.8279385693622492801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f30d5dcc7187506cfc1ebc541485e729a2684a0417ef2dc07fc1773bd151dea
Date: Mon, 27 Jul 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785162033
