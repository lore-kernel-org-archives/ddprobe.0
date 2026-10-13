Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73AB951A725
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791904234; cv=none; b=BCmowrv3q8SsuzlyrjJgfMdRKuefEypDOklbClR9ZHGHtZdkJiaSDyBNhq3xQhOu2OLSNj0lhrqYsmLsSiEA0Q7N+cNwBp3q7JIm5HOP/dN2WGxPJnGEuoryCSBK20UkEmt3cK6t5/3/4y0ELFgcspVRv67x+xVAgTjq5V9IPOg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791904234; c=relaxed/simple;
	bh=xZDWyTPGZup+LYoC6+LdP9eC7f39ZrSxzdrPYCFvzRY=;
	h=To:Subject:From:Message-Id:Date; b=hqsq/R+T7kIKNANA0li+zKFzGIRQ/xjr71Qkl1Z+WP5I6ktVd+OWpdI4Av6K68bdMRC1nJEVEq3mLgjmjDG3cfMbldVLN4HJA58g/Eoh13yj1ivHjBmHzVbIDXmWJeywPMvBS869bpb+YCRuHJXWsr8U+dxRd2EAxfBIJSmz87U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Iil0n+8W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Iil0n+8W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFADAC2BCF4
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791904233;
	bh=xZDWyTPGZup+LYoC6+LdP9eC7f39ZrSxzdrPYCFvzRY=;
	h=To:Subject:From:Date:From;
	b=Iil0n+8W6qZod/yMK1h++5elbQYpt/GFCaBJa/jdBtbMVcmXRHAO9cGKVdzM+3uGC
	 6Ucvffw8YrsOm3opZ5qSO0UUnF6Je/rG02WT11l2cwu2yFsPgVbZz7fKx+d9MwoAFS
	 KKzb/ES8R+nKbe61tzukoP8MHXxZOOB/NFUlQT99bp+BVwRK3j2cyF5QhjGSMwZ7YW
	 NqLKSD95d3IQkiuBUJT+iGXfl3EKt/dQNZQ8WY/oPXXvqtgN6H2ZcokI+sru/m1krC
	 fjfVkgpTZbhXbkvVvc5TSnyyhFEBbJBWkUGrQw52rHi1iMz+16BIU4zGu8xXxogYNC
	 blkcTb10BY1Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB9C3CC6B16
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179190423375.14487.6390281751765673376.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 991967f0d8913ff6a590755aae0716d0844805677c139105697a32d93fcd39a1
Date: Tue, 13 Oct 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791904233
