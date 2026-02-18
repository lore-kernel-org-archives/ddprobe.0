Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306372DB780
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771380894; cv=none; b=UcGhXGVro1zMNflybT8VWwg0rXHccggO2yr/Yg+ix+vLRVXIs/cxEJkg2bZYbYzPRb2abqCV7DF7dbaBkoalt45sknJZda7Ntgmf26eXUt9qQ7zTnzrwYbQ1ldUFoPL6g7LnRFWAOlnh+lk4gXyjTFI7g4huVvbUKnLhoKNiqUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771380894; c=relaxed/simple;
	bh=9pcUYAHqD+aoR3FNAoOSPxxDZ+awNYvwgRTN6ufHDhM=;
	h=To:Subject:From:Message-Id:Date; b=cNM1GwmFMumdV9+w5Ke0DPZC3xwZJ5aYkmPtMNdTqw7t8M5UUmFpVGTfZ4i8Kgd/i416B2xpKtUdkg77JlGil2/oBF5opLKuANVimsh1/EQ8390USo/q6al7D1xT4b356xKfF27L+t2PlBjrLMbR0S0gjGzE0iEGHfGQeFyagx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jIjJijCg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jIjJijCg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8198C4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771380893;
	bh=9pcUYAHqD+aoR3FNAoOSPxxDZ+awNYvwgRTN6ufHDhM=;
	h=To:Subject:From:Date:From;
	b=jIjJijCgLMSCsfnynAC+FOq71j0Lkalc8TqKt+PbQiW5d8CFOf0k00PSs2cntgg7/
	 Z2YcXela6KJ8If8TibOTCb2ZrhU7ufc6PKACf5pvs3rFH5glrjrlAGJlqR+OTJK+xO
	 bUhyaEHoi0H7olLBTYD57xGmZMnCR/XKCRQZuS7zatia+65EauRmlL/jdKVB4qEQJl
	 A18bAPKOmc88qBZDBxJyH6ARBHByYR0JWaxyI//vN1tSra8Wp1r7Z/mXqW/v0JWW9E
	 064V7ZSk68vPkkQknRELmXfnrHs2Z4p9eiS8HwHXKSiIMy61Kx9vPCnktsIzOQx4Ln
	 0gDmOvojpmJJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BD71E9A03B
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 02:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138089361.16955.6523973577487516362.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0bbb65c61a5f62e7c45349076dfd1f5f04cde91e6420e5ab27348a7ad32cb07
Date: Wed, 18 Feb 2026 02:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771380893
