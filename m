Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3990328D849
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749034194; cv=none; b=GuFDZD29wzw+Uaj+SQ/4O6+3N6D7YxRJRYL3GdZHC/5BEm7cUru9T2ZTRUUk2Um/FNYVqVm5+IdtWfPhczFjW+EJN39s3o5VuqLVTW4/FFWQ5gdHIZqRFAg6dOfXgADYOMCxjjNGosTeZxQD0K/CJSxmgMPAhVRUvP+rqCJPCBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749034194; c=relaxed/simple;
	bh=7bP6krFv8YKxZmbCQTjhyIjsQt4gKitkx+0Fuu9xZLI=;
	h=To:Subject:From:Message-Id:Date; b=m+r0tmnbWl1Fw/XobnCe/D+74NjiyuXcjd5ojtX4XEKAPN4Qe3MV1w+DjLd9xofKTXBl8si9/hOIIZY21wYjqbmEpZQsJjushwQWm5vlubfE6GfivQQpQBQOWQe+1EtDXhuWYSM80wY3GsER7HISh89uxv4eRoGBf0rv5Jv6MV8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NI7IbTM2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NI7IbTM2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8264C4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749034193;
	bh=7bP6krFv8YKxZmbCQTjhyIjsQt4gKitkx+0Fuu9xZLI=;
	h=To:Subject:From:Date:From;
	b=NI7IbTM2egyvQMy6oLfQ2QVbbxKe0jqQ5zqIYR8b4uuNMpxFOZI9j/LLRrNVKZDq2
	 NU54FXH+tiJ6klzR7qLrL/3iREXQMqLBZ83j08li+mh59M0BIrhGqE0PUzqeBT8CbO
	 SOj1SRPulMQJiN/sjbQE+1dGK9wl7HeySb5a/r3io43s9yA1A/oQORBqWF86r6TWF1
	 K+6zxshsHU8yIwsA8YfURPkpSD4cQ4SSkUdNwxSstyJvo2G0f3ZPK6YgNKefHUdufZ
	 PwEIQwAK+HQkJBfRXUhS2ijNuRPGQnRfAEt+Cq/q174j5qMhc2zpPAY976BfcqFr5G
	 aBhBZbFmhkztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92124C5B552
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174903419358.29800.14934393675577433599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edafc76c2afd527caac1b9db8ecc191b72bc4e7142f6917e7f19c7fbe7923a3a
Date: Wed, 04 Jun 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749034193
