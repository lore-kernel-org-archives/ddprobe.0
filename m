Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E51824A05D
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763615514; cv=none; b=qX2mMhZFe6UMg7aLq4QkpjAvW1Y/n5Xoch9CBQbVjijMHYSHNj7GQNoC8f31Jz9nr8nfjDwAieDOTdss24KA2y9+x1dO/GE9E0JdGVKFLivPTcYgZtswfGxiU0vk5KX3gsYtifvz72f+thOPYX3j4C9DGu+x4qGNdfAzc7oH0yw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763615514; c=relaxed/simple;
	bh=2lFO0f8BiSCcmA3+A1MQtWafyDmeplalBe2okDgLBoM=;
	h=To:Subject:From:Message-Id:Date; b=DEXrl8plUG0xOZRq5btkyOi553ReqLjTHoBjHjfp+NIi6dYUMk4dcosa+meseh3b5Y/uxaUTmufLCcwZa2jtkDxq/wS86Nrc6WzIr0SuUuWI6642iH91BdQuFC1XD+lxMqaMqZxCnDqJLwVmg7NF6+h2Z6KyfB3vgjiGpwyo/k0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hoI8eEwh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hoI8eEwh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4796C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763615513;
	bh=2lFO0f8BiSCcmA3+A1MQtWafyDmeplalBe2okDgLBoM=;
	h=To:Subject:From:Date:From;
	b=hoI8eEwhlEEBQERFFfB8OGyz5fk1QfGlm1q06ScAcvTgHdeO7+SbQz13RafAEk+CO
	 nLT7lUkvCeaFBz1s8Trcw3AmMoUhTOdFDUbucHIIDeVhMtmBJRgtzoNxm79P2bQA/E
	 hLOIjayCKti1q6JCgkOYsHJT3Huztp3YWs7jm8c/l8RNz18SdEzrXXhixf1J3koLPS
	 gpfxW3Ysyo8IkRtj88ttW4LcbZvZztMatKh+ZmFjvzaeM+vtIXYMe4GNfbgigboY1a
	 1xXVS66oV699LSnXbCSi4cscNEhZBrDW+rS/iG6/9zYvL+2krrISllw8HnwQu7h3PI
	 P3PLO3vGLoSfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF0ECD4F3E
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176361551361.7058.12041815074126339145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e725d017cbb83e585eb7da94b3f501750e73e7eab20de2ec7baeb2e9aa81013f
Date: Thu, 20 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763615513
