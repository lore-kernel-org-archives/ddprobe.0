Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4438336D4E2
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764477174; cv=none; b=YS2CpSHr+iFYIlKS2GZ/UJjMz6juWNO3n5V+vuFLKEVu0QTJ08HfrjTSVSW2NE3TTugKHvlKtiYUhSLVfRSTEWlShkNqLz8yo+A8Wx/M8ndBz3TK1t3wyI3/2bP4aKcREWlxEqT7JCngk+hKZzry1hFGdfOc2lncRp6oHFsXMqc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764477174; c=relaxed/simple;
	bh=xs3h8IH4tRlIOXwHgOxYorqYGigEFUhjtj6R6+T2uEs=;
	h=To:Subject:From:Message-Id:Date; b=sRS9AokQ9hoVhSEDLClZWi+E9zDIoP5jzPbi7wI6hKUpuG6vl10LaIXRaqR7nUCm8Zqqd6XfNG8LahvFCflD9AZ9VbjRB9lypwb1GQ4fKdNqg+5kvlrTZSFWEjeYzr1YbvFoZrPS0IT00+PXhx/KvHQsZYkkAjbxcy2IkRkHfGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aUlxRzgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aUlxRzgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0237C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764477173;
	bh=xs3h8IH4tRlIOXwHgOxYorqYGigEFUhjtj6R6+T2uEs=;
	h=To:Subject:From:Date:From;
	b=aUlxRzgLD2zGqfQO6eIqWWD47ACMbhy6G8XoL66U3EBGB+gfOPa9YZO24MmTuSUPp
	 7Myn5x4wUQcUZ/eyQQgr9oI6lxM1z/wGulkvCY6usUjpKU1Mnyu6u4HwVshXlkvZw/
	 7gRChojxvpw/3Ws9N6zcRIb7ZJJoz0u4mn2fewW7x29IdCvheIVYkkqcAFDW2wHJ+L
	 FLzczp43sPXxOEMfMCT5FV5bev34LPtf1hAHBAHOLEWuhDEOGYswqHtWyswT/MxRen
	 UWBKQhXDkX4EMdq3WxYD3A+tQut133bm/NEH2e49s9SSLFIBOa28tdtO+B9FNEoBpS
	 kcL3MY/haxuEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D000D111A8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 04:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176447717360.28985.17223021784554344894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3ecd310d01366cf14eb9c9c43e70e0dfa6508d59e32a163c314382e1fdf9f25
Date: Sun, 30 Nov 2025 04:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764477173
