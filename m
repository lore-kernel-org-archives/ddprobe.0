Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561633659E8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784594314; cv=none; b=H9Pv8Z/TvAZW1JdnRnkiWz5ig32H23xnHVStRUBNq/TqBUVPVp+kkyl8jmMvrIPuktmy4mg+/5VYC2M4qefcyOCxbIbhxs7ibrPiDKEFVoTXx4HD26Ls2JbKNgXp9V2eN53mGL8wO8eCizeQLr6Py4XkRUE42A23mCX3+t+BZqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784594314; c=relaxed/simple;
	bh=xPg/jyZ2JNUc+XNmJMMgA+WuliM95DZbEP+BsPvMg9o=;
	h=To:Subject:From:Message-Id:Date; b=AyK7hbvn6u2ZLmKC8Kmz6qgo+LalgxoOh+iyuaZz6EXcOQVykpx/c2Xb1LjUWhfk9idPWTbuy5QzJDwncFQfIe/W1bt9RuOvMblo3SAgiol2IKUL01UQzAG9+3Z41OsRJm61FwpimRwwVWlq8X8jWzXLBcTmHgnfxPYFmX4cNJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hIjVMEsh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hIjVMEsh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE77C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784594313;
	bh=xPg/jyZ2JNUc+XNmJMMgA+WuliM95DZbEP+BsPvMg9o=;
	h=To:Subject:From:Date:From;
	b=hIjVMEshOGB8ZAxxcIIZvlLdbWZ47h9kGsaSGctZVOY3az8uB2PvVqD3gKgvdxUZq
	 +q1zcYDNjB9NJfc6/gIjosl47jq5Dwy0p90hx8jvOSrATDAj0TnIVhwpquuyHGGtVH
	 d44GMJG3BEw5uWPR8+wXBm7R4Cg6XPcn7laM9pHotaZn8I7Qk3aECAQLdDciuqoCa+
	 Od4yD/H+BGAsFM1d+Rf6dd0L90uXblOIB4YUeWY4qJguX/3Z3FyKj+PYTV46AVSZOp
	 Rv5CMdqM11J4zt8SZWAxGhHRt0EtP33RD3rY3YJzcsdIDkHkcfCBR7cqYLxcOWpL9J
	 pzRw78KGLbysg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA600C44520
	for <ddprobe@lists.linux.dev>; Tue, 21 Jul 2026 00:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178459431369.26575.14571842795173589537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3209595d028746c9c8dc19887f18fb3c4ed3b93af90ff758d5188407c9838784
Date: Tue, 21 Jul 2026 00:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784594313
