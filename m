Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D698B1F4CBC
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764495773; cv=none; b=MhxuTb8qBHX8+4k4Ldkd8aoPbQw4K/UJ1tUUw4/RxuMAxLV24ONw2LC2DyIURAOuDAdp/jgl5GqWlKlpyhulY7jI/CK2R7lMkJEcUILKb5WbIPG6YMsrw2+GYOIvd8pCMkWMmyORoiDGU0xrGejxj+j+DblXhz0X5gt1KcbbiiE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764495773; c=relaxed/simple;
	bh=SkKYAJk+9UyJwNkAKg6IuUAYjexANIwepLY9ywK1L4Y=;
	h=To:Subject:From:Message-Id:Date; b=VdJiMljiMAJA5Jx33DG20B2DTv3O5SQ3qLDSakWN31BndDZmppN2Tyktwi4QGF2N/jeMPHMNfcyeU4S384/ToZzsgFmdLOc8UIvF2gw2zJhJl1C1Bj0tKWspJha8KDx9gvrl9dCrkxPD6uYvjGUGyAWecCTh/rXP5K8vxFSMRys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O4VpEBnt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O4VpEBnt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAD38C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764495773;
	bh=SkKYAJk+9UyJwNkAKg6IuUAYjexANIwepLY9ywK1L4Y=;
	h=To:Subject:From:Date:From;
	b=O4VpEBntHmUTY1FzC4v1hJEfXHTEfQ32Qp1gWXo/zdUCi53yeYfr81IvC4EyGL0hD
	 XVZK5y6zQZVmuD2QvBxMt9u7QUclWBwP7+ZwC2gQzwWQxTBEFqK9lcYipTlyW6//Im
	 koO9ahjXTnMQoeFl5hvZkgsgyNzl3rqgNtF+ZvzE/f7fRyRR7bT7QAhx8PFg3R1IAo
	 QPPpW4NJUt+w6EwUWRER/+kE0UucaQ5HMuaFG0cTSMl/iO5A6+YZJx3EKbMcl9e8n+
	 cZLu2JK0Y8RuB7mTWLv11pu4nG31rOgYlEqNHh4psNA/U4+aWLhBX2q1221XxBXhGi
	 DJ/IWk5s7AYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B78D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 09:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176449577359.20499.13402849300119120168.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62f12c4911d7c3d2d3ab3d493d712774cbd021b568b8d0a0cffed277ca1b8bf7
Date: Sun, 30 Nov 2025 09:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764495773
