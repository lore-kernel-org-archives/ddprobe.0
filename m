Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B0B02F8EAC
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785838834; cv=none; b=rvk1IqdTnKfkQFkCakcPPlf7KKai14ZvyTvhca2t/Uyj/aIAoMeH5blAoZ7biPfv2/H6W9nrQgKYGCCfVkCbobs+A+ey9EJ2JhqGGUyDkp9jCfc9hlaiMqMCA9UBmL+plIUK7R4H+919vlA3CrLDOjXGuyO9oMToLXmeW6adhHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785838834; c=relaxed/simple;
	bh=rM3B75xhRkhb4RBHeVGmc5NUur14E+SwhEPPGKpdAH4=;
	h=To:Subject:From:Message-Id:Date; b=j3CWpf0Gno9opEpR5eFl3qeuWx4Ai7lE7xqyOu1BpqVFvfuHw/kczBhdhnZar77HqWW9pDvfsitcr0CX43Och/E22Qw6h8pnIyHB+g7Z5fyDNID7TZFzRuVTa7TFDIKkFlp4TAJn+Z+NnR/mkkoeHsGLf3ShcgZnxK+BB4VKJbU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qNd69h3Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qNd69h3Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D282CC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785838833;
	bh=rM3B75xhRkhb4RBHeVGmc5NUur14E+SwhEPPGKpdAH4=;
	h=To:Subject:From:Date:From;
	b=qNd69h3Z09ot8Fmoi54FfzQ05bgtL9tS2PYehyenQH6ZS4D6Kih5rXM6rytq/UOhZ
	 oYLoSJTRRJ31MJbPZx8fiM4qNTeW/uv6U/118mprNrno4FpfQsBV4XDnQVamSg0Nld
	 ST35FB1XErXsXjRIG3V+RbR4R99/QNQ1yx4o7Z5iXvOqMKPjhZX2hn9fI46Zvw7ZiW
	 Ykdha1j7XXeeCVucIX5E9A1hcYmFbtr1vnijGXeNiYVz+s+Xt/yqHXrEzt0TlyvSrr
	 7251WLh/6O8+6/VARu9j7HOWczZzC7YnUKTqvdsJiCZNdk/pur2jF1SRQctEmvCI8x
	 U3HT7YbE60o4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB0EC5518F
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178583883369.29407.642643304062340653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b737a8e5354a98a278824f66693e593b786c6da7071f9fe1ea4c5fc6aed158d8
Date: Tue, 04 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785838833
