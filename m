Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A54A435537
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791454834; cv=none; b=l9SB6/p4uIZiesEjsr2GVmEyuFhEnqPaGI3l4lusYOUnFUJXE9p2OB9XroGwldW6XXBGnGAAOMOjtyA0cPfF/isDOxdp95q/RfYpPKqvqO5gYE6G9zXWrnq+3cFSAhP0cgSxH2hpMDkabzEjKtpNGD+j+S9uyWVhJmiIYN8MDpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791454834; c=relaxed/simple;
	bh=LJVfrn2x4ZOjZLfhSxuLKhttVWT35lBtaPzkebTWBi0=;
	h=To:Subject:From:Message-Id:Date; b=sKLcpOQ8brYIW1hW4R2ZB7+gQly/iJ9XmRNoHfbgOKn1zv/nxjkQpFx0JETyunGXcm/X4O1ZZjREYNK0+pJZ7jIbS8iIGCS6jrmA0OKqRK2pKBZLQD7ReWH7f86SXhFIXc2JmKhze6Y7g6DVSqWRPmRd++yJy4DBvaMr87JN1Ao=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kij9VwOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kij9VwOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF2C7C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791454833;
	bh=LJVfrn2x4ZOjZLfhSxuLKhttVWT35lBtaPzkebTWBi0=;
	h=To:Subject:From:Date:From;
	b=kij9VwOIKmmHEAGlasQBX0Wa2N4v3qw6uHrHznxWmNRvxxjM3uVAoiYpWd9L0s0yc
	 MVIR+I+Ww5e3BoAp4Q3uW9WOYIMY4K8+QkOYeUy0wSoaDxBD8POsMTU660M60jG0jT
	 /z37dUI4p5tJu8VXom+PjJiLMDnq/47QdVMwHB4U4BAk5E8EF4HD+oBKStS7n/ZylV
	 pP/4CMWxY87Di+0eBqA6d/VJqOpRAXInh52dGPX/j4J3AKvCRN/EXunFzG9wtjqZxL
	 L5N64TDIObAiZ9mt8+ppOlYhrzAJSBNnELWmoKEeBFT5AXvJw30iXzaKEZsXyBjxVN
	 wYPSYmZOiBy+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB6B8CA600B
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179145483369.769.17347463097648350022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78295bd4b56bf231d6b1ce99cec85ffcee93c3f8992aff80e35b4eb5a72673f
Date: Thu, 08 Oct 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791454833
