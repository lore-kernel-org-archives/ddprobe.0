Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A49E1EDA03
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765093374; cv=none; b=Eid0oTbORNZGW17T8Ncvhfn4muyIpfYpuS4xmkGxp6LRkhMb+czcjlhKdIZeAgsEjg/Nf4oLo0qqUYRKgA8DmqoBJO0GVqfUrUKBcIReLgHvhOftRHNoCtRrmY9SjFv9QWGfQQlX6kcZTCYLbK+u/4lsv+q/ftKI/H0wrwxuKUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765093374; c=relaxed/simple;
	bh=vec7mqoFCllFJ5Vb1F4f6azKIpCjoK4RYbrAjmoYQgw=;
	h=To:Subject:From:Message-Id:Date; b=eEGtyMvBIBGZWvtHa6QHF+BV2cxqJrixoolU42pNaytsSPiPxvF4JS0NIicVkO5G6eR8TcvwXbIBBSEnBGwlQpx1RhsdVXxVUpH1BloZEwyWmYb7Fx6LGa6X7PaOz2r/gl0YGcMroyQcODax5U8slysY2Z1e73siBXboMw/d9+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iPR6qIsb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iPR6qIsb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA985C16AAE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765093373;
	bh=vec7mqoFCllFJ5Vb1F4f6azKIpCjoK4RYbrAjmoYQgw=;
	h=To:Subject:From:Date:From;
	b=iPR6qIsbUE4qiDW7VcBIWOpgyIDVfaP7pUJ7EWOCVyqJHuLKzBOEhmMZj/TSrxwli
	 kFslSlD+0iPk3uYs5+aJKNBQkhtfvyMl86Ir7/zTncdPlPciovcyflDZuMgatPua6Y
	 yxvoLBjEx3fDxvTVtfkbokB2/hGW7AMcyPkiYWc5Lxwq5zfcHDdTbEuYYRIjZKcYX9
	 05DQq+uQz45ZJqrYQY4I7tLBodnyZAGFUjL+Tv7QcVDLlc/gFy6NGhbcdV/q/dp6SB
	 tgr2fE+AgEuE6U1oytgMPUyN99YyuVq0rUGZNAlky5/EY0OIO5muNkMKPNwpTdZyYl
	 33X6/q8MSoNKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96280D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 07:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176509337358.2484.990690732509588802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f32d2f537bcaed5b09db20d62f30019676228aa905128512a5d4ddbe2c3047a9
Date: Sun, 07 Dec 2025 07:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765093373
