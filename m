Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA031DFF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756245594; cv=none; b=RMAaeM4ioG5i0UGOgrKe7bc53Y1U4O0BD7Q8OmEwWNQZ+X0Tye3jRlHL2lZW4yPiJf/S72vtMGyfluzAkm96dl+2z6ZgqyeaOXoch+B0HYbOzb/cTU2x9Lu8TsMhdi+2BtFXjJ4hk14AZ8viGEVWcYMtQ5WTQ6KGitL/9s40LzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756245594; c=relaxed/simple;
	bh=FYnQWUFp729WhBp9KKbi5v9c4Sv8FBewvswZC6zKAqE=;
	h=To:Subject:From:Message-Id:Date; b=i0EQkKZBnc05AvOUG3Qog1wP4m1JpsW7j+MBw7KuL9U2/JdyJZjSW3OeGCRCZyIcK0dJ53ydwHI8K1oZgoVQhhTZm4pnCA3Fs1vmyHExS/K1d0qGEvMmpeAqXG+iv/LvQwqF3Hh0fuEHZYPOZaA9E4TWZYrQWUF1FGqMjiUrXmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KHF6TDTY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KHF6TDTY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABABBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756245593;
	bh=FYnQWUFp729WhBp9KKbi5v9c4Sv8FBewvswZC6zKAqE=;
	h=To:Subject:From:Date:From;
	b=KHF6TDTYwEqiVLj03IVnbpi+fqjTry8R0ksS7Vt7D4U/joKlVfxFQwsxwYfyUUozS
	 7Ne7dAnLvoW4B61+ZRM0DkOUl4B3BtkVGKBQ+UXLFwzjHKniudTk6lZdkslfnPEARJ
	 EhEX5pHGuxIk1CQwlWVPR7TOhmeDccOC05s3DZcthLz+1tOyMClSR2g5pWwdQZYRM3
	 SRV3zzxTi8j3kHsz7U2PZhePpEMSyLqn4X3M4balxV7/SYqwKhbMsQSYUI1IF1xZZV
	 kO5Hm0EiRBDPQgfFxiED8+mYtNAQ/BabPWhH6a+zAdlIdKnn2HEvCk5bhXb8O1HSKb
	 BabfzXIP8qcBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9413ECA0FF0
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175624559359.17521.5586439283954940028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 321be5de5ef6cc986a0146d3c04b9360a46924ee713ce9fd571d98366a83acc3
Date: Tue, 26 Aug 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756245593
