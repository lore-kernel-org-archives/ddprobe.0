Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C8642E65D
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766186634; cv=none; b=rzr9j5rzlCZrzry49duY3Onzfx+eM+r3yAqgrzcAU/e2v2S+6hqF2x58MLihGPHioM88KbKGUeSmZo3IH1o5X7MDP9tF8f0trhjf40Gxy6InWZP6Hu6eUVJcNj4YTTL0A1qtyBGBQw75bDhthptUOJFX4dQEuhSuRKX9r7vmyqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766186634; c=relaxed/simple;
	bh=S5aWHI6GxaUSqJ3XJMGc4JbWCQWMub7W7R1Y/n1f3oc=;
	h=To:Subject:From:Message-Id:Date; b=C7FKzwQm7BzFBfplb5Kx/af63aGvTbEDtGN4gquqfyXWlZc0u9TxuZUhO9ZC3zexISrOaTi65v1MNndeQw+YMQbB5R86uS7n4TfEZ/K86UppV/JZd6VX1jwt9W7oXitHDoScOwhYB+zdjel0kImvZMAgKvV1Dos1NQMXP6GORwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VTkc2Jx7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VTkc2Jx7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A05C8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766186633;
	bh=S5aWHI6GxaUSqJ3XJMGc4JbWCQWMub7W7R1Y/n1f3oc=;
	h=To:Subject:From:Date:From;
	b=VTkc2Jx7lKIe/45xCMnxdRy0gGAMUryTtkpEnqE6dvpW8hdBZYmV/kNOFBKVPY3hb
	 sKksIfphgL4uzhhPQCJRMhGTR6QUxZWAVjFIE33VX4mBT+7YN4yRNTyOV7CJeWT6r1
	 RLPgyhvVsn+oyz6A7l32V51uUTqqzYPc81lAzLeaeEK/muzUbJ1CKZclrApgp2jVya
	 Wjy89EAPqGpq3Bwb+vLh+lTwsMFo1FoMQH4D+5OSI05W+yWa2b6takZqk6mdCCXZ4V
	 g0TCt6UBZyQd38ZsypSQ7uQyz2ru1k4fF7+gWH+8pPORxOMYm4IKp6cMmFWEZV9jOk
	 QLFEskKSx+Vfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91261E668A2
	for <ddprobe@lists.linux.dev>; Fri, 19 Dec 2025 23:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176618663358.12512.16403734906887038210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4027662bfbf8b22b4d594c36023248f47392c0e1298e57aa4179abb328f151c1
Date: Fri, 19 Dec 2025 23:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766186633
