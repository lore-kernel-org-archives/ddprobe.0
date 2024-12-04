Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CCB919068E
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 09:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733303154; cv=none; b=qNzEIlraFmRl4jgnt+pZ08QfzdPaD64n99aQ3TtIiZEu7CgNDG69oulWW0IBiA9YGjPCWYGSpxGPSLeDVhV3DEAsAHLLMPNc1v55zXqJA4ie9WGJo/38pksLrmulO1sFcJl7H7IbuUh6PKmqXHXf3T6KUSA15mXBPdXLPznyuiw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733303154; c=relaxed/simple;
	bh=x3up3N0Dh1PFX3tgnnBocw4mOkUAzUeRVBk54nv/7ao=;
	h=To:Subject:From:Message-Id:Date; b=SfpVyWLiT+cg0dPtp0oEw1Qv5wwjAIyG93hjNb73Wu3Fwc0L6MAWPDZdwLDDIvD9ab0o6OAuJ+5p3DDYVJLu4fdEIWQ3nKiGKmdW7D1SkvNCyIE5Fin7dSxIo2owy4Bh31QUwoEfyblKXUXGVWLTvp8Q1tU6Z6VcIKMZkciMh7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9hK6rjR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b9hK6rjR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13F7C4CED1
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 09:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733303153;
	bh=x3up3N0Dh1PFX3tgnnBocw4mOkUAzUeRVBk54nv/7ao=;
	h=To:Subject:From:Date:From;
	b=b9hK6rjRcNJ0bZTUgA05FKRbFZF33u6zs4MmS1C7op94E+6tDVzi/l66l76yMWCWh
	 MgEF4BNUEx0Ci0ldTsm6TeDpZNqKOgaWuMVUPhBvQuXvYiGkn9HE/KxP3uo8/kwH9Q
	 aEsISI6FKGigDX6raOfOq92lAne4PkPP5iZ6y13SxBXuDpBtC1/AHQ7Q0VlwmYXpt/
	 LwbFdtNHIQ7P+/K/+upodchGgkliH6TbroQMvUDW3BPMhf0MG9n3hTE3Wcp2mKsO3y
	 9vhNXMR8Bf6YmdW7yMa/432WZo2bmCcKK4XRGNLfaELCRgxGFYJSCWZM406oJ3hv0K
	 ksvb/JYs5fHAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9112EE7716B
	for <ddprobe@lists.linux.dev>; Wed,  4 Dec 2024 09:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173330315358.14947.15413463214816134936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b798ab44dbcaf956acf763d60e6020ab27ce29c7e339c4f6d05ebdb24ddf6e8d
Date: Wed, 04 Dec 2024 09:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733303153
