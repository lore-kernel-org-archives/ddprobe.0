Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 346FD1D5160
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743411594; cv=none; b=lPD/xiyBxzL+vfMGnKC3kM2x9A6/q9Inysiedgmm60Aoef9uDmXkAIzlg5kNpPIWDx/N2jc+bXXR3kYmVpjE3tx9lLibcZBVfjw9bGdBKDTcGfZaWQxMQxgob9JYKcupctR+J/jVxBVOdfMgbE/+W2QBb1uqvMySG9j/0RQTJkQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743411594; c=relaxed/simple;
	bh=RJtJC4+Fu0fsIQMaiiz9TsyTNjIxDHXwyyylMcLB+jA=;
	h=To:Subject:From:Message-Id:Date; b=cFWzqsfzKMriV+KOOHV9h1LGG8Q3DcgkhXpQ2Fkmak+cLDcRmuJTa1Gfu3oP6fWKRPzWnhUCwIKWS9tbvO6nZc54IfzJj8JHs9Y2t3b/4rDMmuEnu0CaiiD9hiZCr5IcXRGzJzeZ+lXMJQjhnw2FdU+CrqOZwb1BAJrm6q8SThg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FyaHKkr4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FyaHKkr4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CC9C4CEE5
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743411593;
	bh=RJtJC4+Fu0fsIQMaiiz9TsyTNjIxDHXwyyylMcLB+jA=;
	h=To:Subject:From:Date:From;
	b=FyaHKkr4ElBTsDOMoK1DclWcXCmWNYjxJM/xBUBUOQBajtEIIz/EHCWRWzPlNYYgK
	 PxT4LiTuieED/Exx8bnAZdBYTNgtKpMx4bs53za/UEDi3kPHJf3z/cX/8d6y3Lpmyf
	 E+tLM6tmyzCDzib4je7C8nk6w6vzyEHusJrxwW1N0vFl/wKdxd6YwSjUSOWLG+ndOO
	 jfloQNWp34bLva8bww0kb8lQMOZbwCE5WP86UCU5elFjSQ21KVnxjN38t7Nn2vaWfC
	 NpCgJRuKYE3+AE7Yr3doAKc8V6tInDg1yX0SoncgkJopfZblFybuqE/bZCq+sX+ayU
	 Gf7rXARgc5Myw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F2EC3600C
	for <ddprobe@lists.linux.dev>; Mon, 31 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174341159360.4993.12705002041809496965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c086ccc2c90ac3d556a719d14f211200fdce6c0aaa5165670e3f6c139e9bc871
Date: Mon, 31 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743411593
