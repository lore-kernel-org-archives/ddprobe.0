Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1993B23D7FF
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769415234; cv=none; b=H3qfTyauiPQJZeQA/kI++ewC1hcHejHVKh/fZjr7b8UAQqWP4CN2hDzeUBU9yAUg0IiDEOWEv5OZ2hwQ2tiVvN8zRfFsB39C52OEfA/sKw2W+oKFboaItmCfyvNizFkhYgbNdxZ5QZbEoCZ4veHkrB7vsGUHxL7UypHg+5T6moU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769415234; c=relaxed/simple;
	bh=9yetENy5HwTDkGbhQ58mtfaxeHY4Zu4/D1FnXhdY2gM=;
	h=To:Subject:From:Message-Id:Date; b=XlUkkOoBJfHCPZDJYik0hcwgiVedH4NMdDSVPC9y2uHrdC1CFeuxbQnn3DEjneZZB/8RGzYsSQBjr+ya2krq+ZGfrfx5JLrYZL529+GSFt7Da5P4zK47Eqex31zkNYivPS1c5l/ZiS4B9qxGfvWoDpBIYC1yG65FZGGlccMN1OU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FwZcqu0h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FwZcqu0h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1374C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769415233;
	bh=9yetENy5HwTDkGbhQ58mtfaxeHY4Zu4/D1FnXhdY2gM=;
	h=To:Subject:From:Date:From;
	b=FwZcqu0hh8NBVJLT3co61Z4UbtihMiq0liFMzCNQy8jj37Ix1fcy6TGAqB5LGrPgE
	 OhMOAENYonHM8Dew+Z14ER+Pu6zWChTiecmL3b/3fn2PdVXf28rtMfO7XXFjfImPCZ
	 T6wNXpEv7lzUx09SIoudWFirvcJBLFRwY6M0GMoCzWom9wrA39XC7R9YDq+ABsmsbd
	 75cFtI6ll2vmQETW6vsf2s83ZnX5E8ABqxddGXCkkUQXDmqSWJ9RKOHhSDfSvE7Fub
	 l+vOtyqf5vegT3jAPUEhhFa1FxyV9SoFgjdeefDogB4P3wSBjB0D0gou0ffjgRey4h
	 IWT5NyouUUPsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F674C88E6D
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176941523357.31190.7729159044708153897.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2bc164c3314d5f1fa7216d73deb250ff5a0eef591fcf252d0b66c3cb94c441f
Date: Mon, 26 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769415233
