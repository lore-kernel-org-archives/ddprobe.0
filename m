Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1728D19CD06
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765297974; cv=none; b=aSc7Janzt/O5E/sGTpTKVCnOdrY9bBWi+TTPFTQb/39fyIoVE2zdF2/sqhNlBWP33BdRttHA0MKDAb76Rhp4OYW18otUjDtPRUiiyrXfQMm5nrIHCNJeK0ufXiHqS12PyPlz3XBGKxNfaD0oa1MPjZfevccI/IAzuBQWd1Ldt7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765297974; c=relaxed/simple;
	bh=qUMoRjiF4XOxibogPyB3RC/Fv6kHLjhmnZLVnwIChvo=;
	h=To:Subject:From:Message-Id:Date; b=rIwuLh2ln6lVK7/lxWx4fgZHDNXuRA+ITaUT5VMcd4fcvjXaMuN0cAzHfeyBBnrCQi1jvUXTO1KyndtK+gOmXWN5+FTnGuNDs/sr1Gnoi1zFDeEEvIydncKQSZpzWcRqbyqEFyF+N3M/aIZq6qMWsk6866CFF9i2Y6GmEL4yMgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GBSUrwGn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GBSUrwGn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F81C4CEF5
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765297973;
	bh=qUMoRjiF4XOxibogPyB3RC/Fv6kHLjhmnZLVnwIChvo=;
	h=To:Subject:From:Date:From;
	b=GBSUrwGn1zW9F2pXq4tNuaEo77PRM+Ij1INN5CsaxUygfxWOi0o0WsJoGbVjniz19
	 4KlIvohL8I74snA+e7IclQbI+aqpmSRF0A8M+UhUwgVHCRS1f+DPGQ9XvJQCxbvvU8
	 06mCAFWHGW0sF/b2phywtj+xYJIOvUPXMHfGWqPjep3q3QLzDnS6c73jBX6ZvWgcrv
	 3EL1mzd2cg0R1frgREA2wECThBR7bwG+h3FP6MQZdQNsZqvzqniko2YeD23OvjmNWT
	 bXd9ps9i1jGldWW9vOHWXBSCxbzJvzhrMUYVKAy1RBLq1IM8NlPyjofa1+l0cOs0Oi
	 xcXjouOOu6BlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90860D3B7FF
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 16:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176529797358.24925.18116255194594611938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86d4b3575e928146d1a3ff9179d87282d68d1a04fe18290603a16f7a521471c1
Date: Tue, 09 Dec 2025 16:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765297973
