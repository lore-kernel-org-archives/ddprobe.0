Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 220A42772D
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773510894; cv=none; b=KNhUTT/ufbTow/C5snCFDKVigUmKUyvS41OaI/HtXiREYtaH298ZXyDzAP5owBa03SBgKLF+JM7sA02hbXu35EbwTTdc2bYYeUZagUZHDCMXLPocy7z2Mzm2lfEYX8AAjFVjToBvZWQpMj+VY7ige9fzVJ3jNVoaHjg0cD4iTjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773510894; c=relaxed/simple;
	bh=osdOqx4kLZE1uGXlrYsJJx+lv3jU9nWqbWaIX7DdMT8=;
	h=To:Subject:From:Message-Id:Date; b=UAYQ+1BP5BGa8ckn0Xodr5OsgCbXgJGAxJX0kxH/wtSDfvPY2v5byy2Tw6WkN03rkI9nBpD6QZuUNQrIp73UiJCt1+Otkmz9A6Hj2M6NkEcBhwQcjqowjLdDoOxFSuU5wvi7zK5N7WtDeNBTdIDFJMSV214Y6Xs6306ID8x3Y1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WKCCe/M0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WKCCe/M0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD6E1C116C6
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773510893;
	bh=osdOqx4kLZE1uGXlrYsJJx+lv3jU9nWqbWaIX7DdMT8=;
	h=To:Subject:From:Date:From;
	b=WKCCe/M0CwVY2v6ghg6qh2/zfkaL6863gQwMmMS7fYd0IEjIU743Na/u2px5mSlOp
	 6Rw/Lfu0ksSz4LELp6Ml7VwgpC+/YX/bk4y6EqOmZDPUoPTHjnDk6EM59tRnr2h1is
	 K0GSLIMgrQ7E02sLJrYsTEmKG6sjq9f1jr2emUcloAH+eAGbhqAHaDyZIKQmXU0L3+
	 S2Gxp2iLVlJKdK8TWOUumkYEe+ot9EbNUKtBa6E5gnnjrXfX6zVuA5ie411RaIG45v
	 g7Yi7kFssp4da5Pjc7NxM9WD1hpwuRLgn/LHW93vN69hCVdqkTSQN0Pi/DapNFKdo9
	 7mXDgUvJl7C8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF4310706EA
	for <ddprobe@lists.linux.dev>; Sat, 14 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177351089362.10826.3265885108224919967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3407c8bd4b65557ed5a4ad66f3d1df5021b8c6eac42fbb62816d0e3473586855
Date: Sat, 14 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773510893
