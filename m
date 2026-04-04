Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519C63FFD
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775284534; cv=none; b=FyMHrvybKr3SuUkXyKAGxI8Ntg2zQ1NdwLWAdCbE6aCHScsr5Xkrn+/+43a+Kfm/7yL5QfFFF/YnWwtZ8YvW1OZ0lrrdiaUp+8l4CkDoZ64lGLNOWpw6ly9hDKy9MmQLxrtoH5G0DvheHr7ojL5nTLQYv8czEF78ym9WfJ6/BxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775284534; c=relaxed/simple;
	bh=EIVFHl9UX5hQmeuoKANwCPNs0RdRYSwzhzOzqJ+DBjY=;
	h=To:Subject:From:Message-Id:Date; b=qUZz5EPnYsKZHWPrWN08DE/G9Xe8N8LNYz0jJA3qvHu03PHZVfN5s49tZkRna2/bw/3L1uVr17H6kHpvW+0tA8dg/XqlNSt5C2jAciKnDBCzuCiSn6GnzlOANDv+pNrdvE7rqx7He3D/fYdWa4UQAYugVNSRsbVV+zAsrgZt/LM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HeZHiVy7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HeZHiVy7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C494FC19423
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775284533;
	bh=EIVFHl9UX5hQmeuoKANwCPNs0RdRYSwzhzOzqJ+DBjY=;
	h=To:Subject:From:Date:From;
	b=HeZHiVy7CYZSQ+A47pi+6CTN7jVpzO0zS165EAEgLIpVT1nB1KgKAkQ+iIWjO5B4k
	 l25TF4jtq/fGfvUIDhtGHOc2mm1b30kDox51euHkGIPz1ZedCuM4mSebXxjQP7YVPh
	 CCACzNhgCW5lGt6942kShSjPWF5VOkIhIENISGPCV8S5Ph2xghOYt0FtMJCaqU3H6X
	 plAZxQ1VHnpWWpMKHn29FltM+/QsEYebiFqeufqsxpsuPsAPZLm4Xz/bgPtXKoOceH
	 +JiBv/nESKlcB9LUCDD7xAk/X4zrYVVSPkjRwPX4jxZ7owN2Jh8kCeWixZBFLLGjWu
	 V77vg5C3Tq28A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC38E88D87
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 06:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177528453368.18201.13507369809672635389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56ed4afea7216c4ffe2fc8a33434f414b201103c39fe2809d5d81358376d331d
Date: Sat, 04 Apr 2026 06:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775284533
