Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B55D3D3335
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773840294; cv=none; b=RhVap1yB4ZaRdfX17aAu8gS4TxZOAZJ+9mVYMutmyAEhuLj0mVBKAyydXl5w0mmzn2B+vnhtHXCbh0VjPLTCOlkteieY57ygYbkQ5b2qzBvz+ty4lx5lWIh78towSOJQ9WoYDshv3ZH8RwWe1cQOenNJx9Xom2DOF15/aUEbUEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773840294; c=relaxed/simple;
	bh=6JV0cyQSc3Do/F3geV3c27cWwPcD66UGIFcIP315YYo=;
	h=To:Subject:From:Message-Id:Date; b=lEnsFwe/wbaWKzuljFPJRtLcAb8TEdGzPuVq6aVeK/YKsSKGxvTvcaBa7wKRendNBaf+XK5ShZteOdxC9hJkHP5D1fFw9rOBpuQJGwjopQ/cic0j49ZChL/dPF5oTAXb0fslP8NOL2yosRnRwa+OiMchsiY/jwhtxoqlRGm26o8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gm0ipoue; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gm0ipoue"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCF6C2BC87
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773840293;
	bh=6JV0cyQSc3Do/F3geV3c27cWwPcD66UGIFcIP315YYo=;
	h=To:Subject:From:Date:From;
	b=gm0ipoueJVdU3I1JnQamrcNXJpLtgWDeD8PQDBpc3TRloa752Pz14VX/YRpJLW2Rw
	 oLHcFBprHSL5saYfwPsU/JtA4s8Dgh/tZv9aG+wb5dVE5EiX84TEVRtVPNhI7wxlEb
	 pA0KILlmMv5BiugbhrjexoDGRHdwKvvmbKEKFnIFSkO9rgAvEt9e+4UTBxXezJVrMO
	 3wAzEFlYBwbjxzffdZkr8kzLfmorV+mIlG2J5p7g+vbaAlXdbnSxO7Fq7DoitL8CSe
	 /GVlbUenKKQGejM+dc1dbM1/32zf6mjXCH96sINQU5glazWhdlP92CUNHlofPehAQM
	 s5gszGGruHVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1FD103E173
	for <ddprobe@lists.linux.dev>; Wed, 18 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177384029357.20856.17816413501801234448.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8f907868c43845ec82834bd71e7dd8e7f4fcde925fefcbea2dfa3819c6e60fe
Date: Wed, 18 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773840293
