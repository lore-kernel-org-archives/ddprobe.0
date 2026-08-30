Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D24F3B27CF
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788107434; cv=none; b=Ue6ZgZaQYQSVjSiVcLK/9gmyaUqX7XdlwlEUWCfhUTPdU2qXVb4brglYhJdDXp+aoUX2SCMvBOyepr7poNd1gN+G/vj5Cyai3bqBaPupBA9dpVL/klgEnCclSYU2xjfqpCDEWkIUyOMvvRC5vSIj5d56S3G3HU0Px8MD/puIL54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788107434; c=relaxed/simple;
	bh=aUmWOCJhDgBEAYG9mMJ1Uy77qqp96R8ZA2sUgDzmIm8=;
	h=To:Subject:From:Message-Id:Date; b=IahVcJUBivxfelY7rzxH82lJPoKSV25tQ+UHX3D9WDxYlAC1855WKezDfP7HMX8uwVYcX4t4M4ExrICYQWtvEtqpf7VPzB3xrkVWGfP3lStPV3ImZerFpsQAW2BR9UyMMnwHXxqV7qImyJZImNhYYgM3MEf6uKY8s7MbxXktl14=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4h0qX/h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4h0qX/h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6023C2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788107433;
	bh=aUmWOCJhDgBEAYG9mMJ1Uy77qqp96R8ZA2sUgDzmIm8=;
	h=To:Subject:From:Date:From;
	b=L4h0qX/hsFYW9UvLFh6XcQBf/b1Zjtq5F0sAViTt+BJTU2MQ9IWzDQRVOXCBjRHwQ
	 pQWfD2mKLkVV7gLAXN8rSdzihFEDqNtfGlwJQw+E1lKeZ2XwXnf9GBN+7f8KmPbZkJ
	 S5U44RXN3OPFj1VKg9xypttJJexUp6Ktah/TfQyFGxkjRLvdvdgP3NaYMK80pouPoN
	 hjS+elFH1p6vMgCzBUOjSETxz6MHP5PfJhUsIQIy6STzUFVs7jsvOfziHiyelxfCmg
	 hMj6BriEzYMMxRU6PRfC9quylDo0w5ze+h2ckrvCt9KxNbE9UOJtW95T4uqVTw39JL
	 xjDT4Z1YwLDTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD843C61DE1
	for <ddprobe@lists.linux.dev>; Sun, 30 Aug 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178810743368.4849.13962309550547671658.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbd239651e8c309bb13f17257863da6e9d5c114475dbcd24fd44d4694f0db5e1
Date: Sun, 30 Aug 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788107433
