Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20333215F4A
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754545194; cv=none; b=RdzOSVPOTlsPgtmzCcp8jQgE8Bx56+QSR4Oy2BicRi8T7XM9keaAGC6lRNZb3FKxhtE9YzAOo0AGAbzi5d9JgQmft8pkCTipP9qzN32LWKVx37ekk+NxbJfYh4vkbAYkCYhAhab5AERw3rr6pk80OZJ6Q32qWbAu5wtD/dGWDA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754545194; c=relaxed/simple;
	bh=IFsP+WsaZXLF1sdc4V7iCoG02IvFoyanTBa89TGVffc=;
	h=To:Subject:From:Message-Id:Date; b=pOhtGj7mzs1hml4GAls0AUeRvy5+10qdtxJ8k6VkZAtwGh0BJOScpN7V55r8XSAdfItVjYWdeXP2Tj5OQCMAzsgqGsrWVRr+ofpYd2eOHj0EomivfkjW9KoabDMc9nzZsNbgU6eYuoYvY/wLJR1zF7HS4OZFcCJAVEsw/MS+gGE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TulpB66O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TulpB66O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6ED1C4CEEB
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754545193;
	bh=IFsP+WsaZXLF1sdc4V7iCoG02IvFoyanTBa89TGVffc=;
	h=To:Subject:From:Date:From;
	b=TulpB66OFSRbv9Q9W9hiMcrR5LV0r7em85+ZKsvEBbLiUCwKH7RsHYqww8jrmbtiX
	 kyEW2+VjtlzPuQx8FWXODCf6mJXlyB8y5roeZfiir2tq7tF5u7VuKJvrMm/IOrcpUV
	 3jGf0uXkJGKDbKA2mzDLj/VoLb5QhqDP5KygM5NPaqurA5kS4/eQEGKzwdyzSrFsOd
	 isFxbkzF+iup2k7i+pTTObboFD1QttEW5+MaPmAIk7Fo/rCokXx/1K1MK9nLQC/ZDB
	 V+vV/Lge2/JGcrVkHeL8InWshnkGqjIhf2dVT9iR1roqE3+7qTQNjNs4YwvGn/1gum
	 bilIPJBe33G/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 949BAC87FD2
	for <ddprobe@lists.linux.dev>; Thu,  7 Aug 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175454519357.25793.17622425752035917832.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 23d29ff4c2232922089a7b5e43883bba3a30f4c8f4b55f96ec03a92e49142d81
Date: Thu, 07 Aug 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754545193
