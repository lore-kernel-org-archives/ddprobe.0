Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35BF82F34
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728800154; cv=none; b=jEwkuO0zWu9CYSyl51A6+9jneVN1vVJJa22F2yR6Tp2W0V0UdHXnM3zoJTl3Teh6I1ECLsdvVjc2w2XDZoCxd3dKf7m/E2ryEiTGrWw2IjvSxUroDV6OJWngMQ043ZS+r9TKfbnuUS7tKyNSUhtyOdzCFECZ8xZZ5DFSYOpPfoY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728800154; c=relaxed/simple;
	bh=6mMo5rdgPiLCE7rVtHfMNYeT0zu9IqhvOOkItcKCxoY=;
	h=To:Subject:From:Message-Id:Date; b=KVzJuu8DRrvWeq5oFKR81JK1vRxZzbs09BffQTovhy6xd9k09ken/FlKGUD1TCVP+FAYUO8N3nzbIi6ROGUiZnAoyJduUjCWKPZc5VTghZPTXKCU7PtyV23+jKB9Hc9qAdwFrceZD1I7KUDBz3owWTjMI6JtdNKMwOPLQ5A+SqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GkCqVLQK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GkCqVLQK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2009C4CEC5
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728800153;
	bh=6mMo5rdgPiLCE7rVtHfMNYeT0zu9IqhvOOkItcKCxoY=;
	h=To:Subject:From:Date:From;
	b=GkCqVLQKKhyUBs/Hp8Z1pDzIdC+YIbEM/j+dhFCnNkSU1QFP9gR96hRS55EmzxZs0
	 NiI5/PFPKs3ugDDsN6Xzkya4eqxkc0uJakmVIidr4fN8jBdIUxYPmxXdtOV2nOgb7D
	 UyGwPIfiOp9kv1g5lk9u7sTsMecGiW7jkZbR3j4fdqC5h5A4JIGejahrHfvmlipOx5
	 u8hYF55hI2y7zUdW8960hiPCkeuZpG2d6kZu7q+6p5rtY1k41fttTV4NQjAtIIadQr
	 2zUGqSfAfH6EPW6vopDm6Mn/K8x2bAJEOiwARflQdeBQWDelj1FJgHyLqns+FulJRW
	 l2PLZQ+Fa3HJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A16BCF2592
	for <ddprobe@lists.linux.dev>; Sun, 13 Oct 2024 06:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172880015359.1953.5284689686394616267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1914b8225b509557c551b50a0fda0b71c49ccb8ce5da0299ed729ad7d2045c35
Date: Sun, 13 Oct 2024 06:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728800153
