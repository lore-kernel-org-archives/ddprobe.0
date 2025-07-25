Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 333FEEEAB
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753412994; cv=none; b=dxrxx3W8X+3+FkflPJoBdMXdR/D1lgV32bvIEtyrZbrYQaycpy/gR3uVst8VRm57tjCN/yAoz5Nb2S6qopQlF8wbtBa0FuC8MXYJ0vYIr8KpK/1xKiDnw1hpLILMMF4ZPZZQLKmT8n0yhGoRXeNHCHwtCFzry4XrL+E90zbxqyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753412994; c=relaxed/simple;
	bh=UlTv+GV9JxeYA0xiZbzRE4DzOVmMhXZ3SQzg2xpkxHQ=;
	h=To:Subject:From:Message-Id:Date; b=SFaFsIIhRZEMV2tt3MqJuEyEfajtE6bvfCg6RkMQTE6pZdc7kaMhOkl6VKov//k3GWfC2CCll2QlGS+H6Kpfx/2UDwBYI7Pq6Qg85SOMTzbAHb5w3/S7Y6ef4rxExVT2Ld4Zc7uQ+f4BT/OZp4UukcRw8ERBctMSmoSr7R0B4sM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2dSGkdP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2dSGkdP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B041CC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753412993;
	bh=UlTv+GV9JxeYA0xiZbzRE4DzOVmMhXZ3SQzg2xpkxHQ=;
	h=To:Subject:From:Date:From;
	b=Y2dSGkdPrgbYLPsoN9HCDqkkYAgRfPT75fNbC0GBmm+gr/ENzf7/aDadyEYosBJC8
	 OwQ5vQ3dgU1RRMlk6a5TVcVopEqglRt2CHwvgb9tLpX6M0/KbalB17dhO17wU9eQA1
	 y/iEzDCMkXwqamV9n9xKnBB5xS+Q3aQpR6rbbNUcyVk6hqFvdfSS1mM0VV8rKs5qzx
	 uPJprH7rFlSN6Ph2W7BiMjh8K2pkvXNBBMyYpLVrXafWnWoqOWT4k3DFPF6F9DyIkV
	 vT1rw7X14iD9WSCgramc3L5GnLTAE+sLbVKxSgp5blVOgOEZ/6b/A3kA857HdzfAt1
	 5DWT9dLfJrULg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 994C5C83F26
	for <ddprobe@lists.linux.dev>; Fri, 25 Jul 2025 03:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175341299360.7181.12366825354884053422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b428c933582cd82a7001c613893ce2892a31a090fa43c57cfc4e800ff0601332
Date: Fri, 25 Jul 2025 03:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753412993
