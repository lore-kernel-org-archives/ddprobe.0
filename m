Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CF492E403
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754901594; cv=none; b=oF4gerySIkKoAWAIpY/Mr5s+1oBF4reXrDP88dIycOy5FkV6dkPOodiCg9GAY+exgrn/20GHxwgJwYvXuY0owEzH9YQUmVvXsha2em/wNmIfncqhNBtqfSJGNCsJ7TpdL9S7covGPk25OHHVB/1GMhF5G7yFVNF+c5Mko61yMkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754901594; c=relaxed/simple;
	bh=O+vCalCRFAEQUHJs/kj6cYGzHboqn3OStueN+hHpgjY=;
	h=To:Subject:From:Message-Id:Date; b=hrK65EdhYaV3FamsfUmYm9qWf/xP9BxeiUknf1lntP28oYtX2EAkxP/tpvhpMHIsOW3SdiwoibG+VZKU834zHvWBwsxfrBlXr8Wpqp8cGfuzcy3wRKXIuRDvK4ltwfWN2icWM27gDxnFLAgGuCqqqOcbQNiSuNM+84hNpUE8xgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd3hrOiY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd3hrOiY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13FAC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754901593;
	bh=O+vCalCRFAEQUHJs/kj6cYGzHboqn3OStueN+hHpgjY=;
	h=To:Subject:From:Date:From;
	b=qd3hrOiY3meUEAuQ/wsAWnAxBR4fKmrIB5U6+6NFq5sxLfQWaV6UiaFa0FqoeTRGE
	 N9qJcQUKtTcsiaRmqW3vlhn1rYbzukldyjGoTm1P/aakF4A/0L6jhtDKn+GH5SUv5p
	 zmKiQ4rIWFEvGthuGRQ2YWoZfG823GFRONcDS/o0D/i/ag0sLmsKgMw3wlrWeI1vty
	 9wtqX6pFSYU8Cf5O3WZkblIl1tqkOvZDit6X9q6ZILB1u+QwlUElw50YmtB+lRv+vF
	 EzgR6NEUP9iQYqI821WEBXUpVsPr4kISx3D/AUuP898kPNVpBuEE/lYrDYtXJgTCiu
	 FNjRHxqgDCfsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECD5CA0EC0
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490159357.28550.12688508810099746376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 752e042a4c5ff4c081dc697d32c282f78a0c09e35c7d23a66ad2882b458d850c
Date: Mon, 11 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754901593
